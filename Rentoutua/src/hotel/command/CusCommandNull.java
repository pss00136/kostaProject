package hotel.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CusCommandNull implements Command{
	private String next;

	public CusCommandNull( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request, HttpServletResponse response ) throws CommandException{
		return next;
	}
}
