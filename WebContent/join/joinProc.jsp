<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
	String email1 = request.getParameter("email1");
	String email2 = request.getParameter("email2");
	String email_agr = request.getParameter("email_agr");
	String cp1 = request.getParameter("cp1");
	String cp2 = request.getParameter("cp2");
	String cp3 = request.getParameter("cp3");
	String sms_agr = request.getParameter("sms_agr");
	String genre = request.getParameter("genre");

	String email = email1 + "@" + email2;
	String phone = cp1 + "-" + cp2 + "-" + cp3;
	String genre_list = String.join(",", genre);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>