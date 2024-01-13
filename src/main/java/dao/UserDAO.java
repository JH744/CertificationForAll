package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

import db.ConnectionProvider;
import vo.UserVO;

public class UserDAO {
	// 회원 삭제
	public int usersDelete(String id, String pw) {
		int re = -1;
		String sql = "delete from users where u_id=? and u_pw=?";
		
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			re = pstmt.executeUpdate();
			
			ConnectionProvider.close(conn, pstmt);
		} catch (Exception e) {
			System.out.println("회원 삭제 " + e.getMessage());
		}
		
		return re;
	}
	
	// 회원 상세
	public UserVO usersDetail(String id) {
		UserVO vo = new UserVO();
		String sql = "select * from users where u_id=?";
		
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			
			if (rs.next()) {
				vo.setU_id(rs.getString(1));
				vo.setU_pw(rs.getString(2));
				vo.setU_name(rs.getString(3));
				vo.setU_birth(rs.getDate(4));
				vo.setU_phone(rs.getString(5));
				vo.setU_addr(rs.getString(6));
				vo.setU_interest(rs.getString(7));
			}
			ConnectionProvider.close(conn, pstmt, rs);
		} catch (Exception e) {
			System.out.println("회원 상세 " + e.getMessage());
		}
		
		return vo;
	}
	
	// 회원 목록
	public ArrayList<UserVO> usersList() {
		ArrayList<UserVO> list = new ArrayList();
		String sql = "select * from users";
		
		try {
			Connection conn = ConnectionProvider.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				list.add(new UserVO(
						rs.getString(1),
						rs.getString(2),
						rs.getString(3),
						rs.getDate(4),
						rs.getString(5),
						rs.getString(6),
						rs.getString(7)
						));
			}
			ConnectionProvider.close(conn, stmt, rs);
		} catch (Exception e) {
			System.out.println("회원 목록 " + e.getMessage());
		}
		
		return list;
	}
}
