<html>
	<head>
		<style type="text/css">
			div.vote
			{
				position:absolute;
				height:200px;
				top:200px;
				right:700px;
				font-size:30px;
				color:red;
			}
			div.login
			{
				position:absolute;
				height:200px;
				top:280px;
				right:700px;
				font-size:30px;
				color:red;
			}
		</style>
	</head>
	<body>	
		<form action="./Vote1" name="check" method="post" >
 			<div class="vote">
 				<select name="vote">
 					<option value="BJP">BJP</option>
 					<option value="CONGRESS">CONGRESS</option>
 					<option value="OTHER">OTHER</option>
 				</select>
  			</div>
  			<div class="login">
  				<input type="submit" name="submit" value="submit" style="font-size:15pt;">
  			</div>
  		</form>
	</body>
</html>