package com.cas.oss;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Reader;

public class LabExamAndroid {

	public static void main(String args[])
	{
		String malwarePath="D:/Lab/MalT";
		String benignPath="D:/Lab/BenT";
		
		String malwareAndroidManDest="D:/Lab/MalT/AndMal.txt";
		String benignAndroidManDest="D:/Lab/BenT/AndBen.txt";
		
		extractAPK(malwarePath);
		extractAPK(benignPath);
		
		androidManifestRead(malwarePath,malwareAndroidManDest);
		androidManifestRead(benignPath,benignAndroidManDest);
		
	}

	private static void extractAPK(String path) {
		try{
			Runtime rt = Runtime.getRuntime();
			
			File folder = new File(path);
			File[] listOfFiles = folder.listFiles();

			    for (int i = 0; i < listOfFiles.length; i++) {
			      if (listOfFiles[i].isFile()) {
			    	  String file= listOfFiles[i].getName();
				        System.out.println("File " + file);
						Process proc=rt.exec("cmd /c \" cd " + path + " && apktool d " + file +"\"");
			      } else if (listOfFiles[i].isDirectory()) {
			        System.out.println("Directory " + listOfFiles[i].getName());
			      }
			    }
				

			}catch(Exception e)
			{
				e.printStackTrace();
			}
	}
	
	private static void androidManifestRead(String path, String dest) {
		
		try{
			
			File folder = new File(path);
			File[] listOfFiles = folder.listFiles();
			BufferedWriter writer= new BufferedWriter(new FileWriter(dest));
			StringBuilder sb = new StringBuilder(); 

			    for (int i = 0; i < listOfFiles.length; i++) {
			    	if (listOfFiles[i].isDirectory()) 
			    	{
			    		System.out.println("Directory " + listOfFiles[i].getName());
			    		
						File[] listOfFiles1 = listOfFiles[i].listFiles();
						
						    for (int j = 0; j < listOfFiles1.length; j++) {

						    	if (listOfFiles1[j].isFile()) 
						    	{
						    		//System.out.println("File " + listOfFiles1[j].getName());

						    		String fileName=listOfFiles1[j].getName();
						    		if("AndroidManifest.xml".equalsIgnoreCase((fileName)))
						    		{
						    			try {
						    				Reader fileReader = new FileReader(listOfFiles1[j]); 
						    				BufferedReader bufReader = new BufferedReader(fileReader); 
						    				
						    				String line = bufReader.readLine();
						    				while( line != null){ 
						    					sb.append(line).append("\n"); 
						    					line = bufReader.readLine(); 
						    					} 
						    				
						    				//String xml2String = sb.toString();
						    				//System.out.println(xml2String);
						    				/*writer.write(xml2String);
						    				writer.close();*/
						    					
						    	        } catch (FileNotFoundException e) {
						    	            System.err.println("Unable to find the file: fileName");
						    	        } catch (IOException e) {
						    	            System.err.println("Unable to read the file: fileName");
						    	        }
						    		}
						    		
						    	}
						    }
			    	}
			    }
			    String xml2String = sb.toString();
				System.out.println(xml2String);
			    System.out.println(sb.toString());
			    writer.write(xml2String);
				writer.close();
				

			}catch(Exception e)
			{
				e.printStackTrace();
			}
	}
	
	
	
	
}
