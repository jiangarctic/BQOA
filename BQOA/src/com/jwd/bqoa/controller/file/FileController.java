package com.jwd.bqoa.controller.file;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.jwd.bqoa.util.Const;
@Controller
public class FileController {
	@RequestMapping("/uploadFile")
	public void upload(@RequestParam("file") CommonsMultipartFile file , HttpSession session , HttpServletResponse resp) throws IllegalStateException, IOException{
		System.out.println(file.getOriginalFilename());
		String suffix = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
		System.out.println(suffix);
		if( suffix.equals(".doc") || suffix.equals(".docx")){
			session.setAttribute("file", file);
			resp.setContentType("text/html;charset=UTF-8");
			//File uploadDir = new File(session.getServletContext().getRealPath("")+"/upload/");
			File uploadDir = new File(Const.UPLOAD_DIR+"/upload/");
			if(!uploadDir.exists()){
				uploadDir.mkdirs();
			}
			String fileName = file.getOriginalFilename().subSequence(0, file.getOriginalFilename().lastIndexOf("."))
					+"_"+System.currentTimeMillis() + file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
			//String localPath = session.getServletContext().getRealPath("")+"/upload/"+fileName;
			String localPath = Const.UPLOAD_DIR+"/upload/"+fileName;
			resp.setContentType("text/html;charset=UTF-8");
			Writer writer = resp.getWriter();
			try{
				file.transferTo(new File(localPath));
				writer.write(file.getOriginalFilename()+","+localPath);
				writer.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}else{
			resp.setContentType("text/html;charset=UTF-8");
			Writer writer = resp.getWriter();
			try{
				writer.write("typeerror");
				writer.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	}
	
	@RequestMapping(value="/uploadProcess")
	public void process(HttpSession session , HttpServletResponse response){
		System.out.println("process get:" + session.getId());
		// 上传进度百分比
		long processPercent = 0;
		CommonsMultipartFile file = (CommonsMultipartFile) session
				.getAttribute("file");
		if (file == null) {
			return;
		}
		long totalFileSize = file.getSize();
		long readedFileSize = file.getFileItem().getSize();

		System.out.println("totalFileSize:" + totalFileSize
				+ ",readedFileSize:" + readedFileSize);

		if (totalFileSize != 0) {
			processPercent = Math.round(readedFileSize / totalFileSize) * 100;
		}

		response.setContentType("text/html;charset=UTF-8");
		PrintWriter writer;
		try {
			writer = response.getWriter();
			writer.print(processPercent);
			writer.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="/deleteUploadedFile")
	@ResponseBody
	public Map deleteFile(@RequestParam("fileUrl") String fileUrl){
		Map<String , String> result = new HashMap<String , String>();
		try{
			File file = new File(fileUrl);
			if(file!= null){
				file.delete();
				result.put("msg", "success");
			}
		}catch(Exception e){
			result.put("msg", "删除文件发生错误");
		}
		return result;
	}
	
	@RequestMapping(value="/downloadFile")
	public void downloadFile(@RequestParam("url") String url ,@RequestParam("oriName") String oriName , HttpServletResponse response) throws UnsupportedEncodingException{
		response.setContentType("multipart/form-data");
		response.setHeader("Content-Disposition", "attachment;fileName="+new String(oriName.getBytes("gb2312"), "ISO8859-1" ));
		try{
			InputStream is = new FileInputStream(new File(url));
			OutputStream os = response.getOutputStream();
			byte[] b = new byte[2048];
			int length;
			while((length=is.read(b))>0){
				os.write(b , 0 , length);
			}
			os.close();
			is.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
