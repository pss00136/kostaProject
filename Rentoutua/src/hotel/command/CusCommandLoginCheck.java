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
			
			String email = null;
			String pass = null;
			String saveEmail = null;
			String savePass = null;
			String saveName = null;
			String saveType = null;
			String result = null;
			
			email = request.getParameter("cuEmail");
			pass = request.getParameter("cuPass");
			Customer customer = new Customer();
			customer = repo.selectCustomerById(email,pass);
			
			saveEmail = customer.getCuEmail(); 
			savePass = customer.getCuPass();
			saveName = customer.getCuKname();
			saveType = customer.getCuType();
			System.out.println(saveName);
			if(customer != null){
			
				if( ( email.equals(saveEmail) ) && ( pass.equals(savePass) ) ){
//					// #2. 세션에 "id"라는 이름에 변수 user 값을 저장
					HttpSession session = request.getSession();
					session.setAttribute("id", customer);
//					// #1. 로그인 성공하면 바로 MainPage.jsp를 요청
//					response.sendRedirect("MainPage.jsp");
					response.setContentType("text/html;charset=UTF-8");
					result = "{";
					result += "saveEmail : '"+saveEmail+"', ";
					result += "saveName : '"+saveName+"', ";
					result += "saveType : '"+saveType+"'";
					result += "}";
				} 
			}
			try {
		         response.getWriter().print(result);
		         System.out.println(result);
		      } catch (IOException e) {
		         throw new CommandException();
		      }
//			System.out.println(customer);
		   
		    
		return null;
	}
}
