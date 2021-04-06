package com.mason.bean;

import java.io.Serializable;

public class ServiceRequest implements Serializable{

	private int REQ_SEQ_ID;
	private String SERVICE_NAME,SERVICE_REQUEST_DATE,REQUESTED_BY,DESCRIPTION,REQ_PINCODE,STATUS,REMARKS,REQUEST_ID,SERVICE_DATE,REQUESTER_PH;
	
 /*calling get and set methods*/
	
	public int getREQ_SEQ_ID() {
		return REQ_SEQ_ID;
	}
	public void setREQ_SEQ_ID(int rEQ_SEQ_ID) {
		REQ_SEQ_ID = rEQ_SEQ_ID;
	}
	public String getSERVICE_NAME() {
		return SERVICE_NAME;
	}
	public void setSERVICE_NAME(String sERVICE_NAME) {
		SERVICE_NAME = sERVICE_NAME;
	}
	public String getSERVICE_REQUEST_DATE() {
		return SERVICE_REQUEST_DATE;
	}
	public void setSERVICE_REQUEST_DATE(String sERVICE_REQUEST_DATE) {
		SERVICE_REQUEST_DATE = sERVICE_REQUEST_DATE;
	}
	public String getREQUESTED_BY() {
		return REQUESTED_BY;
	}
	public void setREQUESTED_BY(String rEQUESTED_BY) {
		REQUESTED_BY = rEQUESTED_BY;
	}
	public String getDESCRIPTION() {
		return DESCRIPTION;
	}
	public void setDESCRIPTION(String dESCRIPTION) {
		DESCRIPTION = dESCRIPTION;
	}
	
	
	public String getREQ_PINCODE() {
		return REQ_PINCODE;
	}
	
	
	public void setREQ_PINCODE(String rEQ_PINCODE) {
		REQ_PINCODE = rEQ_PINCODE;
	}
	
	
	
	public String getSTATUS() {
		return STATUS;
	}
	public void setSTATUS(String sTATUS) {
		STATUS = sTATUS;
	}
	public String getREMARKS() {
		return REMARKS;
	}
	public void setREMARKS(String rEMARKS) {
		REMARKS = rEMARKS;
	}
	public String getREQUEST_ID() {
		return REQUEST_ID;
	}
	public void setREQUEST_ID(String rEQUEST_ID) {
		REQUEST_ID = rEQUEST_ID;
	}
	public String getSERVICE_DATE() {
		return SERVICE_DATE;
	}
	public void setSERVICE_DATE(String sERVICE_DATE) {
		SERVICE_DATE = sERVICE_DATE;
	}
	
	// below code added by mahesh Kosuri. this code is required to display phone number in service requests page.
	public String getREQUESTER_PH() {
		return REQUESTER_PH;
	}
	public void setREQUESTER_PH(String rEQUEST_Ph) {
		REQUESTER_PH = rEQUEST_Ph;
	}
	
    // above coded ended
	@Override
	public String toString() {
		//return "ServiceRequest [REQ_SEQ_ID=" + REQ_SEQ_ID + ", SERVICE_NAME=" + SERVICE_NAME + ", SERVICE_REQUEST_DATE="
		//		+ SERVICE_REQUEST_DATE + ", REQUESTED_BY=" + REQUESTED_BY + ", DESCRIPTION=" + DESCRIPTION
			//	+ ", REQ_PINCODE=" + REQ_PINCODE + ", STATUS=" + STATUS + ", REMARKS=" + REMARKS + ", REQUEST_ID="
			//	+ REQUEST_ID + ", SERVICE_DATE=" + SERVICE_DATE + "]";
		// below code added requester_ph 
		
		return "ServiceRequest [REQ_SEQ_ID=" + REQ_SEQ_ID + ", SERVICE_NAME=" + SERVICE_NAME + ", SERVICE_REQUEST_DATE="
		+ SERVICE_REQUEST_DATE + ", REQUESTED_BY=" + REQUESTED_BY + ", DESCRIPTION=" + DESCRIPTION
		+ ", REQ_PINCODE=" + REQ_PINCODE + ", STATUS=" + STATUS + ", REMARKS=" + REMARKS + ", REQUEST_ID="
		+ REQUEST_ID + ", SERVICE_DATE=" + SERVICE_DATE + ", REQUESTER_PH=" + REQUESTER_PH +"]";	
	}
}
