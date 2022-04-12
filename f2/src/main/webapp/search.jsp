<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="f222.*" %>
<%@ page import="java.util.*" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
	ArrayList<JspUser> list=new ArrayList<JspUser>();
    JspUserDao ud=new JspUserDao();
    String name=request.getParameter("name");
    list=ud.C3(name);

%>
<table border="1">
	<tr>
		<td>ID</td>
		<td>用户名</td>
		<td>Email</td>
		<td>密码</td>
		</tr>
	<c:forEach var="JspUser" items="<%=list %>" step="1">
	<tr>
	<td> ${JspUser.id }</td>
	<td> ${JspUser.username }</td>
	<td> ${JspUser.email }</td>
	<td> ${JspUser.password }</td>
	</tr>
	</c:forEach>
</table>
</body>
</html>