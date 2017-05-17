package hotel.command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import hotel.model.Accommodation;
import hotel.session.ReservationRepository;

public class ResCommandList implements Command{
	private String next;

	public ResCommandList( String _next ){
		next = _next;
	}
	
	ReservationRepository repo = new ReservationRepository();
	public String execute( HttpServletRequest request, HttpServletResponse response ) throws CommandException{
		String brNum = request.getParameter("rev_branch");
		int revAdult = Integer.parseInt(request.getParameter("rev_people"));
		int revChild =  Integer.parseInt(request.getParameter("rev_child"));
		int revPeople = revAdult + revChild;
			List<Accommodation> alist = repo.selectReservationList(brNum,revPeople);
			String brName = repo.selectReservationByName(brNum);
			request.setAttribute("acc", alist);
			request.setAttribute("brName", brName);
			request.setAttribute("revAdult", revAdult);
			request.setAttribute("revChild", revChild);
			request.setAttribute("brNum", brNum);
			
		return next;
	}
}
