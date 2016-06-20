package com.jwd.bqoa.service.officeHandle;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.InputStream;
import java.io.Writer;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.converter.WordToFoConverter;

public class xmlTest 
{
	public static void testWordToFo() throws Exception { 
	     InputStream is = new FileInputStream("D:\\test.doc");  
	      HWPFDocument wordDocument = new HWPFDocument(is);  
	      WordToFoConverter converter = new WordToFoConverter(DocumentBuilderFactory.newInstance().newDocumentBuilder().newDocument());  
	      //对HWPFDocument进行转换  
	      converter.processDocument(wordDocument);  
	        Writer writer = new FileWriter(new File("D:\\converter.xml"));  
	       Transformer transformer = TransformerFactory.newInstance().newTransformer();  
	       transformer.setOutputProperty( OutputKeys.ENCODING, "utf-8" );  
	       //是否添加空格  
	        transformer.setOutputProperty( OutputKeys.INDENT, "yes" );  
	//     transformer.setOutputProperty( OutputKeys.METHOD, "html" );  
	       transformer.transform(  
	                  new DOMSource(converter.getDocument() ),  
	                  new StreamResult( writer ) );  

}
	
	public static void main(String[] args) throws Exception{
		testWordToFo();
	}
}
