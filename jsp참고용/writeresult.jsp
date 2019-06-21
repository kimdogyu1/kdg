<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<%@ page import="bbs.Bbs"%>
<%@ page import="bbs.BbsDAO"%>
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
int bbsID = 0;
if(request.getParameter("bbsID") != null) {
	bbsID = Integer.parseInt(request.getParameter("bbsID"));
}
if (bbsID == 0) {
	PrintWriter script = response.getWriter();
	script.println("<script>");
	script.println("alert('유효 x')");
	script.println("location.href = 'index.jsp'");
	script.println("</script>");
}
Bbs bbs = new BbsDAO().getBbs(bbsID);
%>
	<audio id='audio_play'
		src='music/Maps - Maroon 5 (Alex Goot Cover).mp3'></audio>

	<header id="header">
		<span class="avatar"><img src="images/jung1.jpg"
			alt="연예인 및 크리에이터 사진" onclick="play();" /></span>
		

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
			<li><a href="index.jsp" class="icon-chat"><span class="label">글쓰기</span></a></li>
			
			<li><a href="shop.jsp" class="icon-login"><span
					class="label">비회원 로그인</span></a></li>
		</ul>
	</header>


	<style>
	td {
	color: pink;
	font-family: 'Anton';
	font-size: 1em;
	width:33%;
	}
	span a{
	color: pink;
	font-family: 'Anton';
	font-size: 1em;
	}
	</style>
	<section id="main">
	<table style = "width: 99%; height:50%; text-align: center; border: 2px solid darkgreen"> 

	<tr> 
	<th colspan = "9" style= "background-color: lightyellow; width: 99%;">게시판</th>
	</tr>
	<tr>
	<td colspan="2"> 글 제목</td>
	<td colspan="5" style = "min-height: 200px;"> 글 내용</td>
	<td colspan="2"> 작성 시간</td>
	</tr>
	<tr>
	<td colspan="2"><%= bbs.getBbsTitle() %></td>
	<td colspan="5"><%= bbs.getFeedback().replaceAll(" ", "&nbsp;")
	.replaceAll("<","&lt;").replaceAll(">", "&gt;")
	.replaceAll("\n", "<br>")%></td>
	<td colspan="2"><%= bbs.getBbsDate() %></td>
	</tr>
	</table>
	
	 <%
			if(userID != null && userID.equals(bbs.getUserID())){
				
			%>
				<span><a href ="update.jsp?bbsID =<%= bbsID %>">수정</a></span> 
				<span><a href ="deleteAction.jsp?bbsID =<%= bbsID %>">삭제</a></span>
			
			<%
			}
			%>
	 

	
	
	</section>


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
