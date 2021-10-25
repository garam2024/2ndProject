package com.DAO;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import com.VO.boardVO;
import com.VO.memberVO;

public class memberDAO {
	
	// 1. connection
		// 2. close(선입후출 방식)
		// 3. 각 기능들의~? DB정보를 properties파일로 관리하는 방법 --> db정보를 properties에 저장하여 내용을 숨긴다.
		
		Connection conn=null;
		PreparedStatement pst=null;
		ResultSet rs = null;
		
		//DAO(data access object)
		//DB에 연결되는 기능들을 한 클래스 파일에 모아 구현(중복되는 최소화 / 보안)
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
		
		public int Join(String email, String pw, String nick, String tel) {
			int cnt = 0;
			
			try {
				getConn();
				
				String sql = "insert into secondcolor_client values(?,?,?,?,null)";
				pst = conn.prepareStatement(sql);
				pst.setString(1, email);
				pst.setString(2, pw);
				pst.setString(3, nick);
				pst.setString(4, tel);
				//4. sql문의 이상 유무를 판단
				
				cnt = pst.executeUpdate();
						
			} catch (Exception e) {
				e.printStackTrace(); //오류 추적해서  출력
			}finally {
				close();
			}
			
			return cnt;
			
		}

		public memberVO Login(String email, String pw) {
			
			memberVO vo = null;
						
				try {
					
					getConn();
					
					String sql = "select * from secondcolor_client where email=? and pw=?";
					pst = conn.prepareStatement(sql);
					pst.setString(1, email);
					pst.setString(2, pw);
										
					ResultSet rs = pst.executeQuery();
					
					if (rs.next()) {
						String get_email = rs.getString(1);
						String get_tel = rs.getString(3);
						String get_address = rs.getString(4);
										
						vo = new memberVO(get_email, null, get_tel, get_address);
					}
			
				} catch (Exception e) {
					e.printStackTrace();
				}finally {
					close();
				}
				
				return vo;
				
		}
		
		public ArrayList<memberVO> SelectMember() {
			ArrayList<memberVO> arr = new ArrayList<memberVO>();
						
			try {
				getConn();
				
				String sql = "select * from secondcolor_client";
				pst = conn.prepareStatement(sql);
				ResultSet rs = pst.executeQuery();
				
				while(rs.next()) {
					String board_email = rs.getNString(1);
					String board_pw = rs.getNString(2);
					String board_nick = rs.getNString(3);
					String board_tel = rs.getNString(4);
										
					memberVO vo = new memberVO(board_email, board_pw, board_nick, board_tel);
					arr.add(vo);
					
					
					
					
					
				}
				
				
			} catch (Exception e) {
				e.printStackTrace();
			
			} finally {
				
				close();
				
			}return arr;
		}

		public void deleteMember(String email) {
			try {
				getConn();
				
				String sql = "delete from secondcolor_client where email=?";
				  PreparedStatement psmt = conn.prepareStatement(sql);
			         psmt.setString(1, email);
			     
			        int cnt = psmt.executeUpdate(); 
				
				
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				close();
			}
			
		}

		public boolean idCheck(String email) {
				boolean check = true;
				try {
					getConn();

					String sql = "select * from secondcolor_client where email = ?";
					pst = conn.prepareStatement(sql);
					pst.setString(1, email);
					
					
					ResultSet rs = pst.executeQuery();
					
					if(rs.next()) {
						check = false; 
					}else {
						check = true;
					}
					
					
				} catch (Exception e) {
					e.printStackTrace();
				}finally {
					close();
				}
				return check;
			
		}
		
		 public void colorSet(String color, String email) {
			 
			  try {
					getConn();
					
					String sql = "update secondcolor_client set color=? where email=?";
					  PreparedStatement psmt = conn.prepareStatement(sql);
				         psmt.setString(1, color);
				         psmt.setString(2, email);
				         				     
				        int cnt = psmt.executeUpdate();   
					   
					   
				} catch (Exception e) {
					e.printStackTrace();
				}finally {
					close();
				}
				   
				   
			   }
			 
		 
		
		
		
	
}
