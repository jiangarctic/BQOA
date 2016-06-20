package com.jwd.bqoa.service.officeHandle;

import com.jacob.activeX.ActiveXComponent;
import com.jacob.com.Dispatch;
import com.jacob.com.Variant;

public class exportXMLTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		word2xml();
	}
	public static void word2xml(){
		try{
			ActiveXComponent app = new ActiveXComponent("Word.Application");
			String inFile = "E:/222.doc";
			app.setProperty("Visible", new Variant(false));
			Dispatch docs = app.getProperty("Documents").toDispatch();
			Dispatch doc = Dispatch.invoke(docs, "open", Dispatch.Method, new Object[] {inFile, new Variant(false), new Variant(true)} , new int[1]).toDispatch();
			Dispatch.call(doc , "SaveAs" , "E:/222.xml" , 11);
			Dispatch.call(doc, "Close" , false);
			app.invoke("Quit" , 0);
			System.out.println("SUCCESS");
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
