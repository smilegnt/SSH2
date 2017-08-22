package com.yzpc.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

//数据库连接基类，包括连接数据库和关闭对象
public class BaseDao {	
	public Connection getConnection(){
		Connection conn=null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/user","root", "123456");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}	
	public void closeAll(Connection conn,PreparedStatement pstmt,ResultSet rs){
		if(rs!=null){
			try {
				rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if(pstmt!=null){
			try {
				pstmt.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		if(conn!=null){
			try {
				conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
}
