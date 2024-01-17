	package dao;

	import java.sql.Connection;
	import java.sql.PreparedStatement;
	import java.sql.ResultSet;
	import java.sql.Statement;
	import java.util.ArrayList;

import javax.print.DocFlavor.STRING;

import db.ConnectionProvider;

	import vo.InquiryVO;
import vo.QnaVO;

	public class InquiryDAO {

	   public int pageSIZE =10;    //한 화면에 보여줄 레코드수
	   public int totalRecord =0;  // 전체 레코드의 수
	   public int totalPage =0;    // 전체 페이지의 수 
	   
	   //문의상세
	   public InquiryVO inquiryDetail(int i_id){
			
		   InquiryVO vo = null;
			
			String sql = "select * from inquiry where i_id = ?";
			
			try {
				Connection conn = ConnectionProvider.getConnection();
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, i_id);
				ResultSet rs = pstmt.executeQuery();
				if(rs.next()) {
					vo = new InquiryVO(
		                     rs.getInt(1), 
		                     rs.getString(2), 
		                     rs.getString(3),
		                     rs.getString(4), 
		                     rs.getDate(5), 
		                     rs.getDate(6), 
		                     rs.getString(7), 
		                     rs.getString(8));
				}
				ConnectionProvider.close(conn, pstmt, rs);			
			}catch (Exception e) {
				System.out.println("예외발생:"+e.getMessage());
			}
			return vo;
		}
	   
	   
	   public int writeInquiry(String I_TITLE,String I_CONTENT,String U_ID) {
		      int cnt=0;
		      String sql = "insert into inquiry(I_TITLE,I_CONTENT,I_ANSWER,I_ANSWERDATE,"
		      		+ "I_INQUIRYDATE,I_STATE,U_ID) values(?,?,'null',sysdate,sysdate,'N',?)  ";
		      System.out.println(sql);
		      try {
		         Connection conn = ConnectionProvider.getConnection();
		         PreparedStatement stmt = conn.prepareStatement(sql);
		         stmt.setString(1, I_TITLE);
		         stmt.setString(2, I_CONTENT);
		         stmt.setString(3, U_ID);
		         cnt = stmt.executeUpdate();
		         ConnectionProvider.close(conn, stmt);
		      } catch (Exception e) {
		         System.out.println("예외발생:"+e.getMessage());
		      }
		      return cnt;
		   }
	   
	   
	   // 전체레코드수를 반환하는 메소드 //
	   public int getTotalRecord() {
	      int cnt=0;
	      String sql = "select count(*) from inquiry ";
	      
	      try {
	         Connection conn = ConnectionProvider.getConnection();
	         Statement stmt = conn.createStatement();
	         ResultSet rs = stmt.executeQuery(sql);
	         if(rs.next()) {
	            cnt =rs.getInt(1);
	         }
	         ConnectionProvider.close(conn, stmt);
	      } catch (Exception e) {
	         System.out.println("예외발생:"+e.getMessage());
	      }
	      return cnt;
	   }
	   
	   
	   // 문의글을 불러오는 매소드 // 
	      public ArrayList<InquiryVO> InquiryList(int pageNUM){ 
	         ArrayList<InquiryVO> list = new ArrayList<InquiryVO>();
	         
	         totalRecord = getTotalRecord();
	         totalPage = (int)Math.ceil(totalRecord / (double)pageSIZE);
	         int start = (pageNUM-1)*pageSIZE+1;
	         int end = start+pageSIZE-1;
	         
	         if(end > totalRecord) {
	            end = totalRecord;
	         }
	         
	         
	         String sql ="SELECT  i_id,i_title,i_content,i_answer,i_answerdate,i_inquirydate,i_state,u_id FROM \r\n"
	         		+ "(SELECT rownum n, I_ID, I_TITLE, I_CONTENT, I_ANSWER, I_ANSWERDATE, I_INQUIRYDATE, I_STATE, U_ID FROM (SELECT * FROM inquiry ORDER BY i_id))"
	         		+ " WHERE n BETWEEN ? AND ? ";
	            
	         try {
	            Connection conn = ConnectionProvider.getConnection();
	            PreparedStatement pstmt = conn.prepareStatement(sql);
	            
	            pstmt.setInt(1, start);
	            pstmt.setInt(2, end);
	            ResultSet rs = pstmt.executeQuery();
	            while(rs.next()) {
	               list.add(new InquiryVO(
	                     rs.getInt(1), 
	                     rs.getString(2), 
	                     rs.getString(3),
	                     rs.getString(4), 
	                     rs.getDate(5), 
	                     rs.getDate(6), 
	                     rs.getString(7), 
	                     rs.getString(8)));
	            }
	            ConnectionProvider.close(conn, pstmt, rs);
	         } catch (Exception e) {
	            System.out.println("예외발생:"+e.getMessage());
	         }
	         return list;
	      }
	      
	      
	      // 삭제 //
	      public int deleteMyInquire(String i_id) {
	         System.out.println("deletedao 작동");
	         int re = - 1;
	         String sql = "delete inquiry where i_id=?";
	         try {
	            Connection conn = ConnectionProvider.getConnection();
	            PreparedStatement pstmt = conn.prepareStatement(sql);
	            pstmt.setString(1, i_id);
	            re = pstmt.executeUpdate();
	            ConnectionProvider.close(conn, pstmt);
	         }catch (Exception e) {
	            System.out.println("예외발생:"+e.getMessage());
	         }
	         return re;      
	      }
	   
	   
	
	   
	   
	}

