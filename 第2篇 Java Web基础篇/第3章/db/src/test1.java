import java.sql.*;
public class test1 {
	public static void main(String[] args) {
		       String user = "root";
		        String password = "";
		       String url = "jdbc:mysql://localhost:3306/mydb";
		       String driver = "com.mysql.jdbc.Driver";
		       String tableName = "studinfo";
		       String sqlstr;
		       Connection con = null;
		        Statement stmt = null;
		        ResultSet rs = null;
		       try{
		           Class.forName(driver);
		           con = DriverManager.getConnection(url, user, password);
		          stmt = con.createStatement();
		          
		          sqlstr = "insert into "+tableName+" values ('1111','honey',21)";
		           stmt.executeUpdate(sqlstr);
		          
		         sqlstr = "select * from "+tableName;
		           rs = stmt.executeQuery(sqlstr);
		           
		          ResultSetMetaData rsmd = rs.getMetaData();
		          int j = 0;
		          j = rsmd.getColumnCount();
		           for(int k = 0; k<j; k++)
		          {
		             System.out.print(rsmd.getColumnName(k+1));
		               System.out.print("\t");
		          }
		         System.out.println();
		           while(rs.next())
		           {
		             for(int i=0;i<j;i++)
		              {
		                 System.out.print(rs.getString(i+1));
		                 System.out.print("\t");
		               }
		              System.out.println();
		          }
		       }
		      catch(ClassNotFoundException e1)
		     {
		         System.out.println("数据库驱动不存在！");
		           System.out.println(e1.toString());
		       }
		      catch(SQLException e2)
		      {
	            System.out.println("数据库存在异常！");
	             System.out.println(e2.toString());
	         }
	         finally
	        {
	             try
	             {
	                 if(rs != null) rs.close();
	                 if(stmt != null) stmt.close();
	                if(con != null) con.close();
	            }
	             catch(SQLException e)
	            {
	                System.out.println(e.toString());
	             }            
	         }
	   }
}
