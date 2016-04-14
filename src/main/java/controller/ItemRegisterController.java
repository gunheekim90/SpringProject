package controller;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.apache.commons.net.ftp.FTP;
import org.apache.commons.net.ftp.FTPClient;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import model.AuthInfo;
import model.ItemRegisterRequest;
import model.ItemRegisterService;

@Controller
public class ItemRegisterController {
	
	private String server = "cosmetictoworld.cafe24.com" ;
	private int port = 21;
	private String user = "cosmetictoworld";
	private String pass = "qkffhrmfla12";
	
	private ItemRegisterService itemRegisterService;
	private String imgUrl = "http://cosmetictoworld.cafe24.com/";

	public void setItemRegisterService(
			ItemRegisterService itemRegisterService) {
		this.itemRegisterService = itemRegisterService;
	}
	
	@RequestMapping(value ="/complete_upload", method = RequestMethod.POST)
	public String handleItemRegist(ItemRegisterRequest itemregReq, Errors errors,
			HttpSession session,Model model) throws Exception {
		//new ItemRegisterRequestValidator().validate(itemregReq, errors);
		
		FTPClient ftpClient = new FTPClient();
		
		//MultipartFile 객체를 커맨드 객체에서 꺼내와 생성
		MultipartFile file = itemregReq.getFile();
	
		if (file == null){
			return "upload/upload_content";
		}
		else
		{
			try{
				//데이터베이스에 저장
				String fileName = file.getOriginalFilename();
				itemregReq.setItemImage(imgUrl + fileName);
				AuthInfo authInfo = (AuthInfo) session.getAttribute("authInfo");
				itemregReq.setItemUser(authInfo.getName());
				itemregReq.setItemUserEmail(authInfo.getEmail());
				itemRegisterService.regist(itemregReq); 
				
				//FTP 서버에 저장
				File localFile = File.createTempFile(fileName, ".jpg");
				
				file.transferTo(localFile);
				
				ftpClient.connect(server, port);
				ftpClient.login(user, pass);
				ftpClient.enterLocalPassiveMode();
				ftpClient.setFileType(FTP.BINARY_FILE_TYPE);
				String firstRemoteFile=fileName;
				InputStream inputStream = new FileInputStream(localFile);
				
				boolean done = ftpClient.storeFile(firstRemoteFile, inputStream);
				
				inputStream.close();
				ftpClient.disconnect();
				
			}
			catch(Exception e)
			{
				e.printStackTrace();
				return "redirect:upload/upload_content";
			}
			return "upload/complete_upload";
		}
	}
}
