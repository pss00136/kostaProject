package hotel.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hotel.command.CommandException;
import hotel.model.Customer;
import hotel.model.Payment;
import hotel.model.Reservation;
import hotel.session.ReservationRepository;

public class ResCommandInput implements Command{

	private String next;

	public ResCommandInput( String _next ){
		next = _next;
	}
	
	ReservationRepository repo = new ReservationRepository();
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws CommandException {
			Reservation res = new Reservation();
			res.setReCheckin(request.getParameter("reCheckin"));
			res.setReCheckout(request.getParameter("reCheckout"));
			res.setReAdult(Integer.parseInt(request.getParameter("reAdult")));
			res.setReChild(Integer.parseInt(request.getParameter("reChild")));
			res.setReMeal(request.getParameter("reMeal"));
			res.setAccNum(Integer.parseInt(request.getParameter("accNum")));
			res.setCuEmail(request.getParameter("cuEmail"));
			res.setBrNum(request.getParameter("brNum"));
			
			
			int resultRes = repo.insertRes(res);
			
			Payment pay = new Payment();
			String month = request.getParameter("payCardMonth");
			String year = request.getParameter("payCardYear");
			String payDate = year+"/"+month;
			
			pay.setReNum(resultRes);
			pay.setPayCardnum(request.getParameter("payCardnum"));
			pay.setPayDate(payDate);
			pay.setPayTotal(Integer.parseInt(request.getParameter("payTotal")));
			pay.setPayType(request.getParameter("payType"));
			
			int result = repo.insertPay(pay);
			
			request.setAttribute("result", result);
			
		return next;
	}
}
