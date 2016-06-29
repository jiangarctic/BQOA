package com.jwd.bqoa.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;



public class FileUtil {
	public static void transferFile(String targetUrl , String destUrl , boolean deleteOld){
		try{
			File file = new File(targetUrl);
			FileInputStream fis = new FileInputStream(file);
			FileOutputStream fos = new FileOutputStream(destUrl);
			byte[] buffer =new byte[1024];
			int i =0;
			while((i=fis.read(buffer))!=-1){
				fos.write(buffer, 0, i);
			}
			if(deleteOld==true){
				file.delete();
			}
			fis.close();
			fos.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}
}
