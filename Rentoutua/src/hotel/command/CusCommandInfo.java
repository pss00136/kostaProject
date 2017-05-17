package hotel.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hotel.model.Customer;
import hotel.session.CustomerRepository;

public class CusCommandInfo implements Command{
	private String next;

	public CusCommandInfo( String _next ){
		next = _next;
	}
	
	CustomerRepository repo = new CustomerRepository();
	public String execute( HttpServletRequest request, HttpServletResponse response ) throws CommandException{
		HttpSession session = request.getSession();
		Customer cus = (Customer)session.getAttribute("id");
		String email = cus.getCuEmail();
		Customer customer = new Customer();
		customer = repo.selectCustomerByInfo(email);
		
		System.out.println("info : " + email);
		   
		request.setAttribute("info",customer);
		
		return next;
	}
}
