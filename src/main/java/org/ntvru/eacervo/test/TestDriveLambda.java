package org.ntvru.eacervo.test;

import java.util.Arrays;
import java.util.List;

public class TestDriveLambda {


//	
	static String str = new String("Test");
	public static void main(String[] args) {
		System.out.print("Return Value :" );		
	    System.out.println(str.matches("(.*)test(.*)"));
	    System.out.println(str.matches("(.*)case(.*)"));

	    
	    System.out.print("Return Value :" );
	    System.out.println(str.matches("Welcome(.*)"));
	    
	    System.out.print("Return Value :" );
	    System.out.println(str.matches(".*[A-Za-z].*"));
	}
	
	
    
}
