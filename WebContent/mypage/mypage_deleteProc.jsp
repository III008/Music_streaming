<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.music.dao.*" %>
<%
	String id = request.getParameter("id");
	MusicMemberDAO dao = new MusicMemberDAO();
	boolean result = dao.getDelete(id);
	
	if(result){
		response.sendRedirect("../index.jsp");
	}else {
		response.sendRedirect("../errorPage.jsp");
	}

%>