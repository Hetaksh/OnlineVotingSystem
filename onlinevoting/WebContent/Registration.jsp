<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1" name = "viewport" content = "width=device-width,initial-scale=1">
<title>Welcome To Online Voting System</title>
<style type="text/css">
	body
	{
		font-family:Calibri,Helvetica, sans-serif;
	}
	.container
	{
		
	}
	.id
	{
		position:absolute;
		top:150px;
		right:650px;
		font-size:25px;
		text-align:center;
	}
	.name
	{
		position:absolute;
		top:210px;
		right:650px;
		font-size:25px;
		text-align:center;
	}
	.pass
	{
		position:absolute;
		top:270px;
		right:650px;
		font-size:25px;
		text-align:center;
	}
	.dob
	{
		position:absolute;
		top:330px;
		right:712px;
		font-size:25px;
		text-align:center;
	}
	div.gender
	{
		align:center;
		position:relative;
		top:300px;
		font-size:25px;
		left:470px;
	}
	input[type=radio]
	{
    	border: 0px;
    	width: 3%;
    	height: 2em;
	}
	.city
	{
		position:absolute;
		top:450px;
		right:650px;
		font-size:25px;
		text-align:center;
	}
	.num
	{
		position:absolute;
		top:510px;
		right:650px;
		font-size:25px;
		text-align:center;
	}
	.email
	{
		position:absolute;
		top:560px;
		right:650px;
		font-size:25px;
		text-align:center;
	}
	.register
	{
		position:absolute;
		top:610px;
		right:780px;
		font-size:25px;
		text-align:center;
	}
</style>
</head>

<body>
	<form action="./OnlineRegistration" name="regvoter" method="post">
	<div class="container">
		<h1 align="center">
			Welcome To Online Voting Registration Page
		</h1>
	</div>
		<div class="id">
			Enter Voter Id
				<input type="text" name="id" style="font-size:15pt"> <br>
		</div>
		<div class="name">
			Enter User Name
				<input type="text" name="name" style="font-size:15pt"> <br>
		</div>
		<div class="pass">
			Enter Password
				<input type="password" name="password" style="font-size:15pt"> <br>
		</div>
		<div class="dob">
			Enter DOB
				<input type="date" name="dob" style="font-size:15pt"> <br>
		</div>
		<div class="gender">
			Enter Gender
				<input type="radio" name="gender" id="a" value="Male"> Male
				<input type="radio" name="gender" id="b" value="Female">Female <br>
		</div>
		<div class="city">
			Enter City
				<input type="text" name="city" style="font-size:15pt"> <br>
		</div>
		<div class="num">
			Enter Number
				<input type="number" name="number" style="font-size:15pt"> <br>
		</div>
		<div class="email">
			Enter E-Mail
				<input type="email" name="email" style="font-size:15pt"> <br>
		</div>
		<div class="register">
			<input type="submit" name="register" value="Register" style="font-size:15pt" >
		</div>
	</form>
</body>
</html>