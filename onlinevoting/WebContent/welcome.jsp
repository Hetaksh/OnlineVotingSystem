<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
	body
	{
		
	}
	.heading
	{
		padding:10px;
		font-size:18pt;
	}
	.email
	{
		padding:10px;
		position:absolute;
		top:200px;
		right:600px;
		font-size:20pt;
		color:black;
	}
	.psw
	{
		padding:10px;
		position:absolute;
		top:250px;
		right:600px;
		font-size:20pt;
		color:black;
	}
	.sub
	{
		padding:10px;
		position:absolute;
		top:350px;
		right:850px;
		font-size:18pt;
		
	}
	.reg
	{
		padding:10px;
		position:absolute;
		top:350px;
		right:650px;
		font-size:20pt;
	}
</style>
</head>
<body>
	<form action="OnlineLogin" method="post">
		<div class="heading" align="center">
			<h1>Welcome To Online Voting Login Page</h1>
		</div>
		<div class="email">
			Enter User Name
				<input type="text" name="name" style="font-size:20pt"> <br>
		</div>
		<div class="psw">
			Enter Password
				<input type="password" name="pass" style="font-size:20pt">
		</div>
		<div class="sub">
			<input type="submit" value="Login" style="font-size:18pt">
		</div>
		<div class="reg">
			<a href="Registration.jsp"> Registration </a>
		</div>
	</form>
</body>
</html>