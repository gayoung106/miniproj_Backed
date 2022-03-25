package com.mulcam.mini.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.mulcam.mini.dto.Upload;
import com.mulcam.mini.service.UploadService;

@Controller
public class UploadController {
	
	@Autowired
	HttpSession session;
	
	@Autowired
	UploadService uploadservice;
	
	   @Autowired
	   private ServletContext servletContext;
	   
	   @GetMapping("/upload")
	   public String fileupload() {
	      return "upload";
	   }
	   
	   @PostMapping("/upload")
	   public String fileupload(@RequestParam(value="filename") MultipartFile uploadfile, Model model) {
		   String path = null;
	       try {
	    	   Upload upload = new Upload();
			   upload.setId((String) session.getAttribute("id"));
			   upload.setFile_name(uploadfile.getOriginalFilename());
			   
			   
		       path = servletContext.getRealPath("/upload/");
		       File destFile = new File(path+uploadfile.getOriginalFilename());
	    	   uploadfile.transferTo(destFile);
	    	   uploadservice.insertUpload(upload);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	       model.addAttribute("filepath",path+uploadfile.getOriginalFilename());
	       model.addAttribute("file",uploadfile);
	       return "uploadresult";
	}
		   
	   

@GetMapping(value="/fileview/upload/{filename}")
public void fileview(@PathVariable String filename, 
		   HttpServletRequest request,HttpServletResponse response) {
	   
	   String path = servletContext.getRealPath("/upload/");
	      File uploadfile = new File(path+filename);
	      String sfilename=null;
	      FileInputStream fis = null;
	      
	      try {
	          if(request.getHeader("User-Agent").indexOf("MSIE")>-1) {
	             sfilename=URLEncoder.encode(uploadfile.getName(),"utf-8");
	          }else {
	             sfilename=new String(uploadfile.getName().getBytes("utf-8"), "ISO-8859-1");
	          }
	          response.setCharacterEncoding("utf-8");
	          response.setContentType("application/octet-stream;charset=utf-8");
	          response.setHeader("Content-Disposition", "attachment; filename=\""+sfilename+"\";");
	          OutputStream out = response.getOutputStream();
	          fis = new FileInputStream(uploadfile);
	          FileCopyUtils.copy(fis, out);
	          out.flush();
	       }catch(Exception e) {
	          e.printStackTrace();
	       }finally {
	          if(fis!=null) {
	             try {
	                fis.close();
	             }catch(Exception e) {}
	          }
	       }
	    }

}
