package com.mason.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FilenameUtils;
import org.apache.poi.hssf.usermodel.HSSFFormulaEvaluator;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.usermodel.FormulaEvaluator;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFFormulaEvaluator;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import com.mason.bean.PaintsDetails;
import com.mason.service.ProductsService;
import com.mason.utils.PaintsTitles;

/**
 * Servlet implementation class PaintsSpecsMassUpload
 */
@WebServlet("/PaintsSpecsMassUpload")
public class PaintsSpecsMassUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PaintsSpecsMassUpload() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String filename ="",returnstring="",message=null,productcategory="",subcategory="";
		ArrayList<String> paintstitles=new ArrayList<String>();
		ArrayList<PaintsDetails> al=new ArrayList<PaintsDetails>();
//		InputStream is=null;
		HttpSession hs=request.getSession();
		String id =null;
		if(hs.getAttribute("referenceid")==null)
		{
			returnstring="Please Login to Continue....";
		}else
		{
			id = hs.getAttribute("referenceid").toString();
			boolean bb=false;
		
		try {
			boolean ismultipart=ServletFileUpload.isMultipartContent(request);
			if(!ismultipart){
				
			}
			else
			{
				FileItemFactory factory = new DiskFileItemFactory();
				ServletFileUpload upload = new ServletFileUpload(factory);
				List items = null;
				ServletContext context = getServletContext();
				try
				{
					items = upload.parseRequest(request);
				}
				catch(Exception e){
				}
			
			boolean b=false;
			Iterator itr = items.iterator();
			while(itr.hasNext()){
			FileItem item = (FileItem)itr.next();
			if(item.isFormField()){
//			System.out.println("Form field Name "+item.getFieldName());
			if(item.getFieldName().equals("subcategory"))
			{
				subcategory = item.getString();
			}
			if(item.getFieldName().equals("productcategory"))
			{
				productcategory = item.getString();
			}
//			System.out.println("Form field value "+item.getString());
			}else{
			String itemname = item.getName();
			if((itemname==null || itemname.equals(""))){
			continue;
			}
			filename = FilenameUtils.getName(itemname);
//			System.out.println("File Name is "+filename);
			//FileInputStream file = new FileInputStream(new File(filename));
			InputStream file =item.getInputStream();
			Workbook workbook=null;
			DataFormatter objDefaultFormat = new DataFormatter();// new added code
			FormulaEvaluator objFormulaEvaluator =null;
			//Create Workbook instance holding reference to .xlsx file
			if(filename.endsWith(".xls"))
			{
				workbook = new HSSFWorkbook(file);
				objFormulaEvaluator = new HSSFFormulaEvaluator((HSSFWorkbook) workbook);// new added code
			}
			else
				if(filename.endsWith(".xlsx"))
				{
					workbook = new XSSFWorkbook(file);
					objFormulaEvaluator = new XSSFFormulaEvaluator((XSSFWorkbook) workbook);// new added code
				}
			Sheet sheet = workbook.getSheetAt(0);
			Iterator<Row> rowIterator = sheet.iterator();
			int rows=1,cols=1,count=0;
			int lastrow=sheet.getLastRowNum();	
			lastrow+=1;
//			System.out.println("Last Row :: "+lastrow);
//			System.out.println("Last row count ::"+sheet.getLastRowNum()+1);
			while (rowIterator.hasNext()){
			Row row = rowIterator.next();
			
			if(rows==1)
			{
				paintstitles = new PaintsTitles().getPaintsTitles();
			}
			else
			if(rows>1 && rows<=lastrow)
			{
				Cell cellValue = null;
				PaintsDetails md=new PaintsDetails();
//				System.out.println("Last Row. "+lastrow);
//				System.out.println("Row No. "+rows);
				try {
					cellValue=row.getCell(0);
					if(cellValue==null || cellValue.equals(""))
					{}
					else
					{
						md.setCATEGORY(productcategory);
						md.setSUBCATEGORY(subcategory);
						cellValue=row.getCell(1);
						objFormulaEvaluator.evaluate(cellValue);
						md.setSKUID(objDefaultFormat.formatCellValue(cellValue,objFormulaEvaluator));
						cellValue=row.getCell(2);
						objFormulaEvaluator.evaluate(cellValue);
						md.setMANUFACTURER_NAME(objDefaultFormat.formatCellValue(cellValue,objFormulaEvaluator));
						cellValue=row.getCell(3);
						objFormulaEvaluator.evaluate(cellValue);
						md.setSPECIAL_NAME(objDefaultFormat.formatCellValue(cellValue,objFormulaEvaluator));
						cellValue=row.getCell(4);
						objFormulaEvaluator.evaluate(cellValue);
						md.setINTER_EXTER(objDefaultFormat.formatCellValue(cellValue,objFormulaEvaluator));
						cellValue=row.getCell(5);
						objFormulaEvaluator.evaluate(cellValue);
						md.setWEIGHT(objDefaultFormat.formatCellValue(cellValue,objFormulaEvaluator));
						cellValue=row.getCell(6);
						objFormulaEvaluator.evaluate(cellValue);
						md.setSPECIFICATION1(objDefaultFormat.formatCellValue(cellValue,objFormulaEvaluator));
						cellValue=row.getCell(7);
						objFormulaEvaluator.evaluate(cellValue);
						md.setSPECIFICATION2(objDefaultFormat.formatCellValue(cellValue,objFormulaEvaluator));
						cellValue=row.getCell(8);
						objFormulaEvaluator.evaluate(cellValue);
						md.setSPECIFICATION3(objDefaultFormat.formatCellValue(cellValue,objFormulaEvaluator));
						cellValue=row.getCell(9);
						objFormulaEvaluator.evaluate(cellValue);
						md.setSPECIFICATION4(objDefaultFormat.formatCellValue(cellValue,objFormulaEvaluator));
						cellValue=row.getCell(10);
						objFormulaEvaluator.evaluate(cellValue);
						md.setSPECIFICATION5(objDefaultFormat.formatCellValue(cellValue,objFormulaEvaluator));
						
						cellValue=row.getCell(11);
						objFormulaEvaluator.evaluate(cellValue);
						md.setSPECIFICATION6(objDefaultFormat.formatCellValue(cellValue,objFormulaEvaluator));
						cellValue=row.getCell(12);
						objFormulaEvaluator.evaluate(cellValue);
						md.setSPECIFICATION7(objDefaultFormat.formatCellValue(cellValue,objFormulaEvaluator));
						cellValue=row.getCell(13);
						objFormulaEvaluator.evaluate(cellValue);
						md.setSPECIFICATION8(objDefaultFormat.formatCellValue(cellValue,objFormulaEvaluator));
						cellValue=row.getCell(14);
						objFormulaEvaluator.evaluate(cellValue);
						md.setSPECIFICATION9(objDefaultFormat.formatCellValue(cellValue,objFormulaEvaluator));
						cellValue=row.getCell(15);
						objFormulaEvaluator.evaluate(cellValue);
						md.setSPECIFICATION10(objDefaultFormat.formatCellValue(cellValue,objFormulaEvaluator));
						cellValue=row.getCell(16);
						objFormulaEvaluator.evaluate(cellValue);
						md.setSPECIFICATION11(objDefaultFormat.formatCellValue(cellValue,objFormulaEvaluator));
						cellValue=row.getCell(17);
						objFormulaEvaluator.evaluate(cellValue);
						md.setSPECIFICATION12(objDefaultFormat.formatCellValue(cellValue,objFormulaEvaluator));
						
						cellValue=row.getCell(18);
						objFormulaEvaluator.evaluate(cellValue);
						md.setDISPLAY(objDefaultFormat.formatCellValue(cellValue,objFormulaEvaluator));
						cellValue=row.getCell(19);
						objFormulaEvaluator.evaluate(cellValue);
						md.setAVAILABLE_COLORS(objDefaultFormat.formatCellValue(cellValue,objFormulaEvaluator));
//						System.out.println("PaintMaterials :: "+md);
						
						InputStream i1s =context.getResourceAsStream("/images/ServiceImage.png");
						md.setIMAGE(i1s);
						
					    al.add(md);
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					count++;
				}
				
				}
			rows++;
//			System.out.println("Row :: "+rows);
			}
			
			//item.write(f);
			//upload to database
			al=new ProductsService().addBulkPaintsSpecs(al);
			}
			}
			
			}

			}catch(Exception e){
				e.printStackTrace();
			}
		request.setAttribute("paintsDetails", al);
		}	
		getServletContext().getRequestDispatcher("/AUploadedBProducts.jsp").forward(request, response);		
	}
	
	private File checkExist(String fileName,String filePath,String uid) {
		//File f = new File(saveFile+"/"+fileName);
		
		File f = new File(filePath+fileName);
		if(f.exists()){
			f.delete();
			if(fileName.endsWith(".xls"))
			{
			fileName=uid+".xls";
			}
			else
				if(fileName.endsWith(".xlsx"))
				{
				fileName=uid+".xlsx";
				}	
			f = new File(filePath+fileName);
		/*StringBuffer sb = new StringBuffer(fileName);
		sb.insert(sb.lastIndexOf("."),"-"+new Date().getTime());
		f = new File(saveFile+"/"+sb.toString());*/
		}
		return f;
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
