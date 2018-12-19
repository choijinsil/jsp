package com.mysql.jdbc.Driver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * 클래스에 대한 설명을 여기에 쓴다.
 * 
 * @author 	js
 * @since 	2018. 12. 19.
 * @version 1.0
 * @see <pre>
 *  == 개정이력(Modification Information) ==
 *   
 *   수정일			수정자				수정내용
 *  ---------------------------------------------------------------------------------
 *   2018. 12. 19.		js				최초생성
 * 
 * </pre>
 */

public class DBUtil {
	public static Connection getMySQLConnection(){
		
		Connection conn= null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");	//객체화
			//String url="jdbc:mysql://localhost:3306/login?useUnicode=true&characterEncoding=UTF-8";
			String url="jdbc:mysql://localhost:3306/login";
			String user="root";
			String password="0000";
			conn=DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			System.out.println("MYSQL 드라이버가 없습니다.<br/>");
		}catch (SQLException e) {
			System.out.println("사용자 계정 또는 비밀 번호가 일치하지 않습니다.<br/>");
		}
		return conn;
	}
	
	public static void close(Connection conn){
		try{
			if(conn!=null){
				conn.close();}
			}catch (Exception e) {
				e.printStackTrace();
			}
	}
	
	public static void close(Statement stmt){
		try{
			if(stmt!=null){
				stmt.close();}
			}catch (Exception e) {
				e.printStackTrace();
			}
	}
	
	public static void close(PreparedStatement pstmt){
		try{
			if(pstmt!=null){
				pstmt.close();}
			}catch (Exception e) {
				e.printStackTrace();
			}
	}
	
	public static void close(ResultSet rs){
		try{
			if(rs!=null){
				rs.close();}
			}catch (Exception e) {
				e.printStackTrace();
			}
	}
}
	
