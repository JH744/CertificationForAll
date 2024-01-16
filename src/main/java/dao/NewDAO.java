package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import db.ConnectionProvider;

public class NewDAO {
	public int insertNewReply(int s_id) {
		int re = 0;
		String sql = "insert into new (N_STATE,N_MSG,U_ID,I_ID,S_ID) "
				+ " values('N',(SELECT s_title FROM study WHERE s_id = ?),"
				+ "(SELECT U_ID FROM study WHERE s_id = ?),NULL,?)";
		try {
			Connection conn = ConnectionProvider.getConnection();
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setInt(1, s_id);
			stmt.setInt(2, s_id);
			stmt.setInt(3, s_id);
			re = stmt.executeUpdate();
			ConnectionProvider.close(conn, stmt);
		} catch (Exception e) {
			System.out.println("insertNewReply 예외발생 : "+e.getMessage());
		}
		return re;
	}
}
