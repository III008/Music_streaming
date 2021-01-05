<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.music.vo.*, com.music.dao.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="vo" class="com.music.vo.MusicBoardRbVO" />
<jsp:setProperty name="vo" property="*" />

<%
	String id = request.getParameter("id");
	String rb_bid = request.getParameter("rb_bid");
	
	//DB연동
	MusicBoardRbDAO dao = new MusicBoardRbDAO();
	boolean result = dao.getRpInsert(vo,id,rb_bid);
	
	if(result){
		response.sendRedirect("board_content.jsp?rb_bid="+rb_bid);
	}else{
		response.sendRedirect("../../errorPage.jsp");
	}

%>