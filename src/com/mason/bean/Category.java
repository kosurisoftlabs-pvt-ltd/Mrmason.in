package com.mason.bean;

import java.io.Serializable;

public class Category implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int CAT_ID;
	private String CATEGORY,SUBCATEGORY;
	private String CAT_STATUS,SUBCAT_STATUS;
	public synchronized int getCAT_ID() {
		return CAT_ID;
	}
	public synchronized void setCAT_ID(int cAT_ID) {
		CAT_ID = cAT_ID;
	}
	
	public synchronized String getCATEGORY() {
		return CATEGORY;
	}
	public synchronized void setCATEGORY(String cATEGORY) {
		CATEGORY = cATEGORY;
	}
	public String getSUBCATEGORY() {
		return SUBCATEGORY;
	}
	public void setSUBCATEGORY(String sUBCATEGORY) {
		SUBCATEGORY = sUBCATEGORY;
	}
	public String getCAT_STATUS() {
		return CAT_STATUS;
	}
	public void setCAT_STATUS(String cAT_STATUS) {
		CAT_STATUS = cAT_STATUS;
	}
	public String getSUBCAT_STATUS() {
		return SUBCAT_STATUS;
	}
	public void setSUBCAT_STATUS(String sUBCAT_STATUS) {
		SUBCAT_STATUS = sUBCAT_STATUS;
	}
	@Override
	public String toString() {
		return "Category [CAT_ID=" + CAT_ID + ", CATEGORY=" + CATEGORY + ", SUBCATEGORY=" + SUBCATEGORY
				+ ", CAT_STATUS=" + CAT_STATUS + ", SUBCAT_STATUS=" + SUBCAT_STATUS + "]";
	}
}
