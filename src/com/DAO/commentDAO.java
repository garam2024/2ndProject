package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.VO.boardVO;
import com.VO.commentVO;

public class commentDAO {

	Connection conn=null;
	PreparedStatement pst=null;
	ResultSet rs = null;
	
	public void getConn(){
		
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			
			String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
			String user = "hr";
			String password = "hr";
			conn = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
				
	}
	
	public void close() {
	
		
		if(rs!=null) {
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(pst!=null) {
			try {
				pst.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(conn!=null) {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		}
		
	   public void updateComment(String content, String nick, String title) {
		      
		      
		      try {
		        
		        getConn();

		              
		             String sql = "insert into secondcolor_comment values(comment_num.nextval,?,sysdate,?, ?)";
		             PreparedStatement psmt = conn.prepareStatement(sql);
		          
		             psmt.setString(1, content);
		             psmt.setString(2, nick);
		             psmt.setString(3, title);
		             
		             psmt.executeUpdate();
		                      
		                       
		                      } catch (Exception e) {
		                         e.printStackTrace();
		                      }finally{
		                    	  close();
		                      }
		      
		   }
	
	
	   public ArrayList<commentVO> showcomment(String title) {
			ArrayList<commentVO> arr = new ArrayList<commentVO>();
			
			try {
				  
		    	getConn();
		     
		         
		         String sql = "select * from secondcolor_comment where title=? order by num";
		         PreparedStatement psmt = conn.prepareStatement(sql);
		         psmt.setString(1, title);
		     
		        ResultSet rs = psmt.executeQuery();
		        
		        while(rs.next()) {
		        	String comment_num = rs.getNString(1);
					String comment_content = rs.getNString(2);
					String comment_boarddate = rs.getNString(3);
					String comment_nick = rs.getNString(4);
					String comment_title = rs.getNString(5);
					
					commentVO vo = new commentVO(comment_num, comment_content, comment_boarddate, comment_nick, comment_title);
					arr.add(vo);
		        }
		      
		       
		      } catch (Exception e) {
		         e.printStackTrace();
		      }finally {
		    	  close();
		      }return arr;}
	
	
	   public void deletecomment(String content) {
		   
		try {
			getConn();
			
			String sql = "delete from secondcolor_comment where num=?";
			  PreparedStatement psmt = conn.prepareStatement(sql);
		         psmt.setString(1, content);
		     
		        int cnt = psmt.executeUpdate(); 
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		   
		   
	   }
	   
	   
	   
	
}
