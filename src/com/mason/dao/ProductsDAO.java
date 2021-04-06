package com.mason.dao;

import java.util.ArrayList;

import com.mason.bean.CementDetails;
import com.mason.bean.PaintsDetails;
import com.mason.bean.TilesDetails;

public interface ProductsDAO {
	
	public int getNoOfRecords();
	public String addPaint(PaintsDetails pd);
	public String addPaintSpecs(PaintsDetails pd);
	public ArrayList<PaintsDetails> addBulkPaints(ArrayList<PaintsDetails> alpd);
	public ArrayList<PaintsDetails> addBulkPaintsSpecs(ArrayList<PaintsDetails> alpd);
	public ArrayList<PaintsDetails> viewSPAllMaterialsDetails(String referenceid);
	public PaintsDetails viewPaintIndividualDetails(String paintseqid);
	public PaintsDetails viewAPaintIndividualDetails(String paintseqid);
	public ArrayList<PaintsDetails> viewSPPaintsDetails(PaintsDetails pd,int limit,int offset);
	public ArrayList<PaintsDetails> viewASPPaintsDetails(PaintsDetails pd,int limit,int offset);
	public ArrayList<String> getPaintsBrandByCategory(String category);
	public ArrayList<String> getPaintsBrandBySubcategory(String subcategory);
	public boolean updatePaintDetails(PaintsDetails pd);
	public int getPaintsTotalCount(PaintsDetails pd);
	public ArrayList<PaintsDetails> viewMorePaintsDetails(PaintsDetails pd,int maxrowsperpage,int noofrecords);

	// Cements
	
	public String addCement(CementDetails cd);
	public ArrayList<CementDetails> addBulkCementSpecs(ArrayList<CementDetails> alpd);
	public ArrayList<CementDetails> viewASPCementDetails(CementDetails pd,int limit,int offset);
	public ArrayList<String> getCementBrandsBySubcategory(String subcategory);
	
	//Tiles
	
	public String addTiles(TilesDetails cd);
	public ArrayList<TilesDetails> addBulkTilesSpecs(ArrayList<TilesDetails> alpd);
	public ArrayList<TilesDetails> viewASPTilesDetails(TilesDetails td,int limit,int offset);
	public ArrayList<String> getTilesBrandsBySubcategory(String subcategory);

}
