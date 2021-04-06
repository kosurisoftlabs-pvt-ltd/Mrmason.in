package com.mason.bean;

import java.io.InputStream;
import java.util.Arrays;

public class CementDetails {
	
	private int SEQID;
	private String CATEGORY,SUBCATEGORY,MANUFACTURER_NAME,SPECIAL_NAME,CEMENT_TYPE,SPECIFICATION1,SPECIFICATION2,SPECIFICATION3,SPECIFICATION4,SPECIFICATION5,SPECIFICATION6,SPECIFICATION7,DISPLAY_TYPE,MASS,WEIGHT,IMAGE,SKUID,DESCRIPTION,STATUS;

	private InputStream CEMENT_IMAGE;
	private byte imagearray[];
	
	public int getSEQID() {
		return SEQID;
	}
	public void setSEQID(int sEQID) {
		SEQID = sEQID;
	}
	public String getCATEGORY() {
		return CATEGORY;
	}
	public void setCATEGORY(String cATEGORY) {
		CATEGORY = cATEGORY;
	}
	public String getSUBCATEGORY() {
		return SUBCATEGORY;
	}
	public void setSUBCATEGORY(String sUBCATEGORY) {
		SUBCATEGORY = sUBCATEGORY;
	}
	public String getMANUFACTURER_NAME() {
		return MANUFACTURER_NAME;
	}
	public void setMANUFACTURER_NAME(String mANUFACTURER_NAME) {
		MANUFACTURER_NAME = mANUFACTURER_NAME;
	}
	public String getSPECIAL_NAME() {
		return SPECIAL_NAME;
	}
	public void setSPECIAL_NAME(String sPECIAL_NAME) {
		SPECIAL_NAME = sPECIAL_NAME;
	}
	public String getCEMENT_TYPE() {
		return CEMENT_TYPE;
	}
	public void setCEMENT_TYPE(String cEMENT_TYPE) {
		CEMENT_TYPE = cEMENT_TYPE;
	}
	public String getSPECIFICATION1() {
		return SPECIFICATION1;
	}
	public void setSPECIFICATION1(String sPECIFICATION1) {
		SPECIFICATION1 = sPECIFICATION1;
	}
	public String getSPECIFICATION2() {
		return SPECIFICATION2;
	}
	public void setSPECIFICATION2(String sPECIFICATION2) {
		SPECIFICATION2 = sPECIFICATION2;
	}
	public String getSPECIFICATION3() {
		return SPECIFICATION3;
	}
	public void setSPECIFICATION3(String sPECIFICATION3) {
		SPECIFICATION3 = sPECIFICATION3;
	}
	public String getSPECIFICATION4() {
		return SPECIFICATION4;
	}
	public void setSPECIFICATION4(String sPECIFICATION4) {
		SPECIFICATION4 = sPECIFICATION4;
	}
	public String getSPECIFICATION5() {
		return SPECIFICATION5;
	}
	public void setSPECIFICATION5(String sPECIFICATION5) {
		SPECIFICATION5 = sPECIFICATION5;
	}
	public String getSPECIFICATION6() {
		return SPECIFICATION6;
	}
	public void setSPECIFICATION6(String sPECIFICATION6) {
		SPECIFICATION6 = sPECIFICATION6;
	}
	public String getSPECIFICATION7() {
		return SPECIFICATION7;
	}
	public void setSPECIFICATION7(String sPECIFICATION7) {
		SPECIFICATION7 = sPECIFICATION7;
	}
	public String getDISPLAY_TYPE() {
		return DISPLAY_TYPE;
	}
	public void setDISPLAY_TYPE(String dISPLAY_TYPE) {
		DISPLAY_TYPE = dISPLAY_TYPE;
	}
	public String getMASS() {
		return MASS;
	}
	public void setMASS(String mASS) {
		MASS = mASS;
	}
	public String getWEIGHT() {
		return WEIGHT;
	}
	public void setWEIGHT(String wEIGHT) {
		WEIGHT = wEIGHT;
	}
	public String getIMAGE() {
		return IMAGE;
	}
	public void setIMAGE(String iMAGE) {
		IMAGE = iMAGE;
	}
	public String getSKUID() {
		return SKUID;
	}
	public void setSKUID(String sKUID) {
		SKUID = sKUID;
	}
	public String getDESCRIPTION() {
		return DESCRIPTION;
	}
	public void setDESCRIPTION(String dESCRIPTION) {
		DESCRIPTION = dESCRIPTION;
	}
	public String getSTATUS() {
		return STATUS;
	}
	public void setSTATUS(String sTATUS) {
		STATUS = sTATUS;
	}
	public InputStream getCEMENT_IMAGE() {
		return CEMENT_IMAGE;
	}
	public void setCEMENT_IMAGE(InputStream cEMENT_IMAGE) {
		CEMENT_IMAGE = cEMENT_IMAGE;
	}
	public byte[] getImagearray() {
		return imagearray;
	}
	public void setImagearray(byte[] imagearray) {
		this.imagearray = imagearray;
	}
	@Override
	public String toString() {
		return "CementDetails [SEQID=" + SEQID + ", CATEGORY=" + CATEGORY + ", SUBCATEGORY=" + SUBCATEGORY
				+ ", MANUFACTURER_NAME=" + MANUFACTURER_NAME + ", SPECIAL_NAME=" + SPECIAL_NAME + ", CEMENT_TYPE="
				+ CEMENT_TYPE + ", SPECIFICATION1=" + SPECIFICATION1 + ", SPECIFICATION2=" + SPECIFICATION2
				+ ", SPECIFICATION3=" + SPECIFICATION3 + ", SPECIFICATION4=" + SPECIFICATION4 + ", SPECIFICATION5="
				+ SPECIFICATION5 + ", SPECIFICATION6=" + SPECIFICATION6 + ", SPECIFICATION7=" + SPECIFICATION7
				+ ", DISPLAY_TYPE=" + DISPLAY_TYPE + ", MASS=" + MASS + ", WEIGHT=" + WEIGHT + ", IMAGE=" + IMAGE
				+ ", SKUID=" + SKUID + ", DESCRIPTION=" + DESCRIPTION + ", STATUS=" + STATUS + ", CEMENT_IMAGE="
				+ CEMENT_IMAGE + ", imagearray=" + Arrays.toString(imagearray) + "]";
	}
	
}
