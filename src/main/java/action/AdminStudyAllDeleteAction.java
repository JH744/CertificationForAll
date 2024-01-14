package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.QnaDAO;
import dao.StudyDAO;
import dao.UserDAO;

public class AdminStudyAllDeleteAction implements SistAction {

	@Override
	public String pro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] id_arr = request.getParameterValues("del_id");
		
		StudyDAO dao = new StudyDAO();
		dao.studyAllDelete(id_arr);

		return "user.jsp";
	}
}
