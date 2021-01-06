<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.music.vo.*, com.music.dao.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="vo" class="com.music.vo.MusicBoardRhVO" />
<jsp:setProperty name="vo" property="*" />

<%
	String id = request.getParameter("id");
	String rh_bid = request.getParameter("rh_bid");
	
	//DB연동
	MusicBoardRhDAO dao = new MusicBoardRhDAO();
	boolean result = dao.getRpInsert(vo,id,rh_bid);
	
	if(result){
		response.sendRedirect("board_content.jsp?rh_bid="+rh_bid);
	}else{
		response.sendRedirect("../../errorPage.jsp");
	}



%>