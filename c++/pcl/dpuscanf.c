#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <fcntl.h>
#include <linux/types.h>
#include <regex.h>
#include <unistd.h>
#include <stdint.h> /*uintxx_t*/
#include <errno.h> /*errno*/

#include "dpulib.h"
#define BLOCK_MASK (0xC0)
#define RESULT_START (1 << 7)
#define RESULT_END (1 << 6)
#define RESULT_CONTINUE (0) 

#define LENGTH_MASK (0x00000000000003FF)
#define LINEADDR_MASK (0x000003FFFFFFFFFF)

#define DEBUG

#ifdef DEBUG
#define DPRINT(fmt, ...) fprintf(stdout, fmt, __VA_ARGS__)
#else 
#define DPRINT(fmt, ...) do {} while(0)
#endif

#define FS_OK

void dpusearch_usage(char * name){
    fprintf(stdout, "Format: %s filename\n", name);
}

int main(int argc, char* argv[]){
    struct file_extent *fie_ext;
    int blk_size;
    unsigned int extnum, i;
    int nvmefd, ret = 0;
    char nvme_dev_name[] = "/dev/nvme0n1";
    char *msg = NULL;
    adaCmdFormat_t *adacmdfmt;
    int sector_size; 
    int sector_factor = 1;
    int adafmt_size;
    char * buffer = NULL;
    int maxnblk = 0;
    char ptn[160];
    int *ptni;
    char *pdata = NULL;
    uint16_t rem_nblk, cur_nblk;
    uint64_t cur_lba;
    uint32_t rec_num;
    struct search_record *srhrec;


    if(argc != 2){
        dpusearch_usage(argv[0]);
        exit(EXIT_FAILURE);
    }

    printf("File Name is %s\n", argv[1]);

    nvmefd = open(nvme_dev_name, O_RDWR);
    if(nvmefd == -1){
        fprintf(stderr, "Open nvme device %s error!\n", nvme_dev_name);
        exit(EXIT_FAILURE);
    }

    fie_ext = malloc(sizeof(struct file_extent) * DEFAULT_EXTNUM);
    if(!fie_ext){
        perror("fie_ext malloc error");
        exit(EXIT_FAILURE);
    }
    extnum = DEFAULT_EXTNUM;

    //get file layout in device
    dpufilemap(argv[1], &blk_size, &extnum, fie_ext);
    printf("File block size is %d, extent group number is %u\n", blk_size, extnum);

    if (ioctl(nvmefd, BLKSSZGET, &sector_size)) {
        perror("get sector size ioctl failed");
        exit(EXIT_FAILURE);
    }
    printf("Device sector size is %d, extent group number is %u\n", sector_size, extnum);

    sector_factor = blk_size / sector_size;

    /*
     * ptn is reserved area for compatible with grep command
     */
    adafmt_size = sizeof(adaCmdFormat_t) + sizeof(adaCmdBlkFormat_t) * extnum 
        + sizeof(ptn);
    if(posix_memalign(&adacmdfmt, getpagesize(), adafmt_size)){
        fprintf(stderr, "adacmdfmt allocate error!\n");
        exit(EXIT_FAILURE);
    }

    /*ADA command, 1 for scanf*/
    adacmdfmt->adaCmdType = 1;


    adacmdfmt->lbaBlkCount = extnum;

    for(i = 0; i < extnum ; i ++){
        printf("fiemap_data buffer ext pair %d:[%lu][%u][%u][%u].\n", i, 
                fie_ext[i].slba, fie_ext[i].nblk, fie_ext[i].start, fie_ext[i].end);
        adacmdfmt->blkFormat[i].slba = fie_ext[i].slba * sector_factor;
        adacmdfmt->blkFormat[i].nlb = fie_ext[i].nblk;
        adacmdfmt->blkFormat[i].begin = fie_ext[i].start;
        adacmdfmt->blkFormat[i].end = fie_ext[i].end;
        if(fie_ext[i].nblk > maxnblk)
            maxnblk = fie_ext[i].nblk;
    }
    
    //send file map to DPU device
    dpu_nvmepassthru(nvmefd, nvme_cmd_write, argv[1], 0,
                        (adafmt_size + 4095) / 4096, 0, adafmt_size, adacmdfmt);

    //buffer for receiving converted data 
    if(0 != posix_memalign((void**)&buffer, 
                getpagesize(), MAX_IO_DEPTH * sector_size )){
        printf("Error alloc aligned buffer in thread\n");
        exit(EXIT_FAILURE);
    }

    for(i = 0; i < extnum ; i ++){
        if(fie_ext[i].nblk <= MAX_IO_DEPTH){
            DPRINT("Group %u, start LBA %lu, length is %u.\n", 
                    i, fie_ext[i].slba, fie_ext[i].nblk);
            dpu_ada_read(nvmefd, fie_ext[i].slba, fie_ext[i].nblk,
                    0, 0, 0, 0, 0, buffer, NULL);

            dump_buffer((unsigned char *)buffer, 0x2000, DB_DWORD_DISPLAY | DB_ADDRESS);
            
        }else{
            rem_nblk = fie_ext[i].nblk;
            cur_nblk = MAX_IO_DEPTH;
            cur_lba = fie_ext[i].slba;
            
            do{
                DPRINT("Group %u, start LBA %lu, length is %u.\n", 
                        i, fie_ext[i].slba, fie_ext[i].nblk);
                DPRINT("In Group %u, start LBA %lu, length is %u.\n", 
                        i, cur_lba, cur_nblk);
                dpu_ada_read(nvmefd, cur_lba, cur_nblk,
                        0, 0, 0, 0, 0, buffer, NULL);
                //after ada read, the buffer contains converted binary data
            	dump_buffer((unsigned char *)buffer, 0x1000, DB_DWORD_DISPLAY | DB_ADDRESS);
                cur_lba += cur_nblk;
                rem_nblk -= cur_nblk;
                if(rem_nblk > MAX_IO_DEPTH){
                    cur_nblk = MAX_IO_DEPTH;
                }else{
                    cur_nblk = rem_nblk;
                }
            }while(rem_nblk > 0);
        }
    }
    
    free(buffer);
    free(adacmdfmt);
    close(nvmefd);

    return ret;
}
