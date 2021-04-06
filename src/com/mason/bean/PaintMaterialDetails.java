package com.mason.bean;

import java.io.Serializable;

public class PaintMaterialDetails implements Serializable {

	private int PAINTS_SEQ_ID;
	private String SKUID,	CATEGORY,	SUBCATEGORY,	MANUFACTURER_NAME,	SPECIAL_NAME,	INTER_EXTER,	WEIGHT,	AVAILABLE_COLORS,	PRICE,	DESCRIPTION,	SPECIFICATION1,	SPECIFICATION2,	SPECIFICATION3,	SPECIFICATION4,	SPECIFICATION5,	DISPLAY,	STATUS,	REFERENCE_ID;
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
	@Override
	public String toString() {
		return "PaintMaterialDetails [PAINTS_SEQ_ID=" + PAINTS_SEQ_ID + ", SKUID=" + SKUID + ", CATEGORY=" + CATEGORY
				+ ", SUBCATEGORY=" + SUBCATEGORY + ", MANUFACTURER_NAME=" + MANUFACTURER_NAME + ", SPECIAL_NAME="
				+ SPECIAL_NAME + ", INTER_EXTER=" + INTER_EXTER + ", WEIGHT=" + WEIGHT + ", AVAILABLE_COLORS="
				+ AVAILABLE_COLORS + ", PRICE=" + PRICE + ", DESCRIPTION=" + DESCRIPTION + ", SPECIFICATION1="
				+ SPECIFICATION1 + ", SPECIFICATION2=" + SPECIFICATION2 + ", SPECIFICATION3=" + SPECIFICATION3
				+ ", SPECIFICATION4=" + SPECIFICATION4 + ", SPECIFICATION5=" + SPECIFICATION5 + ", DISPLAY=" + DISPLAY
				+ ", STATUS=" + STATUS + ", REFERENCE_ID=" + REFERENCE_ID + "]";
	}
	
}
