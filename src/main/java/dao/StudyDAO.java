package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import db.ConnectionProvider;
import vo.ReplyVO;
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
	public ArrayList<StudyVO> studyList(String sort) {
		ArrayList<StudyVO> list = new ArrayList<StudyVO>();
		String sql = "SELECT S_ID, S_TITLE, S_CONTENT, s_date, S_STATE, U_ID, EXAM_NAME, S_COUNT FROM STUDY ";
		if (sort != null) {
			if (sort.equals("replyCount")) {
				sql = "SELECT * FROM STUDY s2 LEFT OUTER JOIN (SELECT s.S_ID,count(*) replyCount  FROM STUDY s , REPLY r WHERE s.S_ID = r.S_ID GROUP BY s.S_ID) count on s2.S_ID =count.s_id ORDER BY replyCount DESC NULLS LAST";
			} else {
				sql += "order by " + sort + " desc";
			}
		} else {
			sql += "ORDER BY s_date desc";
		}
		System.out.println(sql);
		try {
			Connection conn = ConnectionProvider.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);

			while (rs.next()) {
				String s_state = "모집완료";
				if (rs.getString(5).equals("N")) {
					s_state = "모집중";
				}

				ReplyDAO rdao = new ReplyDAO();
				ArrayList<ReplyVO> replyList = rdao.replyList(rs.getInt(1));

				list.add(new StudyVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDate(4), s_state,
						rs.getString(6), rs.getString(7), rs.getInt(8), replyList.size()));
			}

			ConnectionProvider.close(conn, stmt, rs);
		} catch (Exception e) {
			System.out.println("스터디 목록 " + e.getMessage());
		}

		return list;
	}

	public StudyVO studyPostDetail(int s_id) {
		StudyVO studyVO = null;
		String sql = "SELECT S_ID, S_TITLE, S_CONTENT, s_date, S_STATE, U_ID, EXAM_NAME, S_COUNT FROM STUDY where s_id="
				+ s_id;

		try {
			Connection conn = ConnectionProvider.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);

			if (rs.next()) {
				String s_state = "모집완료";
				if (rs.getString(5).equals("N")) {
					s_state = "모집중";
				}
				studyVO = new StudyVO(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDate(4), s_state,
						rs.getString(6), rs.getString(7), rs.getInt(8));
			}

			ConnectionProvider.close(conn, stmt, rs);
		} catch (Exception e) {
			System.out.println("studyPostDetail 예외발생 " + e.getMessage());
		}

		return studyVO;
	}

	// 스터디 글 작성
	public int studyPostWrite(String s_title, String s_content, String id, String exam_name) {
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

	public int studyStateChange(int s_id, String state) {
		int re = 0;
		String sql = "update study set s_state='" + state + "' where s_id=" + s_id;
		try {
			Connection conn = ConnectionProvider.getConnection();
			Statement stmt = conn.createStatement();
			re = stmt.executeUpdate(sql);
			ConnectionProvider.close(conn, stmt);
		} catch (Exception e) {
			System.out.println("studyStateChange 예외발생 : " + e.getMessage());
		}
		return re;
	}

	public int studyPostDelete(int s_id) {
		int re = 0;
		String sql = "delete study where s_id=" + s_id;
		try {
			Connection conn = ConnectionProvider.getConnection();
			Statement stmt = conn.createStatement();
			re = stmt.executeUpdate(sql);
		} catch (Exception e) {
			System.out.println("studyPostDelete 예외발생 : " + e.getMessage());
		}
		return re;
	}

	public int studyPostCountUpdate(int s_id) {
		int re = 0;
		String sql = "update study set s_count = s_count+1 where s_id=" + s_id;
		try {
			Connection conn = ConnectionProvider.getConnection();
			Statement stmt = conn.createStatement();
			re = stmt.executeUpdate(sql);
		} catch (Exception e) {
			System.out.println("studyPostCountUpdate 예외발생 : " + e.getMessage());
		}
		return re;
	}
}
