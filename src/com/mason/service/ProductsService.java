package com.mason.service;

import java.util.ArrayList;

import com.mason.bean.CementDetails;
import com.mason.bean.PaintsDetails;
import com.mason.bean.TilesDetails;
import com.mason.factory.CategoryFactory;
import com.mason.factory.MasonFactory;

public class ProductsService {
	
	public String addProduct(PaintsDetails pd)
	{
		return new MasonFactory().getProductObject().addPaint(pd);
	}
	public String addPaintSpecs(PaintsDetails pd)
	{
		return new MasonFactory().getProductObject().addPaintSpecs(pd);
	}
	public ArrayList<PaintsDetails> addBulkPaints(ArrayList<PaintsDetails> alpd)
	{
		return new MasonFactory().getProductObject().addBulkPaints(alpd);
	}
	public ArrayList<PaintsDetails> addBulkPaintsSpecs(ArrayList<PaintsDetails> alpd)
	{
		return new MasonFactory().getProductObject().addBulkPaintsSpecs(alpd);
	}
	public ArrayList<PaintsDetails> viewSPAllMaterialsDetails(String referenceid)
	{
		return new MasonFactory().getProductObject().viewSPAllMaterialsDetails(referenceid);
	}
	public ArrayList<PaintsDetails> viewSPPaintsDetails(PaintsDetails pd,int limit,int offset)
	{
		return new MasonFactory().getProductObject().viewSPPaintsDetails(pd,limit,offset);
	}
	public ArrayList<PaintsDetails> loadMore(PaintsDetails pd,int maxrowsperpage,int noofrecords)
	{
		return new MasonFactory().getProductObject().viewMorePaintsDetails(pd,maxrowsperpage,noofrecords);
	}
	public ArrayList<String> getPaintsBrandByCategory(String category)
	{
		return new MasonFactory().getProductObject().getPaintsBrandByCategory(category);
	}
	
	public ArrayList<String> getBrandBySubcategory(String subcatid)
	{
		ArrayList<String> al=new ArrayList<String>();
		String Category = new CategoryFactory().getCategoryObject().getCategoryName(subcatid);
		if(Category.equalsIgnoreCase("paints"))
		{
			al = new MasonFactory().getProductObject().getPaintsBrandBySubcategory(subcatid);
		}
		else if(Category.equalsIgnoreCase("cement"))
		{
			al = new MasonFactory().getProductObject().getCementBrandsBySubcategory(subcatid);
		}
		
		return al;  
	}
	
	/*public ArrayList<String> getPaintsBrandBySubcategory(String subcategory)
	{
		return new MasonFactory().getProductObject().getPaintsBrandBySubcategory(subcategory);
	}*/
	
	public PaintsDetails viewPaintIndividualDetails(String paintseqid)
	{
		return new MasonFactory().getProductObject().viewPaintIndividualDetails(paintseqid);
	}
	
	public PaintsDetails viewAPaintIndividualDetails(String paintseqid)
	{
		return new MasonFactory().getProductObject().viewAPaintIndividualDetails(paintseqid);
	}
	public boolean updatePaintDetails(PaintsDetails pd)
	{
		return new MasonFactory().getProductObject().updatePaintDetails(pd);
	}
	public String addCementDetails(CementDetails cd)
	{
		return new MasonFactory().getProductObject().addCement(cd);
	}
	public ArrayList<CementDetails> addBulkCementSpecs(ArrayList<CementDetails> alpd)
	{
		return new MasonFactory().getProductObject().addBulkCementSpecs(alpd);
	}
	public String addTilesDetails(TilesDetails td)
	{
		return new MasonFactory().getProductObject().addTiles(td);
	}
	
}
