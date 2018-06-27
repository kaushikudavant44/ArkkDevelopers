package com.bionische.arkkdevelopers.common;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class VpsImageUpload {
	
	/*public static final String doctorProfile = "doctorProfile\\";
	public static final String patientProfile = "patientProfile\\";
	public static final String labImages = "labImages\\";
	*/
	//public static final String report="reports/";
	public static final String document="/usr/local/tomcat7/webapps/bionWebApi/reports/";
	public static final String employeeImages="/usr/local/tomcat7/webapps/bioWebApi/images/patient/";
	
	
	
	
	
	
	public void saveUploadedFiles(List<MultipartFile> files,int imageType, String imageName) throws IOException {

		for (MultipartFile file : files) {

			if (file.isEmpty()) {

				continue;

			}
			Path path =null;
			byte[] bytes = file.getBytes();
			if(imageType==1) {
			  
			path = Paths.get(employeeImages + imageName);
			
			}
			
				
			Files.write(path, bytes);
		}
	}

}
