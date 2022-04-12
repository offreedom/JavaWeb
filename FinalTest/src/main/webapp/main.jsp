<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
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
<img src="images/final.jpg" >
	<form action="reg_act.jsp" method="post">
		<h3>用户注册</h3>
		<div id="outer">
			<div>
				<div class="ch">用户名：</div>
				<div class="ip">
				<input type="text"name="name" value="${user.username }"/>
				</div>
			</div>
			<div>
				<div class="ch">邮箱：</div>
				<div class="ip">
				<input type="text"name="email" value="${user.email }"/>
				</div>
			</div>
			<div>
				<div class="ch">密码：</div>
				<div class="ip">
				<input type="password"name="password" value="${user.password }"/>
				</div>
			</div>
			<div>
				<div class="ch">确认密码：</div>
				<div class="ip">
				<input type="password"name="password2" value="${password2 }"/>
				</div>
			</div>
			<div id="bt">
			<input type="submit" value="注册">
			<input type="reset" value="重设">
			</div>
			<div ><span>${Warn}</span></div>
		</div>
	</form>
</body>
</html>