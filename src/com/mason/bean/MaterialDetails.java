package com.mason.bean;

import java.io.Serializable;

public class MaterialDetails implements Serializable
{

	private int seq_id;
	private String PRODUCT_CATEGORY,PRODUCT_SUBCATEGORY,MATERIAL_NAME,COMPANY_NAME,MATERIAL_TYPE,SKUID,SPECIAL_NAME;
	public int getSeq_id() {
		return seq_id;
	}
	public void setSeq_id(int seq_id) {
		this.seq_id = seq_id;
	}
	public String getPRODUCT_CATEGORY() {
		return PRODUCT_CATEGORY;
	}
	public void setPRODUCT_CATEGORY(String pRODUCT_CATEGORY) {
		PRODUCT_CATEGORY = pRODUCT_CATEGORY;
	}
	public String getPRODUCT_SUBCATEGORY() {
		return PRODUCT_SUBCATEGORY;
	}
	public void setPRODUCT_SUBCATEGORY(String pRODUCT_SUBCATEGORY) {
		PRODUCT_SUBCATEGORY = pRODUCT_SUBCATEGORY;
	}
	public String getMATERIAL_NAME() {
		return MATERIAL_NAME;
	}
	public void setMATERIAL_NAME(String mATERIAL_NAME) {
		MATERIAL_NAME = mATERIAL_NAME;
	}
	public String getCOMPANY_NAME() {
		return COMPANY_NAME;
	}
	public void setCOMPANY_NAME(String cOMPANY_NAME) {
		COMPANY_NAME = cOMPANY_NAME;
	}
	public String getMATERIAL_TYPE() {
		return MATERIAL_TYPE;
	}
	public void setMATERIAL_TYPE(String mATERIAL_TYPE) {
		MATERIAL_TYPE = mATERIAL_TYPE;
	}
	public String getSKUID() {
		return SKUID;
	}
	public void setSKUID(String sKUID) {
		SKUID = sKUID;
	}
	public String getSPECIAL_NAME() {
		return SPECIAL_NAME;
	}
	public void setSPECIAL_NAME(String sPECIAL_NAME) {
		SPECIAL_NAME = sPECIAL_NAME;
	}
	@Override
	public String toString() {
		return "MaterialDetails [seq_id=" + seq_id + ", PRODUCT_CATEGORY=" + PRODUCT_CATEGORY + ", PRODUCT_SUBCATEGORY="
				+ PRODUCT_SUBCATEGORY + ", MATERIAL_NAME=" + MATERIAL_NAME + ", COMPANY_NAME=" + COMPANY_NAME
				+ ", MATERIAL_TYPE=" + MATERIAL_TYPE + ", SKUID=" + SKUID + ", SPECIAL_NAME=" + SPECIAL_NAME + "]";
	}
}
