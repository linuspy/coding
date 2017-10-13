package org.apache.hadoop.io;

import java.util.Comparator;

public class IntWritableComparatorTest {
    public static void main(String[] args) throws IOException {   
        
	IntWritable w1 = new IntWritable(163);
        IntWritable w2 = new IntWritable(67);
        assertThat(comparator.compare(w1, w2), greaterThan(0));

    }

}
