<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.music.dao.*" %>
<%
	String id = request.getParameter("id");
	
	MusicMemberDAO dao = new MusicMemberDAO();
	int result = dao.getIdCheck(id);
	
	out.write(String.valueOf(result));
%>