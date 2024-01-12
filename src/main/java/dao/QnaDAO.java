package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import db.ConnectionProvider;

public class QnaDAO {
	
	public int qnaInsert() {
		int re = -1;
		
		
		return re;
	}
	
	public int qnaDelete(int q_id) {
		int re = -1;
		String sql = "delete from qna where qna = ?";
		
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, q_id);
			
			re = pstmt.executeUpdate();
			
			ConnectionProvider.close(conn, pstmt);
			
		} catch (Exception e) {
			System.out.println("qna 삭제 " + e.getMessage());
		}
		
		return re;
	}
}
