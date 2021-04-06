package com.mason.bean;

import java.io.InputStream;
import java.io.Serializable;
import java.util.Arrays;

public class PaintsDetails implements Serializable {

	private int PAINTS_SEQ_ID;
	private String SKUID,CATEGORY,SUBCATEGORY,MANUFACTURER_NAME,SPECIAL_NAME,INTER_EXTER,WEIGHT,AVAILABLE_COLORS,PRICE,DESCRIPTION,SPECIFICATION1,SPECIFICATION2,SPECIFICATION3,SPECIFICATION4,SPECIFICATION5,DISPLAY,STATUS,REFERENCE_ID,WEIGHTS,SPECIFICATION6,SPECIFICATION7,SPECIFICATION8,SPECIFICATION9,SPECIFICATION10,SPECIFICATION11,SPECIFICATION12;
	private String PAINTSIMAGE;
	private InputStream IMAGE;
	private byte imagearray[];
	
	public int getPAINTS_SEQ_ID() {
		return PAINTS_SEQ_ID;
	}
	public void setPAINTS_SEQ_ID(int pAINTS_SEQ_ID) {
		PAINTS_SEQ_ID = pAINTS_SEQ_ID;
	}
	public String getSKUID() {
		return SKUID;
	}
	public void setSKUID(String sKUID) {
		SKUID = sKUID;
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
	public String getINTER_EXTER() {
		return INTER_EXTER;
	}
	public void setINTER_EXTER(String iNTER_EXTER) {
		INTER_EXTER = iNTER_EXTER;
	}
	public String getWEIGHT() {
		return WEIGHT;
	}
	public void setWEIGHT(String wEIGHT) {
		WEIGHT = wEIGHT;
	}
	public String getAVAILABLE_COLORS() {
		return AVAILABLE_COLORS;
	}
	public void setAVAILABLE_COLORS(String aVAILABLE_COLORS) {
		AVAILABLE_COLORS = aVAILABLE_COLORS;
	}
	public String getPRICE() {
		return PRICE;
	}
	public void setPRICE(String pRICE) {
		PRICE = pRICE;
	}
	public String getDESCRIPTION() {
		return DESCRIPTION;
	}
	public void setDESCRIPTION(String dESCRIPTION) {
		DESCRIPTION = dESCRIPTION;
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
	public String getDISPLAY() {
		return DISPLAY;
	}
	public void setDISPLAY(String dISPLAY) {
		DISPLAY = dISPLAY;
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
	
	public InputStream getIMAGE() {
		return IMAGE;
	}
	public void setIMAGE(InputStream iMAGE) {
		IMAGE = iMAGE;
	}
	
	public String getPAINTSIMAGE() {
		return PAINTSIMAGE;
	}
	public void setPAINTSIMAGE(String pAINTSIMAGE) {
		PAINTSIMAGE = pAINTSIMAGE;
	}
	
	public byte[] getImagearray() {
		return imagearray;
	}
	public void setImagearray(byte[] imagearray) {
		this.imagearray = imagearray;
	}
	public String getWEIGHTS() {
		return WEIGHTS;
	}
	public void setWEIGHTS(String wEIGHTS) {
		WEIGHTS = wEIGHTS;
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
	public String getSPECIFICATION8() {
		return SPECIFICATION8;
	}
	public void setSPECIFICATION8(String sPECIFICATION8) {
		SPECIFICATION8 = sPECIFICATION8;
	}
	public String getSPECIFICATION9() {
		return SPECIFICATION9;
	}
	public void setSPECIFICATION9(String sPECIFICATION9) {
		SPECIFICATION9 = sPECIFICATION9;
	}
	public String getSPECIFICATION10() {
		return SPECIFICATION10;
	}
	public void setSPECIFICATION10(String sPECIFICATION10) {
		SPECIFICATION10 = sPECIFICATION10;
	}
	public String getSPECIFICATION11() {
		return SPECIFICATION11;
	}
	public void setSPECIFICATION11(String sPECIFICATION11) {
		SPECIFICATION11 = sPECIFICATION11;
	}
	public String getSPECIFICATION12() {
		return SPECIFICATION12;
	}
	public void setSPECIFICATION12(String sPECIFICATION12) {
		SPECIFICATION12 = sPECIFICATION12;
	}
	
	@Override
	public String toString() {
		return "PaintsDetails [PAINTS_SEQ_ID=" + PAINTS_SEQ_ID + ", SKUID=" + SKUID + ", CATEGORY=" + CATEGORY
				+ ", SUBCATEGORY=" + SUBCATEGORY + ", MANUFACTURER_NAME=" + MANUFACTURER_NAME + ", SPECIAL_NAME="
				+ SPECIAL_NAME + ", INTER_EXTER=" + INTER_EXTER + ", WEIGHT=" + WEIGHT + ", AVAILABLE_COLORS="
				+ AVAILABLE_COLORS + ", PRICE=" + PRICE + ", DESCRIPTION=" + DESCRIPTION + ", SPECIFICATION1="
				+ SPECIFICATION1 + ", SPECIFICATION2=" + SPECIFICATION2 + ", SPECIFICATION3=" + SPECIFICATION3
				+ ", SPECIFICATION4=" + SPECIFICATION4 + ", SPECIFICATION5=" + SPECIFICATION5 + ", DISPLAY=" + DISPLAY
				+ ", STATUS=" + STATUS + ", REFERENCE_ID=" + REFERENCE_ID + ", WEIGHTS=" + WEIGHTS + ", SPECIFICATION6="
				+ SPECIFICATION6 + ", SPECIFICATION7=" + SPECIFICATION7 + ", SPECIFICATION8=" + SPECIFICATION8
				+ ", SPECIFICATION9=" + SPECIFICATION9 + ", SPECIFICATION10=" + SPECIFICATION10 + ", SPECIFICATION11="
				+ SPECIFICATION11 + ", SPECIFICATION12=" + SPECIFICATION12 + ", PAINTSIMAGE="
				+ PAINTSIMAGE + ", IMAGE=" + IMAGE + ", imagearray=" + Arrays.toString(imagearray) + "]";
	}
	
}
