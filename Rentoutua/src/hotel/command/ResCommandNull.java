package hotel.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ResCommandNull implements Command{
	private String next;

	public ResCommandNull( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request, HttpServletResponse response ) throws CommandException{
		System.out.println("커맨드 접속");
		return next;
	}
}
