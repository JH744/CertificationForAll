package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;

import db.ConnectionProvider;
import vo.ReplyVO;

public class ReplyDAO {
	// 스터디 갯수 가져오기
	public int countReply(int s_id) {
		int cnt = 0;
		String sql = "select count(*) from reply where s_id=?";
		
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, s_id);
			ResultSet rs = pstmt.executeQuery();
			
			if (rs.next()) {
				cnt = rs.getInt(1);
			}
			
			ConnectionProvider.close(conn, pstmt, rs);
			
		} catch (Exception e) {
			System.out.println("스터디에 맞는 모든 댓글 " + e.getMessage());
		}
		
		return cnt;
	}
	
	// 스터디에 맞는 모든 댓글
	public ArrayList<ReplyVO> findAllReply(int s_id) {
		ArrayList<ReplyVO> list = new ArrayList<ReplyVO>();
		String sql = "select * from reply where s_id=?";
		
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, s_id);
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next()) {
				list.add(new ReplyVO(
						rs.getInt(1),
						rs.getString(2),
						rs.getDate(3),
						rs.getInt(4),
						rs.getString(5)
						));
			}
		} catch (Exception e) {
			System.out.println("스터디에 맞는 모든 댓글 " + e.getMessage());
		} 
		
		return list;
	}
}
