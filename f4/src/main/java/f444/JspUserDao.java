package f444;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;



public class JspUserDao {
	public  ArrayList<JspUser> search1()
	{
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		ArrayList<JspUser> list=new ArrayList<JspUser>();
		try {
			 conn=DbConnection.getConnection();
			 stmt=conn.createStatement();
		      String sql="select * from jspuser ";
		      rs=stmt.executeQuery(sql);
		    
		      while(rs.next())
		      {
		    	  JspUser user=new JspUser();
		    	  user.setId(rs.getInt("id"));
		    	  user.setUsername(rs.getString("username"));
		    	  user.setEmail(rs.getString("email"));
		    	  user.setPassword(rs.getString("password"));
		    	  list.add(user);
		      }
		     return list;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	public JspUser search2(int id)
	{
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		try {
			 conn=DbConnection.getConnection();
			 stmt=conn.createStatement();
		      String sql="select * from jspuser where id="+id;
		      rs=stmt.executeQuery(sql);
		      JspUser user=new JspUser();
		      while(rs.next())
		      {
		    	  user.setId(rs.getInt("id"));
		    	  user.setUsername(rs.getString("username"));
		    	  user.setEmail(rs.getString("email"));
		    	  user.setPassword(rs.getString("password"));
		      }
		     return user;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	public static int update(JspUser user)
	{
		Connection conn=null;
		Statement stmt=null;
		
		try {
			 conn=DbConnection.getConnection();
			 stmt=conn.createStatement();
		      String sql="update jspuser set username='"+user.getUsername()+"',email='"+user.getEmail()+"',"
		    		  +"password='"+user.getPassword()+"'"+"where id="+user.getId();
		      int num=stmt.executeUpdate(sql);
		      return num;
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return 0;
	}
}
