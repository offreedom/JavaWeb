<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="f333.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>处理页面</title>
</head>
<body>
<%  
	String name=request.getParameter("name");
	String password=request.getParameter("password");
	String password2=request.getParameter("password2");
	String email=request.getParameter("email");
	JspUser user=new JspUser();
	user.setUsername(name);
	user.setPassword(password);
	user.setEmail(email);
	if(name.trim().equals("")||password.trim().equals("")||password2.trim().equals("")||email.trim().equals(""))
	{
		request.setAttribute("user", user);
		request.setAttribute("password2",password2);
		request.setAttribute("Warn", "You must input username, email, password and confirm passord!");
		request.getRequestDispatcher("/main.jsp").forward(request, response);
		return;
	}
	int a=2;
	char[] name1=name.toCharArray();
	char[] password1=password.toCharArray();
	char[] password21=password2.toCharArray();
	char[] email1=email.toCharArray();
	for(int i=0;i<name.trim().length();i++)
	{
		if((name1[i]>='0'&&name1[i]<='9'||name1[i]>='a'&&name1[i]<='z'||name1[i]=='_')&&name.trim().length()<20) ;
		else a=0;
	}
	for(int i=0;i<password.trim().length();i++)
	{
		if((password1[i]>='0'&&password1[i]<='9'||password1[i]>='a'&&password1[i]<='z'||password1[i]=='_')&&password.trim().length()<20);
		else a=0;
	}
	for(int i=0;i<password2.trim().length();i++)
	{
		if((password21[i]>='0'&&password21[i]<='9'||password21[i]>='a'&&password21[i]<='z'||password21[i]=='_')&&password2.trim().length()<20);
		else a=0;
	}
	for(int i=0;i<email.trim().length();i++)
	{
		if((email1[i]>='0'&&email1[i]<='9'||email1[i]>='a'&&email1[i]<='z'||email1[i]=='_'||email1[i]=='@'||email1[i]=='.')&&email.trim().length()<20);
		else a=0;
	}
	if(a==0)
	{
		request.setAttribute("user", user);
		request.setAttribute("password2",password2);
		request.setAttribute("Warn", "You must input username, email, password and confirm passord with english letter, digits or underscore character, and their length must be less 20!");
		request.getRequestDispatcher("/main.jsp").forward(request, response);
		return;
	}
	int b=0;
	for(int i=0;i<email.trim().length();i++)
	{
		if(email1[i]=='@') b=1;
		
	}
	if(b==0)
	{
		request.setAttribute("user", user);
		request.setAttribute("password2",password2);
		request.setAttribute("Warn", "Incorrect email address!");
		request.getRequestDispatcher("/main.jsp").forward(request, response);
		return;
	}
	if(!password.trim().equals(password2.trim()))
	{
		request.setAttribute("user", user);
		request.setAttribute("password2",password2);
		request.setAttribute("Warn", "The password and confirm passord are not same!");
		request.getRequestDispatcher("/main.jsp").forward(request, response);
		return;
	}
	boolean c=JspUserDao.check(user);
	int d=JspUserDao.k;
	if(!c)
	{
		request.setAttribute("user", user);
		request.setAttribute("password2",password2);
		request.setAttribute("Warn", "The username has existed or email address has already registered!");
		request.getRequestDispatcher("/main.jsp").forward(request, response);
		return;
	}
	else
	{
		user.setId(d+1);
		boolean m=JspUserDao.register(user);
		request.getSession().setAttribute("name", name);
		request.getSession().setAttribute("email", email);
		request.getSession().setAttribute("password", password);
		request.getRequestDispatcher("/userinfo.jsp").forward(request, response);
	}
%>
</body>
</html>