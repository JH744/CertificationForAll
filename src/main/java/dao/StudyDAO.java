package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import db.ConnectionProvider;
import vo.StudyVO;

public class StudyDAO {
	public ArrayList<StudyVO> studyList() {
		ArrayList<StudyVO> studyList = new ArrayList<StudyVO>();
		String sql = "select * from study";
		try {
			Connection conn = ConnectionProvider.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				studyList.add(new StudyVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getBoolean(5),
						rs.getString(6), rs.getString(7), rs.getInt(8)));
			}
			ConnectionProvider.close(conn, stmt, rs);
		} catch (Exception e) {
			System.out.println("studyList 예외발생 : " + e.getMessage());
		}
		return studyList;
	}
	
	public int studyPostWrite(String s_title,String s_content, String id, String exam_name) {
		int re = 0;
		String sql = "INSERT INTO study(S_TITLE,S_CONTENT,S_DATE,S_STATE,U_ID,EXAM_NAME,S_COUNT)"
				+ " values(?,?,sysdate,'N',?,?,1)";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, s_title);
			pstmt.setString(2, s_content);
			pstmt.setString(3, id);
			pstmt.setString(4, exam_name);
			re = pstmt.executeUpdate();
			
			ConnectionProvider.close(conn, pstmt);
		} catch (Exception e) {
			System.out.println("studyPostWrite 예외발생 : " + e.getMessage());
		}
		return re;
	}
}
