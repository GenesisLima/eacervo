package org.ntvru.eacervo.test;

import java.util.Arrays;
import java.util.List;

public class TestDriveLambda {

//	Usuario user1 = new Usuario("Paulo Silveira", 150);
//	Usuario user2 = new Usuario("Rodrigo Turini", 120);
//	Usuario user3 = new Usuario("Guilherme Silveira", 190);
//	
//	List<Usuario> usuarios = Arrays.asList(user1,user2,user3);
//	
	static String str = new String("Welcome to Tutorialspoint.com");
	public static void main(String[] args) {
		System.out.print("Return Value :" );		
	    System.out.println(str.matches("(.*)Tutorials(.*)"));
	    System.out.println(str.matches("(.*)point(.*)"));

	    
	    System.out.print("Return Value :" );
	    System.out.println(str.matches("Welcome(.*)"));
	    
	    System.out.print("Return Value :" );
	    System.out.println(str.matches(".*[A-Za-z].*"));
	}
	
	
    
}
