<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>注册成功</title>
	<style type="text/css">
		#outer{
		margin-left: 400px;
		margin-top: 50px;
		width:750px;
		}
		h3{
			margin-left: 450px;
		}
		
	</style>
</head>
<body>
<img src="images/final.jpg" >
<h3>注册成功</h3>
<div id="outer">

<div  >用户信息 </div>
<table border="1" >
	<tr>
		<td>用户名:</td>
		<td>${sessionScope.name}</td>
		</tr>
	<tr>
		<td>Email:</td>
		<td>${sessionScope.email }</td>
		</tr>
	<tr>
		<td>密码：</td>
		<td>${sessionScope.password }</td>
		</tr>
</table>
</div>
</body>
</html>