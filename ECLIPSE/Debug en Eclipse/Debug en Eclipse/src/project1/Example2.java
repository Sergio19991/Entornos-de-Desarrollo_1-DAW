package project1;

public class Example2 {
	public static void main(String[] args) {
		System.out.println("Hello, world!");
		int a = 1;
		int b = 2;
		b = a + b;
		int c = getMax(a, b);
		System.out.println("a=" + a + "b=" + b + "c=" + c);
		System.out.println("Bye");
	}

	private static int getMax(int a, int b) {
		int max = 0;
		max = Math.max(a, b);
		return max;
	}
}