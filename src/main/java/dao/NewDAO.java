package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import db.ConnectionProvider;
import vo.NewVO;

public class NewDAO {
	public static String getTitle(int i_id) {
		String msg = "";
		String sql = "select SUBSTR(i_title, 1, 5) from inquiry where i_id=?";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, i_id);
			ResultSet rs = pstmt.executeQuery();
			
			if (rs.next()) {
				msg = rs.getString(1);
			}
			
			ConnectionProvider.getConnection();
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return msg;
	}
	
	public int intsertNewInquiry(String u_id, int i_id) {
		int re = -1;
		String sql = "insert into new(n_state, n_msg, u_id, i_id, s_id) "
				+ "values(?, (select SUBSTR(i_title, 1, 5) from inquiry where i_id=?), ?, ?, null)";
		
		String msg = getTitle(i_id) + "... 문의 답변이 완료되었습니다";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, "N");
			pstmt.setInt(2, i_id);
			pstmt.setString(3, u_id);
			pstmt.setInt(4, i_id);
			
		} catch (Exception e) {
			
		}
		
		return re;
	}
	
	
	public ArrayList<NewVO> findAllNew(String u_id) {
		ArrayList<NewVO> list = new ArrayList<NewVO>();
		String sql = "select * from new where u_id=?";
		
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, sql);
			
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next()) {
				list.add(new NewVO(
						rs.getInt(1),
						rs.getString(2),
						rs.getString(3),
						rs.getString(4),
						rs.getInt(5),
						rs.getInt(6)
						));
			}
			
			
			ConnectionProvider.close(conn, pstmt, rs);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		return list;
	} 
}
