package com.mason.bean;

import java.io.Serializable;

public class LoginDetails implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int LO_SEQ_ID;
	private String USERNAME;
	private String PASSWORD;
	private String USERTYPE;
	private String REFERENCE_ID;
	private String STATUS;
	public synchronized int getLO_SEQ_ID() {
		return LO_SEQ_ID;
	}
	public synchronized void setLO_SEQ_ID(int lO_SEQ_ID) {
		LO_SEQ_ID = lO_SEQ_ID;
	}
	public synchronized String getUSERNAME() {
		return USERNAME;
	}
	public synchronized void setUSERNAME(String uSERNAME) {
		USERNAME = uSERNAME;
	}
	public synchronized String getPASSWORD() {
		return PASSWORD;
	}
	public synchronized void setPASSWORD(String pASSWORD) {
		PASSWORD = pASSWORD;
	}
	public synchronized String getUSERTYPE() {
		return USERTYPE;
	}
	public synchronized void setUSERTYPE(String uSERTYPE) {
		USERTYPE = uSERTYPE;
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
	public synchronized String getREFERENCE_ID() {
		return REFERENCE_ID;
	}
	public synchronized void setREFERENCE_ID(String rEFERENCE_ID) {
		REFERENCE_ID = rEFERENCE_ID;
	}
	@Override
	public String toString() {
		return "LoginDetails [LO_SEQ_ID=" + LO_SEQ_ID + ", USERNAME=" + USERNAME + ", PASSWORD=" + PASSWORD
				+ ", USERTYPE=" + USERTYPE + ", REFERENCE_ID=" + REFERENCE_ID + ", STATUS=" + STATUS + "]";
	}
}
