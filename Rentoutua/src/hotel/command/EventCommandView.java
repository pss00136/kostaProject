package hotel.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hotel.model.Eventinfo;
import hotel.session.EventinfoRepository;

public class EventCommandView implements Command {

	String next;
	
	public EventCommandView(String _next){
		next = _next;
	}
	
	EventinfoRepository repo = new EventinfoRepository();
	
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
		String evNum = request.getParameter("evNum");
		Eventinfo event = repo.selectEventinfoById(evNum);
		request.setAttribute("event", event);
		
		return next;
	}

}
