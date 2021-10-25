package com.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.VO.boardVO;



public class boardDAO {

	Connection conn=null;
	PreparedStatement pst=null;
	ResultSet rs = null;
	
	public void getConn(){
		
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 3. DB에 접근하여 id와pw를 인증받는 절차
			String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
			String user = "hr";
			String password = "hr";
			conn = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
				
	}
	
	public void close() {
		//conn,psmt,rs를 닫아줘야 한다.
		//선입후출 형태로 rs부터 닫아줘야 한다.
		
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
	
	public void updateboard(String nick, String title, String content) {
		try {
			getConn();
			
			String sql = "insert into secondcolor_board values(sequence_num.nextval,?,?,sysdate,?,0)";
			  PreparedStatement psmt = conn.prepareStatement(sql);
		         psmt.setString(1, title);
		         psmt.setString(2, content);
		         psmt.setString(3, nick);
		     
		        int cnt = psmt.executeUpdate();
		    
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
	}
	
	
	
	
	public ArrayList<boardVO> selectboard() {
		ArrayList<boardVO> arr = new ArrayList<boardVO>();
		
		try {
			  
	    	getConn();
	     
	         
	         String sql = "select * from secondcolor_board order by num DESC";
	         PreparedStatement psmt = conn.prepareStatement(sql);
	         
	     
	        ResultSet rs = psmt.executeQuery();
	        
	        while(rs.next()) {
	        	String board_num = rs.getNString(1);
				String board_title = rs.getNString(2);
				String board_content = rs.getNString(3);
				String board_date = rs.getNString(4);
				String board_nick = rs.getNString(5);
				String board_click = rs.getNString(6);
				
				boardVO vo = new boardVO(board_num, board_title, board_content, board_date, board_nick, board_click);
				arr.add(vo);
	        }
	      
	       
	      } catch (Exception e) {
	         e.printStackTrace();
	      }finally {
	    	  close();
	      }return arr;}
	
	   public boardVO showboard(String title) {
		      
		      boardVO vo = new boardVO();
		      try {
		        
		        getConn();
		              
		             String sql = "select * from secondcolor_board where title=?";
		             PreparedStatement psmt = conn.prepareStatement(sql);
		             psmt.setString(1, title);
		         
		             ResultSet rs = psmt.executeQuery();
		                    while(rs.next()) {
		                     String board_num = rs.getNString(1);
		                     String board_title = rs.getNString(2);
		                     String board_content = rs.getNString(3);
		                     String board_boarddate = rs.getNString(4);
		                     String board_nick = rs.getNString(5);
		                     String board_color = rs.getNString(6);
		         
		                     vo = new boardVO(board_num, board_title, board_content, board_boarddate, board_nick, board_color);
		         
		                        }
		                      
		                       
		                      } catch (Exception e) {
		                         e.printStackTrace();
		                      }finally{
		                    	  close();
		                      }return vo;
		      
		   }
	   
	   public void updatecontent(String title, String updatetitle, String content) {
		   
		   try {
			getConn();
			
			String sql = "update secondcolor_board set title=?, content=? where title=?";
			  PreparedStatement psmt = conn.prepareStatement(sql);
		         psmt.setString(1, updatetitle);
		         psmt.setString(2, content);
		         psmt.setString(3, title);
		     
		        int cnt = psmt.executeUpdate();   
			   
			   
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		   
		   
	   }
	
	
	   public void deleteservice(String title) {
		   try {
			getConn();
			
			String sql = "delete from secondcolor_board where title=?";
			  PreparedStatement psmt = conn.prepareStatement(sql);
		         psmt.setString(1, title);
		     
		        int cnt = psmt.executeUpdate();   
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally{
			close();
		}
		   
		   
	   }
	
	   public ArrayList<boardVO> userSelect(String nick) {
		   ArrayList<boardVO> arr = new ArrayList<boardVO>();
		   
		   try {
			getConn();
			
			String sql = "select * from secondcolor_board where nick=? order by num";
	         PreparedStatement psmt = conn.prepareStatement(sql);
	         psmt.setString(1, nick);
	     
	        ResultSet rs = psmt.executeQuery();
	        
	        while(rs.next()) {
	        	String board_num = rs.getNString(1);
				String board_title = rs.getNString(2);
				String board_content = rs.getNString(3);
				String board_date = rs.getNString(4);
				String board_nick = rs.getNString(5);
				
				boardVO vo = new boardVO(board_num, board_title, board_content, board_date, board_nick, null);
				arr.add(vo);
			
	        }
			
			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}return arr;
		   
		   
		   
	   }

	public ArrayList<boardVO> searchService(String search) {
		ArrayList<boardVO> arr = new ArrayList<boardVO>();
		String place = "%" + search + "%";
		try {
			getConn();
			
			String sql = "select * from secondcolor_board where title like ? order by num DESC";
	        PreparedStatement psmt = conn.prepareStatement(sql);
	        psmt.setString(1, place);
	     
	        ResultSet rs = psmt.executeQuery();
	        
	        while(rs.next()) {
	        	String board_num = rs.getNString(1);
				String board_title = rs.getNString(2);
				String board_content = rs.getNString(3);
				String board_date = rs.getNString(4);
				String board_nick = rs.getNString(5);
				
				boardVO vo = new boardVO(board_num, board_title, board_content, board_date, board_nick, null);
				arr.add(vo);
			
	        }
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}return arr;
		
	}
	
	public void clicknum(String title) {
				
		try {
			getConn();
			
			String sql = "update secondcolor_board set color=color+1 where title=?";
			  PreparedStatement psmt = conn.prepareStatement(sql);
		     
		         psmt.setString(1, title);
		     
		        int cnt = psmt.executeUpdate();   
			   
			   
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
		
	}
	
	
}
