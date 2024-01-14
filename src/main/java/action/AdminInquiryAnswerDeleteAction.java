package action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.InquiryDAO;
import vo.InquiryVO;

public class AdminInquiryAnswerDeleteAction implements SistAction {

	@Override
	public String pro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int i_id = Integer.parseInt(request.getParameter("i_id"));
		InquiryDAO dao = new InquiryDAO();
		InquiryVO i = dao.inquiryAnswerDelete(i_id);
		String viewPage = "inquiry.jsp";
		if (i == null) {
			viewPage = "detailInquiry.jsp";
		}
		
		request.setAttribute("vo", i);
		
		return viewPage;
	}

}
