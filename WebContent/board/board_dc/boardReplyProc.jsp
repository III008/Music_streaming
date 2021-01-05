<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.music.vo.*, com.music.dao.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="vo" class="com.music.vo.MusicBoardDcVO" />
<jsp:setProperty name="vo" property="*" />

<%
	String id = request.getParameter("id");
	String dc_bid = request.getParameter("dc_bid");
	
	//DB연동
	MusicBoardDcDAO dao = new MusicBoardDcDAO();
	boolean result = dao.getRpInsert(vo,id,dc_bid);
	
	if(result){
		response.sendRedirect("board_content.jsp?dc_bid="+dc_bid);
	}else{
		response.sendRedirect("../../errorPage.jsp");
	}



%>