import org.apache.hadoop.io.Text;
import java.nio.ByteBuffer;

public class TextIterator {
    public static void main(String[] args) {
	Text t = new Text("\u0041\u00df\u6771\udc00");
	ByteBuffer buf = ByteBuffer.wrap(t.getBytes(), 0, t.getLength());
	int cp;
	while (buf.hasRemaining() && ( cp = Text.bytesToCodePoint(buf)) != -1 ) {
	    System.out.println(Integer.toHexString(cp));
	}

	t.set("pig");
	assertThat(t.getLength(), is(3));
	assertThat(t.getBytes().length, is(3));
    }
}
