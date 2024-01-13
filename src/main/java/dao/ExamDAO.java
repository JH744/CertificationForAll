package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import db.ConnectionProvider;
import vo.ExamVO;

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
	//조회수가 높은 시험수 4개 정보 출력
	public ArrayList<ExamVO> bestExamList(){
		ArrayList<ExamVO> list = new ArrayList<ExamVO>();
		String sql = "SELECT e_id, qualgbcd, qualgbnm, seriescd, seriesnm, jmcd, jmfldnm, y_id, obligfldcd, obligfldnm, mdobligfldcd, mdobligfldnm, detail, e_count, img FROM (  SELECT rownum n, e_id, qualgbcd, qualgbnm, seriescd, seriesnm, jmcd, jmfldnm, y_id, obligfldcd, obligfldnm, mdobligfldcd, mdobligfldnm, detail, e_count, img FROM ( SELECT e_id, qualgbcd, qualgbnm, seriescd, seriesnm, jmcd, jmfldnm, y_id, obligfldcd, obligfldnm, mdobligfldcd, mdobligfldnm, detail, e_count, img FROM exam ORDER BY e_count DESC ))WHERE n <= ?";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, 4);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				list.add(new ExamVO(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getInt(4),rs.getString(5),rs.getInt(6),rs.getString(7),rs.getInt(8),rs.getInt(9),rs.getString(10),rs.getInt(11),rs.getString(12),rs.getString(13),rs.getInt(14),rs.getString(15)));
			}
			ConnectionProvider.close(conn, pstmt, rs);
					
		}catch(Exception e) {
			System.out.println("인기순 시험 출력 오류 : " + e.getMessage());
		}
		return list;
	}
	//유튜브 링크 조인해서 가져오는 메소드
	public ArrayList<HashMap<String, Object>> listYoutube(){
		ArrayList<HashMap<String, Object>> list = new ArrayList<HashMap<String,Object>>();
		String sql ="select y_url , e_id from exam e , youtube y where e.y_id=y.y_id";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				HashMap<String, Object> map = new HashMap<String, Object>();
				map.put("y_url", rs.getString(1));
				map.put("e_id", rs.getInt(2));
				list.add(map);
			}
			ConnectionProvider.close(conn, pstmt, rs);
		}catch(Exception e) {
			System.out.println("유튜브 조회 오류 : " + e.getMessage());
		}
		return list;
	}

		
	}
	

