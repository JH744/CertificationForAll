package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ExamDAO;
import vo.ExamVO;

public class HomepageAction implements SistAction {

	@Override
	public String pro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String viewPage = "homepage.jsp";
		
		ExamDAO dao = new ExamDAO();

		request.setAttribute("bestList", dao.bestExamList());
		request.setAttribute("list", dao.listYoutube());
		return viewPage;
	}

}
