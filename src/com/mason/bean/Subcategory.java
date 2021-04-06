package com.mason.bean;

import java.io.Serializable;

public class Subcategory implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int mat_subcat_seq_id;
	private String 	CATID;
	private String SUBCATEGORY;
	private String STATUS;
	public synchronized int getMat_subcat_seq_id() {
		return mat_subcat_seq_id;
	}
	public synchronized void setMat_subcat_seq_id(int mat_subcat_seq_id) {
		this.mat_subcat_seq_id = mat_subcat_seq_id;
	}
	public synchronized String getCATID() {
		return CATID;
	}
	public synchronized void setCATID(String cATID) {
		CATID = cATID;
	}
	public synchronized String getSUBCATEGORY() {
		return SUBCATEGORY;
	}
	public synchronized void setSUBCATEGORY(String sUBCATEGORY) {
		SUBCATEGORY = sUBCATEGORY;
	}
	public synchronized String getSTATUS() {
		return STATUS;
	}
	public synchronized void setSTATUS(String sTATUS) {
		STATUS = sTATUS;
	}
	public static synchronized long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "Subcategory [mat_subcat_seq_id=" + mat_subcat_seq_id + ", CATID=" + CATID + ", SUBCATEGORY="
				+ SUBCATEGORY + ", STATUS=" + STATUS + "]";
	}
	
}
