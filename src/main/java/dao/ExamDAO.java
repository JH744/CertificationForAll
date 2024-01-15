package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import db.ConnectionProvider;
import vo.ExamVO;
import java.util.ArrayList;

import db.ConnectionProvider;

public class ExamDAO {
	// 시험 상세
	public ExamVO examDetail(int e_id) {
		ExamVO e = new ExamVO();
		String sql = "select * from exam where e_id=?";

		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, e_id);
			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				e.setE_id(e_id);
				e.setQualgbcd(rs.getString(2));
				e.setQualgbnm(rs.getString(3));
				e.setSeriescd(rs.getInt(4));
				e.setSeriesnm(rs.getString(5));
				e.setJmcd(rs.getInt(6));
				e.setJmfldnm(rs.getString(7));
				e.setY_id(rs.getInt(8));
				e.setObligfldcd(rs.getInt(9));
				e.setObligfldnm(rs.getString(10));
				e.setMdobligfldcd(rs.getInt(11));
				e.setMdobligfldnmm(rs.getString(12));
				e.setDetail(rs.getString(13));
				e.setE_count(rs.getInt(14));
			}

		} catch (Exception e2) {
			System.out.println("시험 상세 " + e2.getMessage());
		}

		return e;
	}

	// 시험 전체 목록
	public ArrayList<ExamVO> allExamList() {
		ArrayList<ExamVO> list = new ArrayList<ExamVO>();
		String sql = "select * from exam";
		try {
			Connection conn = ConnectionProvider.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				list.add(new ExamVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5),
						rs.getInt(6), rs.getString(7), rs.getInt(8), rs.getInt(9), rs.getString(10), rs.getInt(11),
						rs.getString(12), rs.getString(13), rs.getInt(14)));
			}
			ConnectionProvider.close(conn, stmt, rs);

		} catch (Exception e) {
			System.out.println("시험 목록 : " + e.getMessage());
		}
		return list;
	}

	// 대분류코드 목록 리스트 출력 메소드
	public ArrayList<String> mdobligfldnmList() {
		ArrayList<String> list = new ArrayList<String>();
		String sql = "select distinct mdobligfldnm from exam where mdobligfldnm is not null";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				list.add(rs.getString(1));
			}
			ConnectionProvider.close(conn, pstmt, rs);
		}

		catch (Exception e) {
			System.out.println("목록 출력 실패 : " + e.getMessage());

		}
		return list;
	}
}
