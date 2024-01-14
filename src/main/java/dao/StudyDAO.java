package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

import db.ConnectionProvider;
import vo.StudyVO;

public class StudyDAO {
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
						rs.getString(6), rs.getInt(7)));
			}

			ConnectionProvider.close(conn, stmt, rs);
		} catch (Exception e) {
			System.out.println("스터디 목록 " + e.getMessage());
		}

		return list;
	}
}
