<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.music.dao.*" %>
<%
	String rb_bid = request.getParameter("rb_bid");
	MusicBoardRbDAO dao = new MusicBoardRbDAO();
	boolean result = dao.getDelete(rb_bid);
	
	if(result){
		response.sendRedirect("board_list.jsp");
	}else{
		response.sendRedirect("../../errorPage.jsp");
	}
%>    
