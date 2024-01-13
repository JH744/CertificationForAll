package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Date;

import db.ConnectionProvider;
import vo.InquiryVO;

public class InquiryDAO {
	// 문의 답변, 답변수정
	public InquiryVO inquiryAnswer(int i_id, String i_answer) {
		InquiryVO vo = new InquiryVO();
		String sql = "update inquiry set "
				+ "i_answer=? ,"
				+ "i_answerDate=sysdate, "
				+ "i_state=Y "
				+ "where i_id=?";
		
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, i_answer);
			pstmt.setInt(2, i_id);
			
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				vo.setI_id(i_id);
				vo.setI_title(rs.getString(2));
				vo.setI_answer(rs.getString(3));
				vo.setI_answerDate(rs.getDate(4));
				vo.setI_inquiryDate(rs.getDate(5));
				vo.setI_state(rs.getString(6));
				vo.setU_id(rs.getString(7));
			}
		
			ConnectionProvider.close(conn, pstmt, rs);
		} catch (Exception e) {
			System.out.println("문의 상세 " + e.getMessage());
		}
		
		return vo;
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
				vo.setI_answer(rs.getString(3));
				vo.setI_answerDate(rs.getDate(4));
				vo.setI_inquiryDate(rs.getDate(5));
				vo.setI_state(rs.getString(6));
				vo.setU_id(rs.getString(7));
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
