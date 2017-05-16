package hotel.control;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hotel.command.Command;
import hotel.command.CommandException;
import hotel.command.EventCommandInput;
import hotel.command.EventCommandList;
import hotel.command.EventCommandNull;
import hotel.command.EventCommandView;

/**
 * Servlet implementation class EventinfoControl
 */
public class EventinfoControl extends HttpServlet {
	private HashMap commandMap;
	private String	jspDir = "/main_content/";
	private String  error = "error.jsp";
          

    public EventinfoControl() {
        super();
        initCommand();
    }
    
	private void initCommand(){
		System.out.println("이벤트컨트롤 실행");
		commandMap = new HashMap();
		commandMap.put("eventinfo-form", new EventCommandNull("SpecialOfferInput.jsp"));
		commandMap.put("eventinfo-input", new EventCommandInput("SpecialInputProc.jsp"));
		commandMap.put("eventinfo-list", new EventCommandList("special_list.jsp"));
		commandMap.put("eventinfo-view", new EventCommandView("SpecialView.jsp"));
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
			//?�뜝�룞�삕�눧紐꾩쁽�뜝占�? toLowerCase()
			if( commandMap.containsKey( cmdKey.toLowerCase() ) ){
				cmd = (Command)commandMap.get( cmdKey.toLowerCase());
			}else{
				throw new CommandException("�뜝占�??�뜝�룞�삕?�뜝�룞�삕 筌뤿굝議�?�뜝�룞�삕�뜝占�? 鈺곕똻�삺?�뜝�룞�삕�뜝占�? ?�뜝�룞�삕?�뜝�룞�삕");
			}
//			System.out.println(cmd);
			nextPage = cmd.execute( request , response);
//			System.out.println(nextPage);

		}catch( CommandException e ){
			request.setAttribute("javax.servlet.jsp.jspException", e );
			nextPage = error;
			System.out.println("?�뜝�룞�삕�뜝占�? : " + e.getMessage() );
		}

		RequestDispatcher reqDp = getServletContext().getRequestDispatcher( jspDir + nextPage );
		reqDp.forward( request, response );
		
	}

}
