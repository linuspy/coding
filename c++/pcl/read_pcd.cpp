#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>

int main (int argc, char** argv)
{
    pcl::PointCloud<pcl::PointXYZ>::Ptr cloud (new pcl::PointCloud<pcl::PointXYZ>);
    if (pcl::io::loadPCDFile<pcl::PointXYZ> ("test_pcd_ascii.pcd", *cloud) == -1)
    {
	PCL_ERROR ("Could't read file test pcd \n");
	return (-1);
    }

    return (0);
}
