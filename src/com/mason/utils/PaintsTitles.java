package com.mason.utils;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class PaintsTitles {
	
	public ArrayList<String> getPaintsTitles()
	{
		List<String> paints =Arrays.asList("SKUID","MANUFACTURER_NAME","SPECIAL_NAME","INTER_EXTER","WEIGHT","AVAILABLE_COLORS","PRICE","DESCRIPTION","SPECIFICATION1","SPECIFICATION2","SPECIFICATION3","SPECIFICATION4","SPECIFICATION5","DISPLAY");
		ArrayList<String> paintsal = new ArrayList<String>();
		paintsal.addAll(paints);
		return paintsal;
	}
	   
}
