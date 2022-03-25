package com.mulcam.mini.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mulcam.mini.dao.UploadDAO;
import com.mulcam.mini.dto.Upload;

@Service
public class UploadServiceImpl implements UploadService {
	@Autowired
	UploadDAO uploadDAO;

	@Override
	public void insertUpload(Upload upload) throws Exception {
		uploadDAO.insertUpload(upload);
		
	}
	
//	@Override
//	public List<Upload> allUploadInfo(Upload upload) throws Exception {
//		// TODO Auto-generated method stub
//		return null;
//	}

//	@Override
//	public String[] queryByID(String attribute) {
//		// TODO Auto-generated method stub
//		return null;
//	}

	@Override
	public List<Upload> allUploadInfo(Upload upload) throws Exception {
		return uploadDAO.uploadList(upload);

	}


	

}
