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
	public static final String document="/Users/Admin/git/ArkkDevelopers/ArkkDevelopers/src/main/webapp/resources/images";
	public static final String employeeImages="/Users/Admin/git/ArkkDevelopers/ArkkDevelopers/src/main/webapp/resources/images";
	
	
	
	
	
	
	public void saveUploadedFiles(List<MultipartFile> files,int imageType, String imageName) throws IOException {

		System.out.println("phortoname:"+imageName);
		
		for (MultipartFile file : files) {

			if (file.isEmpty()) {

				continue;

			}
			Path path =null;
			byte[] bytes = file.getBytes();
			if(imageType==1) {
			  
			path = Paths.get(employeeImages + imageName);
			
			}
			
			if(imageType==2) {
				  
				path = Paths.get(document + imageName);
				
				}
			
				
			Files.write(path, bytes);
		}
	}

}
