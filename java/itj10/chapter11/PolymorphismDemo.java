public class PolymorphismDemo {
	public static void main(String[] args) {
		displayObject(new Circle(1, "red", false));
		displayObject(new Rectangle(1.0, 1.0, "black", true));
	}
	
	public static void displayObject(GeometricObject object) {
		System.out.println("Created on " + object.getDateCreated() + 
				". Color is " + object.getColor());
	}
}