<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.music.dao.*" %>
<%
	String bid = request.getParameter("bid");
	MusicBoardDAO dao = new MusicBoardDAO();
	boolean result = dao.getDelete(bid);
	
	if(result){
		response.sendRedirect("board_list.jsp");
	}else{
		response.sendRedirect("http://localhost:9000/Music_streaming/errorPage.jsp");
	}
%>    
