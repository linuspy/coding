
import java.util.*;

/**
 * 
 */
public class Rectangle extends GeometricObject {


    private double width;

    /**
     * 
     */
    private double height;

    /**
     * 
     */
    public Rectangle() {
        // TODO implement here
    }

    /**
     * @param width 
     * @param height
     */
    public Rectangle(double width, double height) {
    	this.width = width;
    	this.height = height;
    }

    /**
     * @param width 
     * @param height 
     * @param color 
     * @param filled
     */
    public Rectangle(double width, double height, String color, boolean filled) {
        // TODO implement here
    	this.width = width;
    	this.height = height;
    	setColor(color);
    	setFilled(filled);
    }

    /**
     * @return
     */
    public double getWidth() {
        // TODO implement here
        return width;
    }

    /**
     * @param width 
     * @return
     */
    public void setWidth(double width) {
        // TODO implement here
        this.width = width;
    }

    /**
     * @return
     */
    public double getHeight() {
        // TODO implement here
        return 0.0d;
    }

    /**
     * @param height 
     * @return
     */
    public void setHeight(double height) {
        // TODO implement here
        this.height = height;
    }

    /**
     * @return
     */
    public double getArea() {
        // TODO implement here
        return width * height;
    }

    /**
     * @return
     */
    public double getPerimeter() {
        // TODO implement here
        return 2 * (width + height);
    }

}