package com.mason.utils;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;

public class ValidEncryDecrypter {
	
	public String validateEncryptedMailid(String encmail)
	{
		StringBuffer sb=new StringBuffer(encmail);
		char wanted='+';
		char encem;
		for(int i=0;i<encmail.length();i++)
		{
			encem=encmail.charAt(i);
			if(Character.compare(encem,wanted)<=0)
			{
				sb.deleteCharAt(i);
				sb.insert(i, '~');
			}
		}
		System.out.println("stringbuffer :: "+sb);
		return sb.toString();
	}

	public String validateDecryptedMailid(String encmail)
	{
		StringBuffer sb=new StringBuffer(encmail);
		char wanted='~';
		char encem;
		for(int i=0;i<encmail.length();i++)
		{
			encem=encmail.charAt(i);
			if(Character.compare(encem,wanted)>0)
			{
				sb.deleteCharAt(i);
				sb.insert(i, '+');
			}
		}
		System.out.println("stringbuffer :: "+sb);
		return sb.toString();
	}
	
	public static void main(String args[])
	{
		String mailid="maheshbabu.i@kosurisoft.com";
		try {
			new ValidEncryDecrypter().validateEncryptedMailid(new EncryptDecrypt().encrypt(mailid));
			
		} catch (UnsupportedEncodingException | GeneralSecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		new ValidEncryDecrypter().validateDecryptedMailid("Qr~xoaZsWoStbEoD~YBMq2Ndz4SnwH7FcezZH7tQFms=");
	}
}
