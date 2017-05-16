package hotel.command;

import java.util.Enumeration;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import java.io.*;
import java.sql.*;

import hotel.model.Eventinfo;
import hotel.session.EventinfoRepository;

public class EventCommandInput implements Command{
	private String next;
	
	public EventCommandInput(String _next) {
		next = _next;
	}

	EventinfoRepository repo = new EventinfoRepository();
	
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		Eventinfo evt = new Eventinfo();
		
		// 파일이 저장될 서버의 경로. 되도록이면 getRealPath를 이용하자.
		// String savePath = "D:/Projects/workspace/projectName/WebContent/folderName";
		String savePath = request.getServletContext().getRealPath("upload");
		String dbPath = "/Rentoutua/upload";
//		String savePath = "C:\\Users\\kosta\\workspace6\\Rentoutua\\WebContent\\upload";
		System.out.println(savePath);
		// 파일 크기 15MB로 제한
		int sizeLimit = 1024*1024*10;
		 
		//  ↓ request 객체,               ↓ 저장될 서버 경로,       ↓ 파일 최대 크기,    ↓ 인코딩 방식,       ↓ 같은 이름의 파일명 방지 처리
		// (HttpServletRequest request, String saveDirectory, int maxPostSize, String encoding, FileRenamePolicy policy)
		// 아래와 같이 MultipartRequest를 생성만 해주면 파일이 업로드 된다.(파일 자체의 업로드 완료)
		MultipartRequest multi;
		try {
			request.setCharacterEncoding("utf-8");
			multi = new MultipartRequest(request, savePath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
			
			// MultipartRequest로 전송받은 데이터를 불러온다.
			// enctype을 "multipart/form-data"로 선언하고 submit한 데이터들은 request객체가 아닌 MultipartRequest객체로 불러와야 한다.

			 
			// 전송받은 데이터가 파일일 경우 getFilesystemName()으로 파일 이름을 받아올 수 있다.
			String imgFileName = multi.getFilesystemName("imageName");
			String thumbFileName = multi.getFilesystemName("thumbName");
			 
			// 업로드한 파일의 전체 경로를 DB에 저장하기 위함
			String ImgFullPath = dbPath + "/" + imgFileName; 
			String thumbFullPath = dbPath + "/" + thumbFileName;
			System.out.println(ImgFullPath);
			System.out.println(thumbFullPath);
			
			evt.setEvTitle(multi.getParameter("title"));
			evt.setEvContents(multi.getParameter("content"));
			evt.setImageName(imgFileName);
			evt.setImagePath(ImgFullPath);
			evt.setThumbName(thumbFileName);
			evt.setThumbPath(thumbFullPath);
			
			int result = repo.insertEventinfo(evt);
			request.setAttribute("result", result);
			
		} catch ( Exception e) {
			e.printStackTrace();
		}

//		cus.setCuEmail(request.getParameter("cuEmail"));
//		cus.setCuPass(request.getParameter("cuPass"));
//		cus.setCuBirthday(request.getParameter("cuBirthday"));
//		cus.setCuPhone(request.getParameter("cuPhone"));
//		cus.setCuTel(request.getParameter("cuTel"));
//		cus.setCuKname(request.getParameter("cuKname"));
//		cus.setCuFirstname(request.getParameter("cuFirstname"));
//		cus.setCuLastname(request.getParameter("cuLastname"));
		
		return next;
	}

}
