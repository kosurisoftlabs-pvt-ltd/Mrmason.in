package com.mason.bean;

import java.io.Serializable;

public class User implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int bod_seq_no;
	private String name;
	private String mobileNo;
	private String emailId;
	private String address;
	private String city;
	private String state;
	private String district;
	private String pincodeNo;
	private String status;
	private String verified;
	private String registrationDate;
	private String userTypes;
	private String password;
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getBod_seq_no() {
		return bod_seq_no;
	}
	public void setBod_seq_no(int bod_seq_no) {
		this.bod_seq_no = bod_seq_no;
	}
	public synchronized String getName() {
		return name;
	}
	public synchronized void setName(String name) {
		this.name = name;
	}
	public synchronized String getMobileNo() {
		return mobileNo;
	}
	public synchronized void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public synchronized String getEmailId() {
		return emailId;
	}
	public synchronized void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public synchronized String getAddress() {
		return address;
	}
	public synchronized void setAddress(String address) {
		this.address = address;
	}
	public synchronized String getCity() {
		return city;
	}
	public synchronized void setCity(String city) {
		this.city = city;
	}
	public synchronized String getState() {
		return state;
	}
	public synchronized void setState(String state) {
		this.state = state;
	}
	public synchronized String getDistrict() {
		return district;
	}
	public synchronized void setDistrict(String district) {
		this.district = district;
	}
	public synchronized String getPincodeNo() {
		return pincodeNo;
	}
	public synchronized void setPincodeNo(String pincodeNo) {
		this.pincodeNo = pincodeNo;
	}
	public synchronized String getStatus() {
		return status;
	}
	public synchronized void setStatus(String status) {
		this.status = status;
	}
	public synchronized String getVerified() {
		return verified;
	}
	public synchronized void setVerified(String verified) {
		this.verified = verified;
	}
	public synchronized String getRegistrationDate() {
		return registrationDate;
	}
	public synchronized void setRegistrationDate(String registrationDate) {
		this.registrationDate = registrationDate;
	}
	public static synchronized long getSerialversionuid() {
		return serialVersionUID;
	}
	public String getUserTypes() {
		return userTypes;
	}
	public void setUserTypes(String userTypes) {
		this.userTypes = userTypes;
	}
	@Override
	public String toString() {
		return "User [bod_seq_no=" + bod_seq_no + ", name=" + name + ", mobileNo=" + mobileNo + ", emalId=" + emailId
				+ ", address=" + address + ", city=" + city + ", state=" + state + ", district=" + district
				+ ", pincodeNo=" + pincodeNo + ", status=" + status + ", verified=" + verified + ", registrationDate="
				+ registrationDate + ", userTypes=" + userTypes + ", password=" + password + "]";
	}
}
