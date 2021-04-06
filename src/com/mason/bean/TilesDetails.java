package com.mason.bean;

import java.io.InputStream;
import java.io.Serializable;

public class TilesDetails implements Serializable 
{
	private int SEQ_ID;
	private String CATEGORY,SUBCATEGORY,MANUFACTURER_NAME,SPECIAL_NAME,TILES_TYPE,NOMINAL_SIZE,LENGTH,WIDTH,THICKNESS,SKUID,SPECIFICATION1,SPECIFICATION2,SPECIFICATION3,SPECIFICATION4,SPECIFICATION5,SPECIFICATION6,SPECIFICATION7,DESCRIPTION,IMAGE,DISPLAY_TYPE,STATUS;
	private InputStream TilesImage;
	private byte imagearray[];
	public int getSEQ_ID() {
		return SEQ_ID;
	}
	public void setSEQ_ID(int sEQ_ID) {
		SEQ_ID = sEQ_ID;
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
	public String getTILES_TYPE() {
		return TILES_TYPE;
	}
	public void setTILES_TYPE(String tILES_TYPE) {
		TILES_TYPE = tILES_TYPE;
	}
	public String getNOMINAL_SIZE() {
		return NOMINAL_SIZE;
	}
	public void setNOMINAL_SIZE(String nOMINAL_SIZE) {
		NOMINAL_SIZE = nOMINAL_SIZE;
	}
	public String getLENGTH() {
		return LENGTH;
	}
	public void setLENGTH(String lENGTH) {
		LENGTH = lENGTH;
	}
	public String getWIDTH() {
		return WIDTH;
	}
	public void setWIDTH(String wIDTH) {
		WIDTH = wIDTH;
	}
	public String getTHICKNESS() {
		return THICKNESS;
	}
	public void setTHICKNESS(String tHICKNESS) {
		THICKNESS = tHICKNESS;
	}
	public String getSKUID() {
		return SKUID;
	}
	public void setSKUID(String sKUID) {
		SKUID = sKUID;
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
	public String getDESCRIPTION() {
		return DESCRIPTION;
	}
	public void setDESCRIPTION(String dESCRIPTION) {
		DESCRIPTION = dESCRIPTION;
	}
	public String getIMAGE() {
		return IMAGE;
	}
	public void setIMAGE(String iMAGE) {
		IMAGE = iMAGE;
	}
	public String getDISPLAY_TYPE() {
		return DISPLAY_TYPE;
	}
	public void setDISPLAY_TYPE(String dISPLAY_TYPE) {
		DISPLAY_TYPE = dISPLAY_TYPE;
	}
	public String getSTATUS() {
		return STATUS;
	}
	public void setSTATUS(String sTATUS) {
		STATUS = sTATUS;
	}
	public InputStream getTilesImage() {
		return TilesImage;
	}
	public void setTilesImage(InputStream tilesImage) {
		TilesImage = tilesImage;
	}
	public byte[] getImagearray() {
		return imagearray;
	}
	public void setImagearray(byte[] imagearray) {
		this.imagearray = imagearray;
	}
	@Override
	public String toString() {
		return "Tiles [SEQ_ID=" + SEQ_ID + ", CATEGORY=" + CATEGORY + ", SUBCATEGORY=" + SUBCATEGORY
				+ ", MANUFACTURER_NAME=" + MANUFACTURER_NAME + ", SPECIAL_NAME=" + SPECIAL_NAME + ", TILES_TYPE="
				+ TILES_TYPE + ", NOMINAL_SIZE=" + NOMINAL_SIZE + ", LENGTH=" + LENGTH + ", WIDTH=" + WIDTH
				+ ", THICKNESS=" + THICKNESS + ", SKUID=" + SKUID + ", SPECIFICATION1=" + SPECIFICATION1
				+ ", SPECIFICATION2=" + SPECIFICATION2 + ", SPECIFICATION3=" + SPECIFICATION3 + ", SPECIFICATION4="
				+ SPECIFICATION4 + ", SPECIFICATION5=" + SPECIFICATION5 + ", SPECIFICATION6=" + SPECIFICATION6
				+ ", SPECIFICATION7=" + SPECIFICATION7 + ", DESCRIPTION=" + DESCRIPTION + ", IMAGE=" + IMAGE
				+ ", DISPLAY_TYPE=" + DISPLAY_TYPE + ", STATUS=" + STATUS + ", TilesImage=" + TilesImage + "]";
	}
}
