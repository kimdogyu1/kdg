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
  
</style>

</head>

<body>
	<h2 style = "text-align: center; color: lightyellow;">회원가입양식</h2>
<form>
	<fieldset>
	<legend style="color: lightyellow;">개인 정보 입력</legend>
	<label for='male' class = "btn btn-primary active" >남성</label>
	<input type='radio'  name="gender" id ='male' value="male" checked>
	<label for='female'>여성</label>
	<input type='radio' name="gender" id ='female' value="female">
	
	<!-- 다중 칼럼 적용 부 -->
	<div style = "column-count: 2;">

	<p/>
	<p>이름&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="userName" autocomplete = "off" ></p>
	<p>아이디&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="idname" autocomplete = "off" required></p>
	<p>패스워드&nbsp;<input type="password" name="password" required></p>
	<p>학교&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="school"></p>
	<p>입학년도&nbsp;<input type="date" name="date"></p>
	<p>전화번호&nbsp;<input type="tel" name="tel"></p>
    	<p>이메일&nbsp;&nbsp;&nbsp;&nbsp;<input type="email" name="userEmail" placeholder= "xxx@xxx.com"></p>
	<p>집주소&nbsp;&nbsp;&nbsp;&nbsp;<span><input type="text" name="address" placeholder= "도로명 주소">
	</span><span><input style="margin: 5px 70px;" type="text" name="address" placeholder= "지번 주소"></span></p>
	
	 <p1>취미:</p1> 
	<input type="checkbox" name="hobby" value=""><p1>컴퓨터</p1>
	<input type="checkbox" name="hobby" value=""><p1>노래</p1>
	<input type="checkbox" name="hobby" value=""><p1>댄스</p1>
	<input type="checkbox" name="hobby" value=""><p1>스포츠</p1>
	<input type="checkbox" name="hobby" value=""><p1>요리</p1>
	<p>기타:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="hobby"></p>
	<p/>
	
	<form name="input" action="joinAction.jsp" method="get">자기소개서란<br/>
	<textarea name="feedback" rows="10" cols="50" maxlength="500"></textarea>
</form>	

	<input type="submit" value="회원가입">
	
	</div>
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
