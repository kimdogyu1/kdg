<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE HTML>
<html>
<head>
<title>login page</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="css/loginpage.css" />
<link rel="stylesheet" href="css/fontello-47e7b9ac/css/fontello.css">
<link href="https://fonts.googleapis.com/css?family=Anton|Lobster"
	rel="stylesheet">
</head>

<body>
	<%
String userID = null;
if (session.getAttribute("userID") != null) {
	userID = (String)session.getAttribute("userID");
}
%>
	<audio id='audio_play'
		src='music/Maps - Maroon 5 (Alex Goot Cover).mp3'></audio>

	<header id="header">
		<span class="avatar"><img src="images/jung1.jpg"
			alt="연예인 및 크리에이터 사진" onclick="play();" /></span>


		<form method="post" action="loginAction.jsp">
			<div>
				<fieldset>
					<input autocomplete="off" type="text" name="userID" maxlength="30"
						id="txtUserID" placeholder="ID"> <input type="password"
						name="userPassword" maxlength="30" id="txtPassword"
						placeholder="PASSWORD">

				</fieldset>

				<div class="loginbox">
					<input type="submit" value="L O G I N" id="btnLogin"
						class="btnLogin">
				</div>

			</div>
		</form>


		<ul class="icons">
			<%
				if(userID == null) {
				%>
			<li><a href="sign.jsp" class="icon-user-plus"><span
					class="label">회원가입</span></a></li>
			<%
				} else {
				%>
			<li><a href="logoutAction.jsp" class="icon-user-times"><span
					class="label">로그아웃</span></a></li>
			<%
				}
				%>
			<li><a href="write.jsp" class="icon-chat"><span class="label">글쓰기</span></a></li>
			<li><a href="shop.jsp" class="icon-login"><span
					class="label">비회원 로그인</span></a></li>
		</ul>
	</header>



	<section id="main"></section>


	<footer id="footer">
		<p />
		&copy; <a href="index.jsp">Home</a>
				<p/>
				<a href="index.jsp" style = "margin-left: 10px;">Prev</a>
				<a href="shop.jsp">Next</a>
			</footer>

	<script src="js/loginpage.js"></script>



</body>
</html>
