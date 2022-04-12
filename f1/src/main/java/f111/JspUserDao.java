package f111;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class JspUserDao {
	public static boolean C(String name,String password)
	{
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		try {
			 conn=DbConnection.getConnection();
			 stmt=conn.createStatement();
		      String sql="select * from jspuser where username='"+name+"' and password='"+password+"'";
		      rs=stmt.executeQuery(sql);
		      int a=0;
		      while(rs.next())
		      {
		    	  a=rs.getInt(1);
		      }
		      if(a==0) return false;
		      return true;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
}
