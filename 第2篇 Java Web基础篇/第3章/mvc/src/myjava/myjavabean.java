package myjava;
import java.sql.*;

public class myjavabean {
	Connection conn;
	 Statement stmt;
	 public myjavabean(){
		  try{
		   Class.forName("com.mysql.jdbc.Driver");
		   conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mvc_user","root","");
		   stmt=conn.createStatement();		   
		  }
		  catch(Exception e)
		  {		   
		   e.printStackTrace();
		  }
		 }
	 public String login(String name, String password){
		   String message="abc";
		   try{
		    String sql1="select count(0) from user_info where user_name='"+name+"'";
		    ResultSet rs1=stmt.executeQuery(sql1);
		    if(rs1.next()){
		     int userCount=rs1.getInt(1);
		     if(0==userCount){
		      message="不存在该用户";
		      return message;
		     }
		     String sql2="select count(0) from user_info where user_name='"+name+"'and password='"+password+"'";
		     ResultSet rs2=stmt.executeQuery(sql2);
		     if(rs2.next()){
		      int trueUserCount=rs2.getInt(1);
		      if(0==trueUserCount){
		       message="密码错误";
		       return message;
		      }
		      message="成功!";
		     }		     
		    }
		   }catch(Exception e)
		   {
		    e.printStackTrace();
		   }
		   return message;		   
		  }
}
