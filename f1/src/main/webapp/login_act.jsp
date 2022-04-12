<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="f111.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
   String name=request.getParameter("name");
   String password=request.getParameter("password");
   if(name.trim().equals(""))
   {
	   request.setAttribute("DBMes", "Please enter the username！");
	   request.getRequestDispatcher("/login.jsp").forward(request, response);
	   return;
   }
   boolean a=JspUserDao.C(name.trim(),password.trim());
   if(!a)
   {
	   request.setAttribute("DBMes", "Wrong username or password ！");
	   request.getRequestDispatcher("/login.jsp").forward(request, response);
	   return;
   }
   request.getSession().setAttribute("name", name);
   request.getRequestDispatcher("/main.jsp").forward(request, response);
%>
</body>
</html>