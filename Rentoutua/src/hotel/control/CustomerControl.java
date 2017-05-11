package hotel.control;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import hotel.command.CusCommandInput;
import hotel.command.Command;
import hotel.command.CommandException;

/**
 * Servlet implementation class GuestControl
 */
public class CustomerControl extends HttpServlet {
	
	private HashMap commandMap;
	private String	jspDir = "/main_content/";
	private String  error = "error.jsp";
	

    public CustomerControl() {
        super();       
		initCommand();
	}

	private void initCommand(){
		System.out.println("컨트롤 접속");
		commandMap = new HashMap();
		//null?? db?븞媛붾떎?샂
		//customer control
//		commandMap.put("main-page",	new CommandNull("main.jsp") );
//		commandMap.put("list-page",	new CommandList("listMessage.jsp") );
//		// ?굹癒몄??룄 異붽??븯湲?		
//		commandMap.put("input-form", new CommandNull("insertMessage.jsp") );
		commandMap.put("cusinsert-do", new CusCommandInput("SignUpSave.jsp"));
//		commandMap.put("delete-form", new CommandNull("deleteMessage.jsp"));
//		commandMap.put("delete-do", new CommandDelete("deleteConfirm.jsp"));
		
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
			//?냼臾몄옄留? toLowerCase()
			if( commandMap.containsKey( cmdKey.toLowerCase() ) ){
				cmd = (Command)commandMap.get( cmdKey.toLowerCase());
			}else{
				throw new CommandException("吏??젙?븷 紐낅졊?뼱媛? 議댁옱?븯吏? ?븡?쓬");
			}
//			System.out.println(cmd);
			nextPage = cmd.execute( request );
//			System.out.println(nextPage);

		}catch( CommandException e ){
			request.setAttribute("javax.servlet.jsp.jspException", e );
			nextPage = error;
			System.out.println("?삤瑜? : " + e.getMessage() );
		}

		RequestDispatcher reqDp = getServletContext().getRequestDispatcher( jspDir + nextPage );
		reqDp.forward( request, response );
		
	}

}
