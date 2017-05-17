package hotel.control;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
  
import hotel.command.CusCommandInput;
import hotel.command.CusCommandList;
import hotel.command.CusCommandLoginCheck;
import hotel.command.CusCommandLogout;
import hotel.command.CusCommandNull;
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
		System.out.println("command connect");
		commandMap = new HashMap();
		//null?? db?��갔다?��
		//customer control
//		commandMap.put("main-page",	new CommandNull("main.jsp") );
		commandMap.put("index-page", new CusCommandNull("index.jsp") );
		commandMap.put("login-do", new CusCommandLoginCheck("index.jsp") );
		commandMap.put("logout-do", new CusCommandLogout("index.jsp") );
//		// ?��머�??�� 추�??���?		
//		commandMap.put("input-form", new CommandNull("insertMessage.jsp") );
		commandMap.put("cusinsert-form", new CusCommandNull("SignUp.jsp"));
		commandMap.put("cusinsert-do", new CusCommandInput("SignUpSave.jsp"));
		commandMap.put("cusmypage-form", new CusCommandNull("mypageMember.jsp"));
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
			//?��문자�? toLowerCase()
			if( commandMap.containsKey( cmdKey.toLowerCase() ) ){
				cmd = (Command)commandMap.get( cmdKey.toLowerCase());
			}else{
				throw new CommandException("�??��?�� 명령?���? 존재?���? ?��?��");
			}
//			System.out.println(cmd);
			nextPage = cmd.execute( request, response );
//			System.out.println(nextPage);

		}catch( CommandException e ){
			request.setAttribute("javax.servlet.jsp.jspException", e );
			nextPage = error;
			System.out.println("?���? : " + e.getMessage() );
		}
		
		if(nextPage != null){
		RequestDispatcher reqDp = getServletContext().getRequestDispatcher( jspDir + nextPage );
		reqDp.forward( request, response );
		}
	}

}
