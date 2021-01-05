<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.music.dao.*" %>
<%
	String tr_bid = request.getParameter("tr_bid");
	MusicBoardTrDAO dao = new MusicBoardTrDAO();
	boolean result = dao.getDelete(tr_bid);
	
	if(result){
		response.sendRedirect("board_list.jsp");
	}else{
		response.sendRedirect("../../errorPage.jsp");
	}
%>    
