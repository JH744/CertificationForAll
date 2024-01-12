package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import db.ConnectionProvider;

public class StudyDAO {
	public int studyDelete(int s_id) {
		int re = -1;
		String sql = "delete from study where s_id = ?";
		
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, s_id);
			
			re = pstmt.executeUpdate();
			
			ConnectionProvider.close(conn, pstmt);
			
		} catch (Exception e) {
			System.out.println("스터디 삭제 " + e.getMessage());
		}
		
		return re;
	}
}
