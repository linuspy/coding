
import java.util.*;

/**
 * 
 */
public class GeometricObject {

    /**
     * Default constructor
     */
    private String color = "white";

    /**
     * 
     */
    private boolean filled;

    /**
     * 
     */
    private java.util.Date dateCreated;

    /**
     * 
     */
    public GeometricObject() {
    	dateCreated = new java.util.Date();
        // TODO implement here
    }

    /**
     * @param color 
     * @param filled
     */
    public GeometricObject(String color, boolean filled) {
        // TODO implement here
    	dateCreated = new java.util.Date();
    	this.color = color;
    	this.filled = filled;    	
    }

    /**
     * @return
     */
    public String getColor() {
        // TODO implement here
        return color;
    }

    /**
     * @param color 
     * @return
     */
    public void setColor(String color) {
        // TODO implement here
        this.color = color;
    }

    /**
     * @return
     */
    public boolean isFilled() {
        // TODO implement here
        return filled;
    }

    /**
     * @param filled 
     * @return
     */
    public void setFilled(boolean filled) {
        // TODO implement here
        this.filled = filled;
    }

    /**
     * @return
     */
    public java.util.Date getDateCreated() {
        // TODO implement here
        return dateCreated;
    }

    /**
     * @return
     */
    public String toString() {
        // TODO implement here
        return "created on " + dateCreated + "\ncolor: " + color + 
        		" and filled: " + filled;
    }
}