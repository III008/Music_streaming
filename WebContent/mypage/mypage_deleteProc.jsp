<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.music.dao.*" %>
<%
	String id = request.getParameter("id");
	MusicMemberDAO dao = new MusicMemberDAO();
	boolean result = dao.getDelete(id);
	
	if(result){
		session.invalidate();
		
		response.sendRedirect("http://localhost:9000/Music_streaming/index.jsp");
	}else {
		response.sendRedirect("http://localhost:9000/Music_streaming/errorPage.jsp");
	}

%>