package hotel.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hotel.session.EventinfoRepository;

public class EventCommandList implements Command{
	String next;
	public EventCommandList(String _next){
		next = _next;
	}
	
	EventinfoRepository repo = new EventinfoRepository();
	
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		request.setAttribute("eventList", repo.selectEventinfo());
		return next;
	}

}
