public class OverloadTest {
	public static void main(String[] args) {
		A a = new A();
		a.p(10);
		a.p(10.0);
		System.out.println(a.toString());
		System.out.println(a);
	}
}