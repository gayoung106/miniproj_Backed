package com.mulcam.mini.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.mulcam.mini.dto.Upload;

@Mapper
@Repository
public interface UploadDAO {
	void insertUpload(Upload upload) throws Exception;
//	void updateUpload(Upload upload) throws Exception;

	public List<Upload> uploadList(Upload upload) throws Exception;


}
