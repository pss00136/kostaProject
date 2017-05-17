package hotel.control;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
  
import hotel.command.ResCommandNull;
import hotel.command.Command;
import hotel.command.CommandException;
import hotel.command.CusCommandInfo;
import hotel.command.ResCommandInput;
import hotel.command.ResCommandList;

/**
 * Servlet implementation class GuestControl
 */
public class ReservationControl extends HttpServlet {
	
	private HashMap commandMap;
	private String	jspDir = "/main_content/";
	private String  error = "error.jsp";
	

    public ReservationControl() {
        super();       
		initCommand();
	}

	private void initCommand(){
		System.out.println("Res command connect");
		commandMap = new HashMap();
		//customer control 
		commandMap.put("ressel-form", new ResCommandList("reservationSelect.jsp"));
		commandMap.put("resInput-form", new CusCommandInfo("reservationInput.jsp"));
		commandMap.put("resInput-do", new ResCommandInput("ReservationComplete.jsp"));
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
	

	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String nextPage = "";
		String cmdKey	= request.getParameter("cmd");
		if( cmdKey == null ){
			cmdKey = "main-page";
		}

		
		Command cmd = null;
		
		
		try{
			//?��문자�? toLowerCase()
			if( commandMap.containsKey( cmdKey.toLowerCase() ) ){
				cmd = (Command)commandMap.get( cmdKey.toLowerCase());
			}else{
				throw new CommandException("명령어가 존재하지 않습니다");
			}
//			System.out.println(cmd);
			nextPage = cmd.execute( request, response );
//			System.out.println(nextPage);

		}catch( CommandException e ){
			request.setAttribute("javax.servlet.jsp.jspException", e );
			nextPage = error;
			System.out.println("에러발생 : " + e.getMessage() );
		}
		
		if(nextPage != null){
		RequestDispatcher reqDp = getServletContext().getRequestDispatcher( jspDir + nextPage );
		reqDp.forward( request, response );
		}
	}

}
