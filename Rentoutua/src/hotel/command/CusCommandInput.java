package hotel.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
			System.out.println("커맨드 접속");
			Customer cus = new Customer();
			cus.setCuEmail(request.getParameter("cuEmail"));
			cus.setCuPass(request.getParameter("cuPass"));
			cus.setCuBirthday(request.getParameter("cuBirthday"));
			cus.setCuPhone(request.getParameter("cuPhone"));
			cus.setCuTel(request.getParameter("cuTel"));
			cus.setCuKname(request.getParameter("cuKname"));
			cus.setCuFirstname(request.getParameter("cuFirstname"));
			cus.setCuLastname(request.getParameter("cuLastname"));
			System.out.println(cus.getCuEmail());
			
			
			int result = repo.insertCustomer(cus);
			request.setAttribute("result", result);
			
		return next;
	}
}
