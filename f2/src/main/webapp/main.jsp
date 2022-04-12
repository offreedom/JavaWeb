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
<body style="test-align: center;">
<%
	ArrayList<JspUser> list=new ArrayList<JspUser>();
    JspUserDao ud=new JspUserDao();
    list=ud.C1();

%>
<table border="1">
	<tr>
		<td>ID</td>
		<td>用户名</td>
		<td>Email</td>
		<td>密码</td>
		<td>详细</td>
		
		</tr>
	<c:forEach var="JspUser" items="<%=list %>" step="1">
	<tr>
	<td> ${JspUser.id }</td>
	<td> ${JspUser.username }</td>
	<td> ${JspUser.email }</td>
	<td> ${JspUser.password }</td>
	<td>
		<c:url var="myurl"
		value="http://localhost:9527/f2/detail.jsp">
		<c:param name="id" value="${JspUser.id }"/>
		</c:url>
		<a href="${myurl }">详细</a>
		</td>
	</tr>
	</c:forEach>
	
</table>
<form action="search.jsp" method="post">
	<input type="text" name="name" >
	<input type="submit" value="查询" >
</form>
</body>
</html>