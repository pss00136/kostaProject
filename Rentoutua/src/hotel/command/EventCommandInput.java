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
		
		// ������ ����� ������ ���. �ǵ����̸� getRealPath�� �̿�����.
		// String savePath = "D:/Projects/workspace/projectName/WebContent/folderName";
		String savePath = request.getServletContext().getRealPath("upload");
		String dbPath = "/Rentoutua/upload";
//		String savePath = "C:\\Users\\kosta\\workspace6\\Rentoutua\\WebContent\\upload";
		System.out.println(savePath);
		// ���� ũ�� 15MB�� ����
		int sizeLimit = 1024*1024*10;
		 
		//  �� request ��ü,               �� ����� ���� ���,       �� ���� �ִ� ũ��,    �� ���ڵ� ���,       �� ���� �̸��� ���ϸ� ���� ó��
		// (HttpServletRequest request, String saveDirectory, int maxPostSize, String encoding, FileRenamePolicy policy)
		// �Ʒ��� ���� MultipartRequest�� ������ ���ָ� ������ ���ε� �ȴ�.(���� ��ü�� ���ε� �Ϸ�)
		MultipartRequest multi;
		try {
			request.setCharacterEncoding("utf-8");
			multi = new MultipartRequest(request, savePath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
			
			// MultipartRequest�� ���۹��� �����͸� �ҷ��´�.
			// enctype�� "multipart/form-data"�� �����ϰ� submit�� �����͵��� request��ü�� �ƴ� MultipartRequest��ü�� �ҷ��;� �Ѵ�.

			 
			// ���۹��� �����Ͱ� ������ ��� getFilesystemName()���� ���� �̸��� �޾ƿ� �� �ִ�.
			String imgFileName = multi.getFilesystemName("imageName");
			String thumbFileName = multi.getFilesystemName("thumbName");
			 
			// ���ε��� ������ ��ü ��θ� DB�� �����ϱ� ����
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
