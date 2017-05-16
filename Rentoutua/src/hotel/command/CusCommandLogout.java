package hotel.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hotel.model.Customer;
import hotel.session.CustomerRepository;

public class CusCommandLogout implements Command{
	private String next;

	public CusCommandLogout( String _next ){
		next = _next;
	}
	
	public String execute( HttpServletRequest request, HttpServletResponse response ) throws CommandException{
			String result = "NO";
			HttpSession session = request.getSession();
			if(session != null){
				session.removeAttribute("id");
				System.out.println("세션종료");
			}
			try {
		         response.getWriter().print(result);
		         System.out.println(result);
		      } catch (IOException e) {
		         throw new CommandException();
		      }
		   
		return null;
	}
}
