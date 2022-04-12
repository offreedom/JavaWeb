package f222;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
	public static Connection getConnection() throws SQLException,ClassNotFoundException{
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3307/jsptest";
		String name="root";
		String password="root";
		Connection conn=DriverManager.getConnection(url,name,password);
		return conn;
	}
}
