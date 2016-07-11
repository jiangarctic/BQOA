package com.jwd.bqoa.service.officeHandle;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.springframework.stereotype.Service;

import com.jacob.activeX.ActiveXComponent;
import com.jacob.com.Dispatch;
import com.jacob.com.Variant;
import com.jwd.bqoa.util.DateUtil;
import com.jwd.bqoa.util.PageData;

import freemarker.template.Configuration;
import freemarker.template.Template;
@Service("generateFlswclWordService")
public class GenerateFlswclWordService {
	private Configuration configuration = null;
	public GenerateFlswclWordService(){
		configuration  =new Configuration();
		configuration.setDefaultEncoding("UTF-8");
	}
	public List<String> genFlswclWord(Map<String , String> info , PageData pd){
		List<String> res = new ArrayList<String>();
		String suffixUrl = info.get("suffixFileUrl");
		try{
			if(!suffixUrl.equals("")){
				String xmlUrl = word2xml(info.get("suffixFileUrl"));
				res = createWord(xmlUrl , info.get("contextPath") , info.get("creator") , info.get("reportNum") , pd);
				File file = new File(suffixUrl);
				File file1 = new File(xmlUrl);
				file.delete();
				file1.delete();
				return res;
			}else{
				res = createWord("" , info.get("contextPath") , info.get("creator") , info.get("reportNum") , pd);
				return res;	
			}
			
		}catch(Exception e){
			return null;
		}
		
		
	}


	private List<String> createWord(String xmlUrl , String contextPath , String creator , String reportNum , PageData pd) throws DocumentException{
		Map<String , Object> dataMap  = new HashMap<String , Object>();
		List<String> res = new ArrayList<String>();
		getData(dataMap , xmlUrl , pd);
		configuration .setClassForTemplateLoading(this.getClass(), "/wordTemplate");
		Template t = null;
		try{
			if(xmlUrl.equals("")){
				t = configuration.getTemplate("flswcl_nosuffix.ftl");
			}else{
				t = configuration.getTemplate("flswcl.ftl");
			}
			
			
		}catch(IOException e){
			e.printStackTrace();
		}
		String genFolder = contextPath+"flsw/"+creator;
		File uploadDir = new File(genFolder);
		if(!uploadDir.exists()){
			uploadDir.mkdirs();
		}
		String timeStamp = DateUtil.getTime1();
		File outFile = new File(genFolder+"/"+reportNum+"_"+creator+"_"+timeStamp+".doc");
		
		res.add(genFolder+"/"+reportNum+"_"+creator+"_"+timeStamp+".doc");
		res.add(reportNum+"_"+creator+"_"+timeStamp+".doc");
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
		return res;
	}

	private void getData(Map<String, Object> dataMap , String xmlUrl , PageData pd) throws DocumentException {
		if(!xmlUrl.equals("")){
			SAXReader reader = new SAXReader();
			Document document = reader.read(new File(xmlUrl));
			Element rootEle = document.getRootElement();
			Element ele1 = rootEle.element("body");
			Element sect = ele1.element("sect");
			dataMap.put("content", sect.asXML());  
		}else{
			dataMap.put("content", "");  
		}

		String[] flswnr = pd.getString("reportBrief").split("\n");
		String[] wjcl =pd.getString("givenFiles").split("\n");
		String[] chuliyijian = pd.getString("suggestions").split("\n");
		String[] jgwj = pd.getString("resultFileName").split("\n");
		for(int i = 0 ; i < 6 ; i++){
			if(i<chuliyijian.length){
				dataMap.put("chuliyijian"+i , chuliyijian[i]);
			}else{
				dataMap.put("chuliyijian"+i , "");
			}
		}
		for(int i = 0 ; i < 4 ; i++){
			if(i<flswnr.length){
				dataMap.put("flswgs"+i , flswnr[i]);
			}else{
				dataMap.put("flswgs"+i , "");
			}
		}
		for(int i = 0 ; i <3 ; i++){
			if(i<wjcl.length){
				dataMap.put("wenjiancailiao"+i , wjcl[i]);
			}else{
				dataMap.put("wenjiancailiao"+i , "");
			}
		}
		for(int i = 0 ; i < 2 ; i++){
			if(i<jgwj.length){
				dataMap.put("jieguowenjian"+i , jgwj[i]);
			}else{
				dataMap.put("jieguowenjian"+i , "");
			}
		}
		
		
	    
	    dataMap.put("clientName", pd.getString("clientName"));
	    dataMap.put("reportNum", pd.getString("reportNum"));
	    dataMap.put("inquireTime", pd.getString("inquireTime"));
	    dataMap.put("inquireType", pd.getString("inquireType"));
	    dataMap.put("zixunren", pd.getString("inquireer"));
	    dataMap.put("lianxifangshi", pd.getString("inquireerPhone"));
	    dataMap.put("dianziyouxiang", pd.getString("inquireerEmail"));
	    dataMap.put("gzry", pd.getString("worker"));
	    dataMap.put("gzsj", pd.getString("workTime"));
	    dataMap.put("lxdh", pd.getString("workerPhone"));
	    dataMap.put("shry", pd.getString("approver"));
	    dataMap.put("yejiaoNum", pd.getString("reportNum"));
	}  

	public  String word2xml(String url){
		String descUrl = "";
		try{
			ActiveXComponent app = new ActiveXComponent("Word.Application");
			String inFile = url;
			String folderUrl  = url.substring(0 , url.lastIndexOf("/")+1);
			System.out.println("folderUrl="+folderUrl);
			String fileName = url.substring(url.lastIndexOf("/")+1);
			System.out.println("fileName="+fileName);
			String absFileName = fileName.substring(0, fileName.lastIndexOf("."));
			System.out.println("abs="+absFileName);
			app.setProperty("Visible", new Variant(false));
			Dispatch docs = app.getProperty("Documents").toDispatch();
			descUrl = folderUrl+absFileName+".xml";
			Dispatch doc = Dispatch.invoke(docs, "open", Dispatch.Method, new Object[] {inFile, new Variant(false), new Variant(true)} , new int[1]).toDispatch();
			Dispatch.call(doc , "SaveAs" , descUrl , 11);
			Dispatch.call(doc, "Close" , false);
			app.invoke("Quit" , 0);
		}catch(Exception e){
			e.printStackTrace();
		}
		return descUrl;
	}
}
