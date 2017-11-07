//package com.dputech.itj10.chapter12;

import java.util.Scanner;

public class QuotientWithException {
    public static int quotient(int number1, int number2)
    {
	if (number2 == 0) {
	    //System.out.println("Divisor cannot be zero");
	    //System.exit(1);
	    throw new ArithmeticException("Divisor cannot be zero");
	}
	return number1 / number2;
    }
    public static void main(String[] args) {
	Scanner input = new Scanner(System.in);
	
	System.out.print("Enter two integers: ");
	int number1 = input.nextInt();
	int number2 = input.nextInt();

	/*int result = quotient(number1, number2);
	System.out.println(number1 + " / " + number2 + " is " + 
		(number1 / number2));*/
	try {
	    int result = quotient(number1, number2);
	    System.out.println(number1 + " / " + number2 + " is "
		+ result);
	} catch (ArithmeticException ex) {
	    System.out.println("Exception: an integer " + 
		"cannot be devided by zero ");
	}
	System.out.println("Exception continus ...");
    }
}
