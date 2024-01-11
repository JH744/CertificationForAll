package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

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
	
}
