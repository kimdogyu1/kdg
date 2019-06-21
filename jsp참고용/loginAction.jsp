<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.*" %>
<% request.setCharacterEncoding("UTF-8"); %>


<jsp:useBean id="user" class="user.User" scope="page"/>
<jsp:setProperty property="userID" name="user"/>
<jsp:setProperty property="userPassword" name="user"/>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<title>>KDG 웹사이트</title>
</head>
<body>
 <%
  UserDAO userDAO = new UserDAO();
  int result = userDAO.login(user.getUserID(), user.getUserPassword());
  
  String userID = null;
  if (session.getAttribute("userID")!= null) {
  	userID = (String) session.getAttribute("userID");
  }
  if (userID != null) {
	  PrintWriter sc = response.getWriter();
		sc.println("<script>");
		sc.println("alert('이미 로그인')");
		sc.println("location.href = 'shop.jsp'");
		sc.println("</script>");
  }
  
  if (result ==1){
		 session.setAttribute("userID",user.getUserID());
		PrintWriter sc = response.getWriter();
		sc.println("<script>");
		sc.println("location.href = 'shop.jsp' ");
		sc.println("</script>");
	}
 %>
 <script type="text/javascript">
  var result = <%=result%>;
  if(result == 0){
   alert('비밀번호가 틀립니다.');
   history.back();
  }else if(result == -1){
   alert('존재하지 않는 아이디입니다.');
   history.back();
  }else if(result == -2){
   alert('DB 오류가 발생했습니다.');
   history.back();
  }
 </script>
</body>
</html>
