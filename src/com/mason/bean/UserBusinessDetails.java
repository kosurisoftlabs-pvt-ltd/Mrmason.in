package com.mason.bean;

import java.io.Serializable;

public class UserBusinessDetails implements Serializable{
	
	private Integer BD_SEQ_ID;
	private String BUSINESS_NAME, BUSINESS_TYPE, GSTIN, PINCODE, DNO, STREET, LANDMARK, CITY, STATE, STATUS, REFERENCE_ID;
	public Integer getBD_SEQ_ID() {
		return BD_SEQ_ID;
	}
	public void setBD_SEQ_ID(Integer bD_SEQ_ID) {
		BD_SEQ_ID = bD_SEQ_ID;
	}
	public String getBUSINESS_NAME() {
		return BUSINESS_NAME;
	}
	public void setBUSINESS_NAME(String bUSINESS_NAME) {
		BUSINESS_NAME = bUSINESS_NAME;
	}
	public String getBUSINESS_TYPE() {
		return BUSINESS_TYPE;
	}
	public void setBUSINESS_TYPE(String bUSINESS_TYPE) {
		BUSINESS_TYPE = bUSINESS_TYPE;
	}
	public String getGSTIN() {
		return GSTIN;
	}
	public void setGSTIN(String gSTIN) {
		GSTIN = gSTIN;
	}
	public String getPINCODE() {
		return PINCODE;
	}
	public void setPINCODE(String pINCODE) {
		PINCODE = pINCODE;
	}
	public String getDNO() {
		return DNO;
	}
	public void setDNO(String dNO) {
		DNO = dNO;
	}
	public String getSTREET() {
		return STREET;
	}
	public void setSTREET(String sTREET) {
		STREET = sTREET;
	}
	public String getLANDMARK() {
		return LANDMARK;
	}
	public void setLANDMARK(String lANDMARK) {
		LANDMARK = lANDMARK;
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
	public String getSTATUS() {
		return STATUS;
	}
	public void setSTATUS(String sTATUS) {
		STATUS = sTATUS;
	}
	public String getREFERENCE_ID() {
		return REFERENCE_ID;
	}
	public void setREFERENCE_ID(String rEFERENCE_ID) {
		REFERENCE_ID = rEFERENCE_ID;
	}
	@Override
	public String toString() {
		return "UserBusinessDetails [BD_SEQ_ID=" + BD_SEQ_ID + ", BUSINESS_NAME=" + BUSINESS_NAME + ", BUSINESS_TYPE="
				+ BUSINESS_TYPE + ", GSTIN=" + GSTIN + ", PINCODE=" + PINCODE + ", DNO=" + DNO
				+ ", STREET=" + STREET + ", LANDMARK=" + LANDMARK + ", CITY=" + CITY + ", STATE=" + STATE + ", STATUS="
				+ STATUS + ", REFERENCE_ID=" + REFERENCE_ID + "]";
	}
}
