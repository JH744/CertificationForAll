package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;

public class LoginOKAction implements SistAction {

	@Override
	public String pro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String viewPage="LoginOK.jsp";
		UserDAO dao = new UserDAO();
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		String u_id=dao.login(id, pwd);
		if(u_id==null) {
			viewPage="login.jsp";
			System.out.println("로그인실패");
		}
		
		HttpSession session = request.getSession();
		session.setAttribute("id", u_id);
		
		
		return viewPage;
		
		
	}

}
