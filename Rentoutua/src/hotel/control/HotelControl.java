package hotel.control;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.guest.command.Command;
import mvc.guest.command.CommandDelete;
import mvc.guest.command.CommandException;
import mvc.guest.command.CommandInput;
import mvc.guest.command.CommandList;
import mvc.guest.command.CommandNull;

/**
 * Servlet implementation class GuestControl
 */
public class HotelControl extends HttpServlet {
	
	private HashMap commandMap;
	private String	jspDir = "/05_mvc_class/2_mvcGuest/";
	private String  error = "error.jsp";
	

    public HotelControl() {
        super();       
		initCommand();
	}

	private void initCommand(){
		commandMap = new HashMap();
		//null?? db?κ°λ€?΄
		commandMap.put("main-page",	new CommandNull("main.jsp") );
		commandMap.put("list-page",	new CommandList("listMessage.jsp") );
		// ?λ¨Έμ?? μΆκ??κΈ?		
		commandMap.put("input-form", new CommandNull("insertMessage.jsp") );
		commandMap.put("insert-do", new CommandInput("saveMessage.jsp") );
		commandMap.put("delete-form", new CommandNull("deleteMessage.jsp"));
		commandMap.put("delete-do", new CommandDelete("deleteConfirm.jsp"));
		
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
			//?λ¬Έμλ§? toLowerCase()
			if( commandMap.containsKey( cmdKey.toLowerCase() ) ){
				cmd = (Command)commandMap.get( cmdKey.toLowerCase());
			}else{
				throw new CommandException("μ§?? ?  λͺλ Ή?΄κ°? μ‘΄μ¬?μ§? ??");
			}
			//System.out.println(cmd);
			nextPage = cmd.execute( request );
			//System.out.println(nextPage);

		}catch( CommandException e ){
			request.setAttribute("javax.servlet.jsp.jspException", e );
			nextPage = error;
			System.out.println("?€λ₯? : " + e.getMessage() );
		}

		RequestDispatcher reqDp = getServletContext().getRequestDispatcher( jspDir + nextPage );
		reqDp.forward( request, response );
		
	}

}
