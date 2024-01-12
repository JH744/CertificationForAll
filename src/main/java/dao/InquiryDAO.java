package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import db.ConnectionProvider;

public class InquiryDAO {

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
