package hotel.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hotel.model.Customer;
import hotel.session.CustomerRepository;

public class CusCommandLoginCheck implements Command{
	private String next;

	public CusCommandLoginCheck( String _next ){
		next = _next;
	}
	
	CustomerRepository repo = new CustomerRepository();
	public String execute( HttpServletRequest request, HttpServletResponse response ) throws CommandException{
			
			String email = request.getParameter("cuEmail");
			String pass = request.getParameter("cuPass");
			
			Customer customer = new Customer();
			customer = repo.selectCustomerById(email,pass);
			
			String saveEmail = customer.getCuEmail();
			String savePass = customer.getCuPass();
			String result = "NO";
			if( ( email.equals(saveEmail) ) && ( pass.equals(savePass) ) ){
//				// #2. 세션에 "id"라는 이름에 변수 user 값을 저장
//				HttpSession session = request.getSession();
//				session.setAttribute("id", user);
//				// #1. 로그인 성공하면 바로 MainPage.jsp를 요청
//				response.sendRedirect("MainPage.jsp");
				 result = "YES";
			} else {
//
//				// #1. 로그인에 실패하면 바로 LoginForm.jsp을 요청
//				response.sendRedirect("LoginForm.jsp");
			}		
			
			try {
		         response.getWriter().print(result);
		      } catch (IOException e) {
		         throw new CommandException();
		      }
			System.out.println(customer);
		   
		    
		return null;
	}
}
