import java.io.InputStream;
import java.net.URI;

import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.fs.FileSystem;
import org.apache.hadoop.fs.RawLocalFileSystem;
import org.apache.hadoop.fs.ChecksumFileSystem;
import org.apache.hadoop.io.IOUtils;

public class RawLocalFileSystemStudy {
    public static void main(String[] args) throws Exception {
	String uri = args[0];
	Configuration conf = new Configuration();
	//LocalFileSystem fs = new LocalFileSystem();
	FileSystem fs = new RawLocalFileSystem();
	fs.initialize(URI.create(uri), conf);
	InputStream in = null;
	try {
	    in = fs.open(new Path(uri));
	    IOUtils.copyBytes(in, System.out, 4096, false);
	} finally {
	    IOUtils.closeStream(in);
	}
    }
}
