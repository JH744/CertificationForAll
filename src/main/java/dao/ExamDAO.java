package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import db.ConnectionProvider;

public class ExamDAO {
	
	//대분류코드 목록 리스트 출력 메소드
	public ArrayList<String> mdobligfldnmList(){
		ArrayList<String> list = new ArrayList<String>();
		String sql = "select distinct mdobligfldnm from exam where mdobligfldnm is not null";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt= conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				list.add(rs.getString(1));
			}
		ConnectionProvider.close(conn, pstmt, rs);	
		}
		
		catch(Exception e) {
			System.out.println("목록 출력 실패 : " + e.getMessage());
		}
		return list;
	}
}
