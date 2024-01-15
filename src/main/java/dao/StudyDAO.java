package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import db.ConnectionProvider;


import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

import db.ConnectionProvider;
import vo.StudyVO;

public class StudyDAO {
	// 스터디 디테일
	public StudyVO studyDetail(int s_id) {
		StudyVO s = new StudyVO();
		String sql = "select * from study where s_id=?";
		
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, s_id);
			ResultSet rs = pstmt.executeQuery();
			
			if (rs.next()) {
				s.setS_id(s_id);
				s.setS_title(rs.getString(2));
				s.setS_content(rs.getString(3));
				s.setS_date(rs.getDate(4));
				s.setS_state(rs.getString(5));
				s.setU_id(rs.getString(6));
				s.setExam_name(rs.getString(7));
				s.setS_count(rs.getInt(8));
			}
			
			ConnectionProvider.close(conn, pstmt, rs);
		} catch (Exception e) {
			System.out.println("스터디 상세 " + e.getMessage());
		}
		
		return s;
	}
	
	// 스터디 복수 삭제
	public int studyAllDelete(String[] arr) {
		int re = -1;
		String sql = "delete from study where s_id in (";

		for (int i = 0; i < arr.length; i++) {
			sql += Integer.parseInt(arr[i]);
			if (i < arr.length - 1) {
				sql += ", ";
			}
		}

		sql += ")";

		try {
			Connection conn = ConnectionProvider.getConnection();
			Statement stmt = conn.createStatement();
			re = stmt.executeUpdate(sql);

			ConnectionProvider.close(conn, stmt);

		} catch (Exception e) {
			System.out.println("체크 스터디 삭제 " + e.getMessage());
		}

		return re;
	}
	
	// 스터디 삭제
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

	// 스터디 목록 조회
	public ArrayList<StudyVO> studyList() {
		ArrayList<StudyVO> list = new ArrayList<StudyVO>();
		String sql = "select * from study";

		try {
			Connection conn = ConnectionProvider.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				list.add(new StudyVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDate(4), rs.getString(5),
						rs.getString(6), rs.getString(7), rs.getInt(8)));
			}

			ConnectionProvider.close(conn, stmt, rs);
		} catch (Exception e) {
			System.out.println("스터디 목록 " + e.getMessage());
		}

		return list;
	}
}
