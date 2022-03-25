package com.mulcam.mini.dto;

public class Upload {
	private String id;
	private String file_name;
	
	public Upload() {}
	
	public Upload(String id, String file_name) {
		this.id=id;
		this.file_name=file_name;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

}
