import java.util.*;
/**
 * 
 */
public class Circle extends GeometricObject {

    /**
     * Default constructor
     */
    /* public Circle() {
    } */

    /**
     * 
     */
    public double radius;

    /**
     * 
     */
    /* public void Circle() {
        // TODO implement here
    } */

    /**
     * @param radius
     */
    public Circle(double radius) {
        // TODO implement here
    	this.radius = radius;
    }

    /**
     * @param radius 
     * @param color 
     * @param filled
     */
    public Circle(double radius, String color, boolean filled) {

    	//this.color = color;
    	//this.filled = filled;
    	/*this.radius = radius;
    	setColor(color);
    	setFilled(filled);*/
    	super(color, filled);
    	this.radius = radius;
    }

    /**
     * @return
     */
    public double getRadius() {
        // TODO implement here
        return radius;
    }

    /**
     * @param radius 
     * @return
     */
    public void setRadius(double radius) {
        // TODO implement here
        this.radius = radius;
    }

    /**
     * 
     */
    public double getArea() {
        // TODO implement here
    	return radius * radius * Math.PI;
    }

    /**
     * 
     */
    public double getPerimeter() {
        // TODO implement here
    	return 2 * radius;
    	
    }

    /**
     * 
     */
    public double getDiameter() {
        // TODO implement here
    	return 2 * radius * Math.PI;
    }

    /**
     * 
     */
    public void printCircle() {
        // TODO implement here
    	/* System.out.println("The circle is created " + getDateCreated() + 
    			" and the radius is " + radius);
		*/
		System.out.println("The circle is created " + super.getDateCreated() + 
    			" and the radius is " + radius);
    }

}