<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.music.dao.*" %>
<%
	String dc_bid = request.getParameter("dc_bid");
	MusicBoardDcDAO dao = new MusicBoardDcDAO();
	boolean result = dao.getDelete(dc_bid);
	
	if(result){
		response.sendRedirect("board_list.jsp");
	}else{
		response.sendRedirect("http://localhost:9000/Music_streaming/errorPage.jsp");
	}
%>    
