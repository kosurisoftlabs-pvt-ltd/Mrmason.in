package com.mason.bean;

public class Brand {
	String BRAND_NAME,CATEGORY;
	int BRAND_SEQ_ID;
	public String getBRAND_NAME() {
		return BRAND_NAME;
	}
	public void setBRAND_NAME(String bRAND_NAME) {
		BRAND_NAME = bRAND_NAME;
	}
	public String getCATEGORY() {
		return CATEGORY;
	}
	public void setCATEGORY(String cATEGORY) {
		CATEGORY = cATEGORY;
	}
	public int getBRAND_SEQ_ID() {
		return BRAND_SEQ_ID;
	}
	public void setBRAND_SEQ_ID(int bRAND_SEQ_ID) {
		BRAND_SEQ_ID = bRAND_SEQ_ID;
	}

	public String toString() {
		return "Brand [BRAND_NAME=" + BRAND_NAME + ", CATEGORY=" + CATEGORY + ", BRAND_SEQ_ID=" + BRAND_SEQ_ID + "]";
	}
}
