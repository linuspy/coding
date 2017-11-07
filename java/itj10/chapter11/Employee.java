
import java.util.*;

/**
 * 
 */
public class Employee extends Person {

    /**
     * Default constructor
     */
    public Employee() {
    	this("(2) Invoke Employee's overloaded constructor");
    	System.out.println("(3) Performs Employee's tasks ");
    }
    public Employee(String s) {
    	System.out.println(s);
    }

}