package com.mason.utils;

import java.util.Random;

public class OTPGenerator {
		 public static void main(String[] args) {

		     System.out.println(generateRandomChars("ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890", 6));
		 }


		 public static String generateRandomChars(String candidateChars, int length) {
		     StringBuilder sb = new StringBuilder();
		     Random random = new Random();
		     for (int i = 0; i < length; i++) {
		         sb.append(candidateChars.charAt(random.nextInt(candidateChars
		                 .length())));
		     }

		     return sb.toString();
		 }
		 
		 public static char[] OTP(int len)
		 {
		  System.out.println("Generating OTP using random() : ");
		  System.out.print("You OTP is : ");

		  // Using numeric values
		  String numbers = "0123456789";

		  // Using random method
		  Random rndm_method = new Random();

		  char[] otp = new char[len];

		  for (int i = 0; i < len; i++)
		  {
		   // Use of charAt() method : to get character value
		   // Use of nextInt() as it is scanning the value as int
		   otp[i] =
		   numbers.charAt(rndm_method.nextInt(numbers.length()));
		  }
		  return otp;
		 }

}
