<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.music.vo.*, com.music.dao.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="vo" class="com.music.vo.MusicBoardTrVO" />
<jsp:setProperty name="vo" property="*" />

<%
	String id = request.getParameter("id");
	String tr_bid = request.getParameter("tr_bid");
	
	//DB연동
	MusicBoardTrDAO dao = new MusicBoardTrDAO();
	boolean result = dao.getRpInsert(vo,id,tr_bid);
	
	if(result){
		response.sendRedirect("board_content.jsp?tr_bid="+tr_bid);
	}else{
		response.sendRedirect("../../errorPage.jsp");
	}



%>