<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<title>>로그아웃 action</title>
</head>

<body>
 <%
 	session.invalidate();
 %>
 <script>
 location.href = 'login.jsp';
 </script>
</body>
</html>
