package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;

import db.ConnectionProvider;
import vo.ExamPlanVO;

public class ExamPlanDAO {
	// 종목별 시험일정 가져오기
	public ArrayList<ExamPlanVO> epList(String seriesnm) {
		ArrayList<ExamPlanVO> list = new ArrayList<ExamPlanVO>();
		String sql = "select * from exam_date "
				+ "where description like '%"+seriesnm+"%'";
		
		try {
			Connection conn = ConnectionProvider.getConnection();
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				list.add(new ExamPlanVO(
						rs.getInt(1),
						rs.getInt(2),
						rs.getInt(3),
						rs.getInt(4),
						rs.getString(5),
						rs.getDate(6),
						rs.getDate(7),
						rs.getDate(8),
						rs.getDate(9),
						rs.getDate(10),
						rs.getDate(11),
						rs.getDate(12),
						rs.getDate(13),
						rs.getDate(14),
						rs.getDate(15)
						));
			}
			
			ConnectionProvider.close(conn, stmt, rs);
		} catch (Exception e) {
			System.out.println("시험 일정 " + e.getMessage());
		}
		
		return list;
	}
}
