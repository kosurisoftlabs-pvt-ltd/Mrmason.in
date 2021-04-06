package com.mason.bean;

import java.io.InputStream;
import java.io.Serializable;

public class ServicePerson implements Serializable {
	
	private int SER_PER_SEQ_ID;
	private String NAME,CONTACT_NO,EMAIL_ID,EXPERIENCE,QUALIFICATION,PINCODE,CITY,STATE,DISTRICT,AVAILABLE_STATUS,WITH_IN_RANGE,REGISTERED_BY,REGISTERED_DATE,STATUS,SERVICE_TYPE;
	private InputStream CERTIFICATE;
	public int getSER_PER_SEQ_ID() {
		return SER_PER_SEQ_ID;
	}
	public void setSER_PER_SEQ_ID(int sER_PER_SEQ_ID) {
		SER_PER_SEQ_ID = sER_PER_SEQ_ID;
	}
	public String getNAME() {
		return NAME;
	}
	public void setNAME(String nAME) {
		NAME = nAME;
	}
	public String getCONTACT_NO() {
		return CONTACT_NO;
	}
	public void setCONTACT_NO(String cONTACT_NO) {
		CONTACT_NO = cONTACT_NO;
	}
	public String getEMAIL_ID() {
		return EMAIL_ID;
	}
	public void setEMAIL_ID(String eMAIL_ID) {
		EMAIL_ID = eMAIL_ID;
	}
	public String getEXPERIENCE() {
		return EXPERIENCE;
	}
	public void setEXPERIENCE(String eXPERIENCE) {
		EXPERIENCE = eXPERIENCE;
	}
	public String getQUALIFICATION() {
		return QUALIFICATION;
	}
	public void setQUALIFICATION(String qUALIFICATION) {
		QUALIFICATION = qUALIFICATION;
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
	public String getSTATE() {
		return STATE;
	}
	public void setSTATE(String sTATE) {
		STATE = sTATE;
	}
	public String getDISTRICT() {
		return DISTRICT;
	}
	public void setDISTRICT(String dISTRICT) {
		DISTRICT = dISTRICT;
	}
	public String getAVAILABLE_STATUS() {
		return AVAILABLE_STATUS;
	}
	public void setAVAILABLE_STATUS(String aVAILABLE_STATUS) {
		AVAILABLE_STATUS = aVAILABLE_STATUS;
	}
	public String getWITH_IN_RANGE() {
		return WITH_IN_RANGE;
	}
	public void setWITH_IN_RANGE(String wITH_IN_RANGE) {
		WITH_IN_RANGE = wITH_IN_RANGE;
	}
	public String getREGISTERED_BY() {
		return REGISTERED_BY;
	}
	public void setREGISTERED_BY(String rEGISTERED_BY) {
		REGISTERED_BY = rEGISTERED_BY;
	}
	public String getREGISTERED_DATE() {
		return REGISTERED_DATE;
	}
	public void setREGISTERED_DATE(String rEGISTERED_DATE) {
		REGISTERED_DATE = rEGISTERED_DATE;
	}
	public String getSTATUS() {
		return STATUS;
	}
	public void setSTATUS(String sTATUS) {
		STATUS = sTATUS;
	}
	public InputStream getCERTIFICATE() {
		return CERTIFICATE;
	}
	public void setCERTIFICATE(InputStream cERTIFICATE) {
		CERTIFICATE = cERTIFICATE;
	}
	public String getSERVICE_TYPE() {
		return SERVICE_TYPE;
	}
	public void setSERVICE_TYPE(String sERVICE_TYPE) {
		SERVICE_TYPE = sERVICE_TYPE;
	}
	@Override
	public String toString() {
		return "ServicePerson [SER_PER_SEQ_ID=" + SER_PER_SEQ_ID + ", NAME=" + NAME + ", CONTACT_NO=" + CONTACT_NO
				+ ", EMAIL_ID=" + EMAIL_ID + ", EXPERIENCE=" + EXPERIENCE + ", QUALIFICATION=" + QUALIFICATION
				+ ", PINCODE=" + PINCODE + ", CITY=" + CITY + ", STATE=" + STATE + ", DISTRICT=" + DISTRICT
				+ ", AVAILABLE_STATUS=" + AVAILABLE_STATUS + ", WITH_IN_RANGE=" + WITH_IN_RANGE + ", REGISTERED_BY="
				+ REGISTERED_BY + ", REGISTERED_DATE=" + REGISTERED_DATE + ", STATUS=" + STATUS + ", SERVICE_TYPE="
				+ SERVICE_TYPE + ", CERTIFICATE=" + CERTIFICATE + "]";
	}
}
