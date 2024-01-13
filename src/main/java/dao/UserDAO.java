package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import db.ConnectionProvider;
import vo.UserVO;

public class UserDAO {

	//회원가입 메소드
	public int joinUser(UserVO vo) {
		int re = -1;
		String sql = "insert into users(u_id,u_pw,u_name,u_birth,u_phone,u_addr,u_interest) values(?,?,?,?,?,?,?)";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getU_id());
			pstmt.setString(2, vo.getU_pw());
			pstmt.setString(3, vo.getU_name());
			pstmt.setString(4, vo.getU_birth());
			pstmt.setString(5, vo.getU_phone());
			pstmt.setString(6, vo.getU_addr());
			pstmt.setString(7, vo.getU_interest());
			
			re = pstmt.executeUpdate();
			
			ConnectionProvider.close(conn, pstmt);
			
			
			
		}catch(Exception e) {
			System.out.println("회원가입 오류 : " + e.getMessage());
		}
		
		
		return re;						
	}
	//로그인메소드
	public String login(String id, String pwd) {
		
		String sql = "select * from users where u_id=? and u_pw=?";
		String u_id = null;
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				u_id = rs.getString(1);
			}
			ConnectionProvider.close(conn, pstmt, rs);
					
					
			
		}catch(Exception e) {
			System.out.println("로그인 실패 : "+e.getMessage());
		}
		return u_id;
	}
	//아이디찾기 메소드
	public String idFind(String id, String phone) {
		String sql = "select u_id from users where u_name=? and u_phone=?";
		String u_id = null;
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, phone);
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				u_id = rs.getString(1);
			}
			ConnectionProvider.close(conn, pstmt, rs);
		}catch(Exception e) {
			System.out.println("아이디찾기 오류 : " + e.getMessage());
		}
		return u_id;
				
	}
	//비밀번호 찾기 메소드
	public String pwFind(String id, String name) {
		String sql ="select u_pw from users where u_id=? and u_name=?";
		String u_pw=null;
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt =conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				u_pw=rs.getString(1);
			}
			ConnectionProvider.close(conn, pstmt, rs);
		}catch(Exception e) {
			System.out.println("pwFind 오류 : " + e.getMessage());
		}
		return u_pw;
				
	}
	
}
