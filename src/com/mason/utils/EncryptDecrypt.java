package com.mason.utils;


	import java.io.IOException;
	import java.io.UnsupportedEncodingException;
	import java.security.GeneralSecurityException;

	import javax.crypto.Cipher;
	import javax.crypto.SecretKey;
	import javax.crypto.SecretKeyFactory;
	import javax.crypto.spec.PBEKeySpec;
	import javax.crypto.spec.PBEParameterSpec;

	import sun.misc.BASE64Decoder;
	import sun.misc.BASE64Encoder;

	public class EncryptDecrypt {

	    private static final char[] PASSWORD = "kosurisoftlabs".toCharArray();
	    private static final byte[] SALT = { (byte) 0xde, (byte) 0x33, (byte) 0x10, (byte) 0x12, (byte) 0xde, (byte) 0x33,
	            (byte) 0x10, (byte) 0x12, };

	    public static void main(String[] args) throws Exception {
	        String originalPassword = "maheshbabu.i@kosurisoft.com";
	        System.out.println("Original password: " + originalPassword);
	        String encryptedPassword = encrypt(originalPassword);
	        System.out.println("Encrypted password: " + encryptedPassword);
	        String decryptedPassword = decrypt(encryptedPassword);
	        System.out.println("Decrypted password: " + decryptedPassword);
	    }

	    public static String encrypt(String property) throws GeneralSecurityException, UnsupportedEncodingException {
	        SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("PBEWithMD5AndDES");
	        SecretKey key = keyFactory.generateSecret(new PBEKeySpec(PASSWORD));
	        Cipher pbeCipher = Cipher.getInstance("PBEWithMD5AndDES");
	        pbeCipher.init(Cipher.ENCRYPT_MODE, key, new PBEParameterSpec(SALT, 20));
	        return base64Encode(pbeCipher.doFinal(property.getBytes("UTF-8")));
	    }

	    private static String base64Encode(byte[] bytes) {
	        // NB: This class is internal, and you probably should use another impl
	        return new BASE64Encoder().encode(bytes);
	    }

	    public static String decrypt(String property) throws GeneralSecurityException, IOException {
	        SecretKeyFactory keyFactory = SecretKeyFactory.getInstance("PBEWithMD5AndDES");
	        SecretKey key = keyFactory.generateSecret(new PBEKeySpec(PASSWORD));
	        Cipher pbeCipher = Cipher.getInstance("PBEWithMD5AndDES");
	        pbeCipher.init(Cipher.DECRYPT_MODE, key, new PBEParameterSpec(SALT, 20));
	        return new String(pbeCipher.doFinal(base64Decode(property)), "UTF-8");
	    }

	    private static byte[] base64Decode(String property) throws IOException {
	        // NB: This class is internal, and you probably should use another impl
	        return new BASE64Decoder().decodeBuffer(property);
	    }

	}