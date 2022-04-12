package f111;

public class JspUser {
	private String username;
	private String password;
	private String email;
	private int id;
	public int getId()
	{
		return id;
	}
	public String getUsername()
	{
		return username;
	}
	public String getPassword()
	{
		return password;
	}
	public String getEmail()
	{
		return email;
	}
	
	public void setId(int id)
	{
		this.id=id;
	}
	public void setUsername(String username)
	{
		this.username=username;
	}
	public void setPassword(String password)
	{
		this.password=password;
	}
	public void setEmail(String email)
	{
		this.email=email;
	}
}
