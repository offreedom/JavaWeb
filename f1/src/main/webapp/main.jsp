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
if(name==null) 
{
	request.setAttribute("DBMes", "Please login！");
	   request.getRequestDispatcher("/login.jsp").forward(request, response);
	   return;
}
%>
<form action="/f1/login.jsp" method="post">
<div>
欢迎你：${param.name}
</div>
<div><input type="submit" value="注销" ></div>
</form>

</body>
</html>