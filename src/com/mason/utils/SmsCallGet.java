package com.mason.utils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.X509Certificate;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

public class SmsCallGet {



	/**
	 * @param args
	 */
	public static void main(String[] args) {
		SmsCallGet test = new SmsCallGet();
		//test.sendThanksMessage("8333055292","maheshbabu.i@kosurisoft.com");
		test.sendOTPMessage("9246460494","EAT3OPu");
	}
	public void sendThanksMessage(String mobile,String emailid) {

		try {

			final TrustManager[] trustAllCerts = new TrustManager[] { 
					new X509TrustManager() 
					{
						public void checkClientTrusted( final X509Certificate[] chain, final String authType ) {
						}
						public void checkServerTrusted( final X509Certificate[] chain, final String authType ) {
						}
						public X509Certificate[] getAcceptedIssuers() {
							return null;
						}
					} };
			


			final SSLContext sslContext = SSLContext.getInstance( "SSL" );
			sslContext.init( null, trustAllCerts, new java.security.SecureRandom() );

			final SSLSocketFactory sslSocketFactory = sslContext.getSocketFactory();
			HttpsURLConnection.setDefaultSSLSocketFactory( sslContext.getSocketFactory() );
			URL url = new URL(getThanksURLPath(mobile,emailid));
			final HttpURLConnection conn = (HttpURLConnection) url.openConnection();

			conn.setRequestMethod("GET");
			int responseCode = conn.getResponseCode();
			//System.out.println("Response Code : " + responseCode);
			BufferedReader in = new BufferedReader(
			        new InputStreamReader(conn.getInputStream()));
			String inputLine;
			StringBuffer response = new StringBuffer();
	 
			while ((inputLine = in.readLine()) != null) {
				response.append(inputLine);
			}
			in.close();
			//System.out.println(response.toString());

		} catch (MalformedURLException e) {
			e.printStackTrace();
		}
		catch (IOException e) {
			e.printStackTrace();
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (KeyManagementException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public void sendOTPMessage(String mobile,String otp) {

		try {

			final TrustManager[] trustAllCerts = new TrustManager[] { 
					new X509TrustManager() 
					{
						public void checkClientTrusted( final X509Certificate[] chain, final String authType ) {
						}
						public void checkServerTrusted( final X509Certificate[] chain, final String authType ) {
						}
						public X509Certificate[] getAcceptedIssuers() {
							return null;
						}
					} };
			


			final SSLContext sslContext = SSLContext.getInstance( "SSL" );
			sslContext.init( null, trustAllCerts, new java.security.SecureRandom() );

			final SSLSocketFactory sslSocketFactory = sslContext.getSocketFactory();
			HttpsURLConnection.setDefaultSSLSocketFactory( sslContext.getSocketFactory() );
			URL url = new URL(getOTPURLPath(mobile,otp));
			final HttpURLConnection conn = (HttpURLConnection) url.openConnection();

			conn.setRequestMethod("GET");
			int responseCode = conn.getResponseCode();
			//System.out.println("Response Code : " + responseCode);
			BufferedReader in = new BufferedReader(
			        new InputStreamReader(conn.getInputStream()));
			String inputLine;
			StringBuffer response = new StringBuffer();
	 
			while ((inputLine = in.readLine()) != null) {
				response.append(inputLine);
			}
			in.close();
			//System.out.println(response.toString());

		} catch (MalformedURLException e) {
			e.printStackTrace();
		}
		catch (IOException e) {
			e.printStackTrace();
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (KeyManagementException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	private String getThanksURLPath(String mobile,String emailid) {
		String twar = getURL()+"httpapi/send?username=maheshbabu.i@kosurisoft.com&password=mahesh&sender_id=SMSIND&route=T&phonenumber="+mobile+"&message=Dear%20"+emailid+"%2C%20Thanks%20for%20Registering%20with%20Campusguide.in.%20Verification%20mail%20has%20been%20sent%20to%20your%20emailID%20"+emailid+".";
		return twar;
	}
	/*private String getOTPURLPath(String mobile,String emailid) {
		String twar = getURL()+"httpapi/send?username=maheshbabu.i@kosurisoft.com&password=mahesh&sender_id=SMSIND&route=T&phonenumber="+mobile+"&message=Dear%20%23"+emailid+"%23%2C%20Thanks%20for%20Registering%20with%20Campusguide.in.%20Verification%20mail%20has%20been%20sent%20to%20your%20emailID%20%23"+emailid+"%23";
		return twar;
	}*/
	
	private String getOTPURLPath(String mobile,String otp) {
		//System.out.println("Before");
		String twar = getURL()+"httpapi/send?username=maheshbabu.i@kosurisoft.com&password=mahesh&sender_id=SMSIND&route=T&phonenumber="+mobile+"&message=Welcome%20to%20campusguide.in.%20"+otp+"%20is%20your%20OTP%20for%20validating%20your%20Mobile%20Number.%20Please%20don%27t%20share%20this%20with%20anyone.";
		//System.out.println("After");						
		return twar;
	}
	
	
	private String getURL() {

		return "http://securesmsc.com/";
	}
}

