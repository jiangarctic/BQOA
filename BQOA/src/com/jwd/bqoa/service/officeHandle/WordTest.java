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

import freemarker.template.Configuration;  
import freemarker.template.Template;  
import freemarker.template.TemplateException;  
  
public class WordTest {  
      
    private Configuration configuration = null;  
      
    public WordTest(){  
        configuration = new Configuration();         
        configuration.setDefaultEncoding("UTF-8");   //定义字符格式    
    }  
      
    public static void main(String[] args) {  
        WordTest test = new WordTest();  
        test.createWord();  
        System.out.println("---------------------word文件已生成!");
    }  
      
    public void createWord(){  
        Map<String,Object> dataMap=new HashMap<String,Object>();  
        getData(dataMap);  //获取数据
        configuration.setClassForTemplateLoading(this.getClass(), "e:/");  //FTL文件所存在的位置  
        Template t=null;  
        try {  
            t = configuration.getTemplate("test.ftl"); //文件名  
        } catch (IOException e) {  
            e.printStackTrace();  
        }  
        File outFile = new File("E:/Word"+Math.random()*10000+".doc");  //下载到本地路径
        Writer out = null;  
        try {  
            out = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(outFile)));  
        } catch (FileNotFoundException e1) {  
            e1.printStackTrace();  
        }  
           
        try {  
            t.process(dataMap, out);  
        } catch (TemplateException e) {  
            e.printStackTrace();  
        } catch (IOException e) {  
            e.printStackTrace();  
        }finally
        {
        	try {
				out.close();    //释放流
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }
    }  
   //封装word内容（ftl里面标识的内容一定要给值）
    private void getData(Map<String, Object> dataMap) {  
        dataMap.put("title", "这是标题");  
        dataMap.put("nian", "2012");  
        dataMap.put("yue", "2");  
        dataMap.put("ri", "13");  
        dataMap.put("dianhua", "13020265912");  
        dataMap.put("zuoyeneirong", "打10局LOL");  
        dataMap.put("bianzhi", "LOL第一小组"); 
        dataMap.put("shenheren", "马化腾");  
//        dataMap.put("xuhao", "1");  
//        dataMap.put("neirong", "LOL崛起之战");  

        //遍历内容  
        List<Map<String,Object>> list = new ArrayList<Map<String,Object>>();  
        for (int i = 0; i < 10; i++) {  
            Map<String,Object> map = new HashMap<String,Object>();  
            map.put("xuhao", i+":2");  
            map.put("neirong", "内容2"+i);  
            list.add(map);  
        }  

          
        dataMap.put("list", list);  
    }  
}  
