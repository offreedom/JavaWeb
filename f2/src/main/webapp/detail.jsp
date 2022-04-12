<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="f222.*" %>

 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<%
	
    int id=Integer.parseInt(request.getParameter("id"));
    JspUser user=new JspUser();
    JspUserDao ud=new JspUserDao();
    user=ud.C2(id);

%>
<table border="1">
	<tr>
	<td>
	ID：<%=user.getId() %>
	</td>
	</tr>
	<tr>
	<td>
	用户名：<%=user.getUsername() %>
	</td>
	</tr>
	<tr>
	<td>
	Email：<%=user.getEmail() %>
	</td>
	</tr>
	<tr>
	<td>
	密码：<%=user.getPassword() %>
	</td>
	</tr>
</table>
</body>
</html>