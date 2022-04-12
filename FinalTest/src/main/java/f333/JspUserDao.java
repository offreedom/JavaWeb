package f333;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JspUserDao {
	
	public static int k;
	public static boolean check(JspUser user)
	{
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		try {
			 conn=DbConnection.getConnection();
			 stmt=conn.createStatement();
		      rs=null;
		      String sql="select * from jspuser where username='"+user.getUsername()+"'";
			rs=stmt.executeQuery(sql);
			int m=0;
			String n=null;
			while(rs.next())
			{
				 m=rs.getInt(1);
			}
			rs.close();
			String sql2="select * from jspuser where email='"+user.getEmail()+"'";
			rs=stmt.executeQuery(sql2);
			while(rs.next())
			{
				 n=rs.getString("email");
			}
			rs.close();
			String sql3="select * from jspuser ";
			rs=stmt.executeQuery(sql3);
			int co=0;
			while(rs.next())
			{
				co=rs.getInt(1);
			}
			k=co;
			if(m>0||n!=null)  return false;
			 return true;
		}catch(Exception e)
		{
			e.printStackTrace();
		}finally {
			DbConnection.release(rs, stmt, conn);
		}
		return false;
		
	}
	public static boolean register(JspUser user) throws SQLException, ClassNotFoundException
	{
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		try {
			 conn=DbConnection.getConnection();
			 stmt=conn.createStatement();
		      rs=null;
			String sql="insert into jspuser(id,username,email,password) "+"values("+user.getId()+",'"+
			user.getUsername()+"','"+user.getEmail()+"','"+user.getPassword()+"')";
			int  num=stmt.executeUpdate(sql);
			if(num>0) return true;
			 return false;
		}catch(Exception e)
		{
			e.printStackTrace();
		}finally {
			DbConnection.release(rs, stmt, conn);
		}
		return false;
		
	}
}
