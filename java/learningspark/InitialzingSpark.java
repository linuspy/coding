import org.apache.spark.SparkConf;
import org.apache.spark.api.java.JavaSparkContext;

public class InitialzingSpark {
    public static void main(String[] args) {
	SparkConf conf = new SparkConf().setMaster("spark://master1:7077").setAppName("My App");
	JavaSparkContext sc = new JavaSparkContext(conf);
    }
}
