#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>

int main (int argc, char** argv)
{
    pcl::PointCloud<pcl::PointXYZ>::Ptr cloud (new pcl::PointCloud<pcl::PointXYZ>);
    if (pcl::io::loadPCDFile<pcl::PointXYZ> ("test_pcd_binary.pcd", *cloud) == -1)
    {
	PCL_ERROR ("Could't read file test pcd \n");
	return (-1);
    }
    else
    {
	std::cout << "read test_pcd_binary.pcd success!" << std::endl;
    }


    for (size_t  i = 0; i < cloud->points.size(); ++i)
    {
	std::cout << cloud->points[i].x << cloud->points[i].y << cloud->points[i].z << std::endl;
    }

    return (0);
}
