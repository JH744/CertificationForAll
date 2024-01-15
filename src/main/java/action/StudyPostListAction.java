package action;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.StudyDAO;
import vo.StudyVO;

public class StudyPostListAction implements SistAction {

	@Override
	public String pro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		StudyDAO sdao = new StudyDAO();
		ArrayList<StudyVO> studyList = sdao.studyList();
		request.setAttribute("studyList", studyList);
		System.out.println(studyList.get(0).getS_state());
		
		return "studyList.jsp";
	}

}
