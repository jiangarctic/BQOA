package com.jwd.bqoa.service.officeHandle;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;

import com.jacob.activeX.ActiveXComponent;
import com.jacob.com.Dispatch;
import com.jacob.com.Variant;

import freemarker.template.Configuration;
import freemarker.template.Template;

public class TestWord {
private Configuration configuration = null;
public TestWord(){
	configuration  =new Configuration();
	configuration.setDefaultEncoding("UTF-8");
}

public static void main(String[] args) throws DocumentException{
	TestWord tw = new TestWord();
	//word2xml();
	tw.createWord();
	 System.out.println("---------------------word文件已生成!");
}

public void createWord() throws DocumentException{
	Map<String , Object> dataMap  = new HashMap<String , Object>();
	getData(dataMap);
	configuration .setClassForTemplateLoading(this.getClass(), "/wordTemplate");
	Template t = null;
	try{
		t = configuration.getTemplate("flswcl.ftl");
		
	}catch(IOException e){
		e.printStackTrace();
	}
	
	File outFile = new File("E:/wordGen/Word123"+".doc");
	Writer out = null;
	try{
		out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(outFile)));
	}catch(FileNotFoundException e){
		e.printStackTrace();
	}
	try{
		t.process(dataMap, out);
	}catch(Exception e){
		e.printStackTrace();
	}finally{
		try{
			out.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
}

private void getData(Map<String, Object> dataMap) throws DocumentException {  
	SAXReader reader = new SAXReader();
	Document document = reader.read(new File("E:/addones.xml"));
	Element rootEle = document.getRootElement();
	Element ele1 = rootEle.element("body");
	Element sect = ele1.element("sect");
	
    dataMap.put("content", sect.asXML());  

}  

public static void word2xml(){
	try{
		ActiveXComponent app = new ActiveXComponent("Word.Application");
		String inFile = "E:/addones.doc";
		app.setProperty("Visible", new Variant(false));
		Dispatch docs = app.getProperty("Documents").toDispatch();
		Dispatch doc = Dispatch.invoke(docs, "open", Dispatch.Method, new Object[] {inFile, new Variant(false), new Variant(true)} , new int[1]).toDispatch();
		Dispatch.call(doc , "SaveAs" , "E:/addones.xml" , 11);
		Dispatch.call(doc, "Close" , false);
		app.invoke("Quit" , 0);
		System.out.println("SUCCESS");
	}catch(Exception e){
		e.printStackTrace();
	}
}
}
