package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import db.ConnectionProvider;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

import db.ConnectionProvider;
import vo.InquiryVO;

public class InquiryDAO {
	// 문의 복수 삭제
	public int inquiryAllDelete(String[] arr) {
		int re = -1;
		String sql = "delete from inquiry where i_id in (";

		for (int i = 0; i < arr.length; i++) {
			sql += Integer.parseInt(arr[i]);
			if (i < arr.length - 1) {
				sql += ", ";
			}
		}

		sql += ")";
		System.out.println(sql);
		try {
			Connection conn = ConnectionProvider.getConnection();
			Statement stmt = conn.createStatement();
			re = stmt.executeUpdate(sql);

			ConnectionProvider.close(conn, stmt);

		} catch (Exception e) {
			System.out.println("체크 qna 삭제 " + e.getMessage());
		}

		return re;
	}

	// 문의답변 삭제
	public int inquiryAnswerDelete(int i_id) {
		int re = -1;
		String sql = "update inquiry set " + "i_answer=? ," + "i_answerDate=null, " + "i_state=? " + "where i_id=?";

		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, null);
			pstmt.setString(2, "N");
			pstmt.setInt(3, i_id);

			re = pstmt.executeUpdate();

			ConnectionProvider.close(conn, pstmt);
		} catch (Exception e) {
			System.out.println("문의 상세 " + e.getMessage());
		}

		return re;
	}

	// 문의목록
	public ArrayList<InquiryVO> inquiryList() {
		ArrayList<InquiryVO> list = new ArrayList<InquiryVO>();
		String sql = "select * from inquiry";

		try {
			Connection conn = ConnectionProvider.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				list.add(new InquiryVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getDate(5),
						rs.getDate(6), rs.getString(7), rs.getString(8)));
			}

			ConnectionProvider.close(conn, stmt, rs);
		} catch (Exception e) {
			System.out.println("문의 목록 " + e.getMessage());
		}

		return list;
	}

	// 문의 답변
	public int inquiryAnswer(int i_id, String i_answer) {
		String sql = "update inquiry set " + "i_answer=? ," + "i_answerDate=sysdate, " + "i_state=? " + "where i_id=?";
		int re = -1;
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, i_answer);
			pstmt.setString(2, "Y");
			pstmt.setInt(3, i_id);

			re = pstmt.executeUpdate();

			ConnectionProvider.close(conn, pstmt);
		} catch (Exception e) {
			System.out.println("문의 상세 " + e.getMessage());
		}

		return re;
	}

	// 문의 상세
	public InquiryVO inquiryDetail(int i_id) {
		InquiryVO vo = new InquiryVO();
		String sql = "select * from inquiry where i_id = ?";


		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, i_id);	

			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				vo.setI_id(i_id);
				vo.setI_title(rs.getString(2));
				vo.setI_content(rs.getString(3));
				vo.setI_answer(rs.getString(4));
				vo.setI_answerDate(rs.getDate(5));
				vo.setI_inquiryDate(rs.getDate(6));
				vo.setI_state(rs.getString(7));
				vo.setU_id(rs.getString(8));
			}

			ConnectionProvider.close(conn, pstmt, rs);
		} catch (Exception e) {
			System.out.println("문의 상세 " + e.getMessage());
		}

		return vo;
	}

	// 문의 삭제
	public int inquiryDelete(int i_id) {
		int re = -1;
		String sql = "delete from inquiry where i_id = ?";

		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, i_id);

			re = pstmt.executeUpdate();

			ConnectionProvider.close(conn, pstmt);
		} catch (Exception e) {
			System.out.println("문의 삭제 " + e.getMessage());
		}
		return re;
	}
}
