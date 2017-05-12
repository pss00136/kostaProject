package hotel.command;

import javax.servlet.http.HttpServletRequest;

public class CusCommandNull implements Command{
	private String next;

	public CusCommandNull( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request ) throws CommandException{
		return next;
	}
}
