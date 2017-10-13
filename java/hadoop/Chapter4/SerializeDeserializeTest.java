import static org.junit.Assert.*;
import static org.hamcrest.CoreMatchers.*;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.ByteArrayOutputStream;
import java.io.ByteArrayInputStream;
import java.util.Comparator;

import org.apache.hadoop.util.StringUtils;

import org.apache.hadoop.io.Writable;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.VIntWritable;

public class SerializeDeserializeTest {
    public static byte[] serialize(Writable writable) 
	throws IOException {
            ByteArrayOutputStream out = new ByteArrayOutputStream();
	    DataOutputStream dataOut = new DataOutputStream(out);
	    writable.write(dataOut);
	    dataOut.close();
	    return out.toByteArray();
    }

    public static byte[] deserialize(Writable writable, byte[] bytes) 
	throws IOException {
	    ByteArrayInputStream in = new ByteArrayInputStream(bytes);
	    DataInputStream dataIn = new DataInputStream(in);
	    writable.readFields(dataIn);
	    dataIn.close();
	    return bytes;
    }

    public static void main(String[] args) throws IOException {

	IntWritable writable = new IntWritable();
	writable.set(163);
	byte[] bytes = serialize(writable);
	assertThat(bytes.length, is(4));

	byte[] data = serialize(new VIntWritable(163));
	assertThat(StringUtils.byteToHexString(data),is("8fa3"));
	//StringUtils.isBlank("test");

	IntWritable newWritable = new IntWritable();
	deserialize(newWritable, bytes);
	assertThat(newWritable.get(), is(163));

	/*RawComparator<IntWritable> comparator = WritableComparator.get(IntWritable.class);

	IntWritable w1 = new IntWritable(163);
	IntWritable w2 = new IntWritable(67);
	assertThat(comparator.compare(w1, w2), greaterThan(0));
	*/
   }
}
