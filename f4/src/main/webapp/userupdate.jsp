<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="f444.*" %>
<%@ page import="java.util.*" %>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	
<meta charset="utf-8">
<title>用户注册</title>
	<style type="text/css">
		h3{
			margin-left: 500px;
		}
		#outer{
		margin-left: 400px;
		width:750px;
		}
		span{
		color: #ff0000
		}
		div{
		height:35px;
		margin-bootom:20px;
		}
		.ch{
		width:80px;
		text-align:right;
		float:left;
		}
		.ip{
		width:500px;
		float:left;
		}
		.ip>input{
		margin-right:20px;
		}
		#bt {
		margin-left:50px;
		}
		#bt>input{
		margin-right:30px;
		}
	</style>
</head>
<body>
<%
	int id=Integer.parseInt(request.getParameter("id"));
	JspUser user=new JspUser();
	JspUserDao ud=new JspUserDao();
	user=ud.search2(id);
	//request.setAttribute("id",request.getParameter("id") );
%>
<img src="images/final.jpg" >
	<form action="update_act.jsp" method="post">
		<h3>更新用户信息</h3>
		<div id="outer">
			<div>
				<div class="ch">用户名：</div>
				<div class="ip">
				<input type="text"name="name" value="<%=user.getUsername()%>"/>
				</div>
			</div>
			<div>
				<div class="ch">邮箱：</div>
				<div class="ip">
				<input type="text"name="email" value="<%=user.getEmail()%>"/>
				</div>
			</div>
			<div>
				<div class="ch">密码：</div>
				<div class="ip">
				<input type="password"name="password" value="<%=user.getPassword()%>"/>
				</div>
			</div>
			<div>
				<div class="ch">确认密码：</div>
				<div class="ip">
				<input type="password"name="password2" value="<%=user.getPassword()%>"/>
				</div>
			</div>
			<div id="bt">
			<input type="submit" value="更新">
			<input type="reset" value="重设">
			</div>
			<div ><span>${DBMes}</span></div>
		</div>
		<input type="hidden" name="id" value="<%=id%>">
	</form>
</body>
</html>