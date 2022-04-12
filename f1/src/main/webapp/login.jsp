<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<form action="login_act.jsp" method="post">
<div>
用户名：<input type="text" name="name">
</div>
<div>
密码：<input type="password" name="password">
</div>
<div>
<input type="submit" value="登录">
</div>
<div><span>${DBMes }</span></div>
</form>
</body>
</html>