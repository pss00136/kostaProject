package hotel.command;

import javax.servlet.http.HttpServletRequest;

import hotel.model.Customer;
import hotel.session.CustomerRepository;
import javafx.scene.control.Alert;

public class CusCommandList implements Command{
	private String next;

	public CusCommandList( String _next ){
		next = _next;
	}
	
	CustomerRepository repo = new CustomerRepository();
	public String execute( HttpServletRequest request ) throws CommandException{
			
			String email = request.getParameter("cuEmail");
			String pass = request.getParameter("cuPass");
			
			Customer customer = new Customer();
			customer = repo.selectCustomerById(email,pass);
			
			System.out.println(customer);
		    request.setAttribute("customer", customer);

		return next;
	}
}
