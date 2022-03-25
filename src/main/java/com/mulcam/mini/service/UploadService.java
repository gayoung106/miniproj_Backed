package com.mulcam.mini.service;

import java.util.List;

import com.mulcam.mini.dto.Upload;

public interface UploadService {
	void insertUpload(Upload upload) throws Exception;
//	List<Upload> allUploadInfo(Upload upload) throws Exception;
//	String[] queryByID(String id)throws Exception;
	List<Upload> allUploadInfo(Upload upload) throws Exception;


}
