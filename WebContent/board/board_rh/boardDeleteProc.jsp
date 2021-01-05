<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.music.dao.*" %>
<%
	String rh_bid = request.getParameter("rh_bid");
	MusicBoardRhDAO dao = new MusicBoardRhDAO();
	boolean result = dao.getDelete(rh_bid);
	
	if(result){
		response.sendRedirect("board_list.jsp");
	}else{
		response.sendRedirect("../../errorPage.jsp");
	}
%>    
