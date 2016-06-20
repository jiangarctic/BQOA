package com.jwd.bqoa.controller.file;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
@Controller
public class FileController {
	@RequestMapping("/uploadFile")
	public void upload(@RequestParam("file") CommonsMultipartFile file , HttpSession session , HttpServletResponse resp) throws IllegalStateException, IOException{
		System.out.println(file.getOriginalFilename());
		session.setAttribute("file", file);
		resp.setContentType("text/html;charset=UTF-8");
		File uploadDir = new File(session.getServletContext().getRealPath("")+"/upload/");
		if(!uploadDir.exists()){
			uploadDir.mkdirs();
		}
		String fileName = file.getOriginalFilename().subSequence(0, file.getOriginalFilename().lastIndexOf("."))
				+"_"+System.currentTimeMillis() + file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
		String localPath = session.getServletContext().getRealPath("")+"/upload/"+fileName;
		resp.setContentType("text/html;charset=UTF-8");
		Writer writer = resp.getWriter();
		try{
			file.transferTo(new File(localPath));
			writer.write(file.getOriginalFilename()+","+fileName);
			writer.close();
		}catch(Exception e){
			e.printStackTrace();
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
}
