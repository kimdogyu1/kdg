<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.*" %>
<% request.setCharacterEncoding("UTF-8"); %>


<jsp:useBean id="user" class="user.User" scope="page"/>

<jsp:setProperty property="userID" name="user"/>
<jsp:setProperty property="userPassword" name="user"/>
<jsp:setProperty property="userName" name="user"/>
<jsp:setProperty property="userGender" name="user"/>
<jsp:setProperty property="userEmail" name="user"/>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<title>>JSP 게시판 웹 사이트</title>
</head>

<body>
 <%
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
 
 	if (user.getUserID() ==null || user.getUserPassword()==null || user.getUserName()==null||
 	user.getUserGender() ==null || user.getUserEmail() ==null) {
 		PrintWriter sc = response.getWriter();
 		sc.println("<script>");
 		sc.println("alert('빈칸 있음.')");
 		sc.println("history.back()");
 		sc.println("</script>");
 	} else {
 		UserDAO userDAO = new UserDAO();
 		int result = userDAO.join(user);
 		if (result == -1){
 		PrintWriter sc = response.getWriter();
 		sc.println("<script>");
 		sc.println("alert('이미 존재하는 아이디')");
 		sc.println("history.back()");
 		sc.println("</script>");
 		}
 		else if (result ==0){
 			 session.setAttribute("userID",user.getUserID());
 			PrintWriter sc = response.getWriter();
 	 		sc.println("<script>");
 	 		sc.println("location.href = 'shop.jsp' ");
 	 		sc.println("</script>");
 		}
 	}
 %>
</body>
</html>
