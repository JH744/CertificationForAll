package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import db.ConnectionProvider;
import vo.QnaVO;

public class QnaDAO {
	
	public ArrayList<QnaVO> qnaList(){
	
	ArrayList<QnaVO> list = new ArrayList<QnaVO>();
	
	String sql = "select * from qna";
	
	try {
		Connection conn = ConnectionProvider.getConnection();
		PreparedStatement pstmt = conn.prepareStatement(sql);

		ResultSet rs = pstmt.executeQuery();
		while(rs.next()) {
			list.add(new QnaVO(rs.getInt(1), 
					rs.getString(2), 
					rs.getString(3) 
					));
			
		}			
		ConnectionProvider.close(conn, pstmt, rs);			
	}catch (Exception e) {
		System.out.println("예외발생:"+e.getMessage());
	}
	return list;
}

	public ArrayList<QnaVO> qnaList2(int q_id){
		
		ArrayList<QnaVO> list = new ArrayList<QnaVO>();
		
		String sql = "select * from qna where q_id = ?";
		
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, q_id);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				list.add(new QnaVO(rs.getInt(1), 
						rs.getString(2), 
						rs.getString(3) 
						));
				
			}			
			ConnectionProvider.close(conn, pstmt, rs);			
		}catch (Exception e) {
			System.out.println("예외발생:"+e.getMessage());
		}
		return list;
	}

    
}
