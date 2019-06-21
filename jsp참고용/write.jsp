<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>login page</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="css/loginpage.css" />
<link rel="stylesheet" href="css/fontello-b8751b99/css/fontello.css">
<link href="https://fonts.googleapis.com/css?family=Anton|Lobster"
	rel="stylesheet">
<style>
p{
    color: lightyellow;
    }
label {
color: lightyellow;
}
p1 {
color: lightyellow;
}
textarea {
border: 3px outset darkmagenta;
background: aliceblue;
}  
</style>

</head>

<body>
	<h2 style = "text-align: center; color: lightyellow;">회원가입양식</h2>
<form action="writeAction.jsp" method="post">
	<fieldset>
	<legend style="color: lightyellow;">요청사항</legend>
	<p/>
	<p>이름&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="userID" autocomplete = "off" ></p>	
	<p>제목&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="bbsTitle"></p>
	<p/>
	<textarea name="feedback" rows="10" cols="50" maxlength="1000"></textarea>
	<p/>
	<input style="margin: 0px 118px;" type="submit" value="W r i t e">
	
	</fieldset>
</form>


	<section id="main"></section>


	<footer id="footer">
				<p/>&copy; <a href="index.jsp">Home</a>
				<p/>
				<a href="login.jsp" style = "margin-left: 10px;">Prev</a>
				<a href="#">Next</a>
			</footer>

	<script src="js/loginpage.js"></script>

 

</body>
</html>
