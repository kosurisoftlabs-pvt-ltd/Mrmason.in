package com.mason.utils;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;  
  
public class Mailer {  
public static void send(String to,String subject,String msg){  
  
	MimeBodyPart mimeBodyPart = new MimeBodyPart();
	MimeMultipart multipart = new MimeMultipart();
	try {
		mimeBodyPart.setContent(msg, "text/html");
		multipart.addBodyPart(mimeBodyPart);
	} catch (Exception e1) {
		e1.printStackTrace();
	}
	final String user="info@kosuriers.com";//change accordingly  
	final String pass="kerst20@";
/*final String user="campusguide.in@gmail.com";//change accordingly  
final String pass="cguide1820@";*/  
	
//1st step) Get the session object    
Properties props = new Properties();  
//props.put("mail.smtp.host", "smtp8.net4india.com");//Net4 Smtp host  
props.put("mail.smtp.host", "smtp.gmail.com");//Gmail smtp host
props.put("mail.smtp.port", "587");
props.put("mail.smtp.auth", "true");  
props.put("mail.smtp.starttls.enable", "true");
//props.put("mail.debug", "true");
//my changes 
props.put("mail.user", user);
props.put("mail.password", pass);
EMailAuthenticator auth=new EMailAuthenticator(user,pass);

Session session = Session.getDefaultInstance(props, auth);  
//2nd step)compose message  
try {  
 MimeMessage message = new MimeMessage(session);  
 message.setContent(multipart);
 message.setFrom(new InternetAddress(user));  
 message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
 message.setSubject(subject);
 message.setSentDate(new java.util.Date());
 
 message.setText(msg, "UTF-8", "html");
 
 //message.setText(msg);  
   
 //3rd step)send message  
 Transport.send(message);  
  
 //System.out.println("Done");  
  
 } catch (MessagingException e) {  
	 e.printStackTrace();
    throw new RuntimeException(e);  
 }  
      
}  


public static void sendMailTemplate(String to,String subject,String msg){  
	  
	MimeBodyPart mimeBodyPart = new MimeBodyPart();
	MimeMultipart multipart = new MimeMultipart();
	try {
		mimeBodyPart.setContent(msg, "text/html");
		multipart.addBodyPart(mimeBodyPart);
	} catch (Exception e1) {
		e1.printStackTrace();
	}
	final String user="info@kosuriers.com";//change accordingly  
	final String pass="kerst20@";
/*final String user="campusguide.in@gmail.com";//change accordingly  
final String pass="cguide1820@";*/  
	
//1st step) Get the session object    
Properties props = new Properties();  
//props.put("mail.smtp.host", "smtp8.net4india.com");//Net4 Smtp host  
props.put("mail.smtp.host", "smtp.gmail.com");//Gmail smtp host
props.put("mail.smtp.port", "587");
props.put("mail.smtp.auth", "true");  
props.put("mail.smtp.starttls.enable", "true");
//props.put("mail.debug", "true");
//my changes 
props.put("mail.user", user);
props.put("mail.password", pass);
EMailAuthenticator auth=new EMailAuthenticator(user,pass);

Session session = Session.getDefaultInstance(props, auth);  
//2nd step)compose message  
try {  
 MimeMessage message = new MimeMessage(session);  
 message.setContent(multipart);
 message.setFrom(new InternetAddress(user));  
 message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
 message.setSubject(subject);
 message.setSentDate(new java.util.Date());
 
 msg="";//inline code here
 message.setText(msg, "UTF-8", "html");
 
 //message.setText(msg);  
   
 //3rd step)send message  
 Transport.send(message);  
  
 //System.out.println("Done");  
  
 } catch (MessagingException e) {  
	 e.printStackTrace();
    throw new RuntimeException(e);  
 }  
   
}

public static void sendMarks(String to,String subject,String msg){  
	  
	MimeBodyPart mimeBodyPart = new MimeBodyPart();
	MimeMultipart multipart = new MimeMultipart();
	try {
		mimeBodyPart.setContent(msg, "text/html");
		multipart.addBodyPart(mimeBodyPart);
	} catch (Exception e1) {
		e1.printStackTrace();
	}
	final String user="info@kosuriers.com";//change accordingly  
	final String pass="ksl@2019";
/*final String user="campusguide.in@gmail.com";//change accordingly  
final String pass="cguide1820@";*/  
	
//1st step) Get the session object    
Properties props = new Properties();  
//props.put("mail.smtp.host", "smtp8.net4india.com");//Net4 Smtp host  
props.put("mail.smtp.host", "smtp.gmail.com");//Gmail smtp host
props.put("mail.smtp.port", "587");
props.put("mail.smtp.auth", "true");  
props.put("mail.smtp.starttls.enable", "true");
//props.put("mail.debug", "true");
//my changes 
props.put("mail.user", user);
props.put("mail.password", pass);
EMailAuthenticator auth=new EMailAuthenticator(user,pass);

Session session = Session.getDefaultInstance(props, auth);  
//2nd step)compose message  
try {  
 MimeMessage message = new MimeMessage(session);  
 message.setContent(multipart);
 message.setFrom(new InternetAddress(user));  
 message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
 message.setSubject(subject);
 message.setSentDate(new java.util.Date());
 
 message.setText(msg, "UTF-8", "html");
 
 //message.setText(msg);  
   
 //3rd step)send message  
 Transport.send(message);  
  
 //System.out.println("Done");  
  
 } catch (MessagingException e) {  
	 e.printStackTrace();
    throw new RuntimeException(e);  
 }  
      
} 

public static void main(String []args) {
	// TODO Auto-generated method stub
//	sendMarks("maheshbabu.i@kosurisoft.com","hi","ORA-DDL<br>Exam Name :: ORACLE DDL<br>Score     :: 4");
	send("maheshbabu.i@kosurisoft.com","hi","Please click on the Link <a href='https://campusguide.in/VerifyEmail?emailid=maheshbabu.i@kosurisoft.com&k=CmEsl'>Verify Email</a>.");

}
}  
