package hotel.command;

import javax.servlet.http.HttpServletRequest;

import hotel.command.CommandException;
import hotel.model.Customer;
import hotel.session.CustomerRepository;

public class CusCommandInput implements Command{

	private String next;

	public CusCommandInput( String _next ){
		next = _next;
	}
	
	CustomerRepository repo = new CustomerRepository();
	
	@Override
	public String execute(HttpServletRequest request) throws CommandException {

			Customer cus = new Customer();
			cus.setCuEmail(request.getParameter("cuEmail"));
			cus.setCuPass(request.getParameter("cuPass"));
			cus.setCuBirthday(request.getParameter("cuBirthday"));
			cus.setCuPhone(request.getParameter("cuPhone"));
			cus.setCuTel(request.getParameter("cuTel"));
			cus.setCuKname(request.getParameter("cuKname"));
			cus.setCuFirstname(request.getParameter("cuFirstname"));
			cus.setCuLastname(request.getParameter("cuLastname"));
			
			
			
			int result = repo.insertCustomer(cus);
			request.setAttribute("result", result);
			
		return next;
	}
}
