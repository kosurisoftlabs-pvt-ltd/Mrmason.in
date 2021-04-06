package com.mason.bean;

import java.io.InputStream;
import java.io.Serializable;

public class UserServices implements Serializable {
	
	private int USER_SERVICES_ID;
	private String SERVICE_TYPE,USER_ID,QUALIFICATION,EXPERIENCE,STATUS,AVAILABLE_WITHIN_RANGE,PINCODE,CITY;
	private InputStream CERTIFICATE1,CERTIFICATE2;
	
	public int getUSER_SERVICES_ID() {
		return USER_SERVICES_ID;
	}
	public void setUSER_SERVICES_ID(int uSER_SERVICES_ID) {
		USER_SERVICES_ID = uSER_SERVICES_ID;
	}
	public String getSERVICE_TYPE() {
		return SERVICE_TYPE;
	}
	public void setSERVICE_TYPE(String sERVICE_TYPE) {
		SERVICE_TYPE = sERVICE_TYPE;
	}
	public String getUSER_ID() {
		return USER_ID;
	}
	public void setUSER_ID(String uSER_ID) {
		USER_ID = uSER_ID;
	}
	public String getQUALIFICATION() {
		return QUALIFICATION;
	}
	public void setQUALIFICATION(String qUALIFICATION) {
		QUALIFICATION = qUALIFICATION;
	}
	public String getEXPERIENCE() {
		return EXPERIENCE;
	}
	public void setEXPERIENCE(String eXPERIENCE) {
		EXPERIENCE = eXPERIENCE;
	}
	
	public String getSTATUS() {
		return STATUS;
	}
	public void setSTATUS(String sTATUS) {
		STATUS = sTATUS;
	}
	public String getAVAILABLE_WITHIN_RANGE() {
		return AVAILABLE_WITHIN_RANGE;
	}
	public void setAVAILABLE_WITHIN_RANGE(String aVAILABLE_WITHIN_RANGE) {
		AVAILABLE_WITHIN_RANGE = aVAILABLE_WITHIN_RANGE;
	}
	public InputStream getCERTIFICATE1() {
		return CERTIFICATE1;
	}
	public void setCERTIFICATE1(InputStream cERTIFICATE1) {
		CERTIFICATE1 = cERTIFICATE1;
	}
	public InputStream getCERTIFICATE2() {
		return CERTIFICATE2;
	}
	public void setCERTIFICATE2(InputStream cERTIFICATE2) {
		CERTIFICATE2 = cERTIFICATE2;
	}
	public String getPINCODE() {
		return PINCODE;
	}
	public void setPINCODE(String pINCODE) {
		PINCODE = pINCODE;
	}
	public String getCITY() {
		return CITY;
	}
	public void setCITY(String cITY) {
		CITY = cITY;
	}

	public String toString() {
		return "UserServices [USER_SERVICES_ID=" + USER_SERVICES_ID + ", SERVICE_TYPE=" + SERVICE_TYPE + ", USER_ID="
				+ USER_ID + ", QUALIFICATION=" + QUALIFICATION + ", EXPERIENCE=" + EXPERIENCE + ", STATUS=" + STATUS
				+ ", AVAILABLE_WITHIN_RANGE=" + AVAILABLE_WITHIN_RANGE + ", PINCODE=" + PINCODE + ", CITY=" + CITY
				+ ", CERTIFICATE1=" + CERTIFICATE1 + ", CERTIFICATE2=" + CERTIFICATE2 + "]";
	}
}
