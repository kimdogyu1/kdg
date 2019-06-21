<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="bbs" class="bbs.Bbs" scope="page"/>
<jsp:setProperty property="bbsTitle" name="bbs"/>
<jsp:setProperty property="feedback" name="bbs"/>

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
 if (userID == null) {
	  PrintWriter sc = response.getWriter();
		sc.println("<script>");
		sc.println("alert('로그인 필요함.')");
		sc.println("location.href = 'login.jsp'");
		sc.println("</script>");
 }else {
	 
	 if (bbs.getBbsTitle() ==null || bbs.getFeedback()== null) {
			 		PrintWriter sc = response.getWriter();
			 		sc.println("<script>");
			 		sc.println("alert('빈칸 있음.')");
			 		sc.println("history.back()");
			 		sc.println("</script>");
			 	} else {
			 		BbsDAO bbsDAO = new BbsDAO();
			 		int result = bbsDAO.write(bbs.getBbsTitle(), userID, bbs.getFeedback());
			 		if (result == -1){
			 		PrintWriter sc = response.getWriter();
			 		sc.println("<script>");
			 		sc.println("alert('글쓰기 오류')");
			 		sc.println("history.back()");
			 		sc.println("</script>");
			 		}
			 		else {
			 			 
			 			PrintWriter sc = response.getWriter();
			 	 		sc.println("<script>");
			 	 		sc.println("location.href = 'index.jsp' ");
			 	 		sc.println("</script>");
			 		}
			 	}
 }
 
 	
 	
 %>
</body>
</html>
