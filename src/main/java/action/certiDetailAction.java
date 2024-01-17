package action;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CertiDAO;
import vo.CertiDetailVO;
import vo.ExamVO;
import vo.PassingRateVO;

public class certiDetailAction implements SistAction {

	@Override
	public String pro(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// e_id 파라미터 가져오기
		CertiDAO certidao = new CertiDAO();
		String e_idParam = request.getParameter("e_id");
		int e_id = Integer.parseInt(e_idParam);
		

		
		if (e_idParam != null && !e_idParam.isEmpty()) {
			System.out.println("자격증 아이디 : " + e_id);

			// CertiDAO를 이용하여 ExamVO 가져오기
			CertiDetailVO exam = certidao.getExamDetail(e_id);
			CertiDetailVO youtube = certidao.getYoutube();
			ArrayList<CertiDetailVO> list = certidao.getExamDate(exam.getSeriesnm());

			request.setAttribute("CertiDetailVO", exam);
			request.setAttribute("list", list);
			request.setAttribute("youtube", youtube);
			System.out.println("youtube: "+youtube.getY_url());
			String imagePath = "../../image/" + exam.getImg();
			request.setAttribute("imagePath", imagePath);
			
			String jmfldnm = exam.getJmfldnm();
			PassingRateVO prVOP = certidao.getPassingRateP(jmfldnm);
			PassingRateVO wrVOP = certidao.getPassingRateW(jmfldnm);
			
			// prVOP이 null인 경우 기본값 설정
		    if (prVOP == null) {
		        prVOP = new PassingRateVO("0", "0", "0");
		    }

		    // wrVOP이 null인 경우 기본값 설정
		    if (wrVOP == null) {
		        wrVOP = new PassingRateVO("0", "0", "0");
		    }
			request.setAttribute("prVOP", prVOP);
			request.setAttribute("wrVOP", wrVOP);
			System.out.println(prVOP.getPassRate2020());

			// certificationDetail.jsp로 포워딩
			return "certificationDetail.jsp";
		} else {
			// e_id가 없는 경우에 대한 처리
			System.out.println("e_id가 전달되지 않았거나 유효하지 않습니다.");
			// 원하는 처리를 추가하세요.
			return "error.jsp";
		}
	}

}
