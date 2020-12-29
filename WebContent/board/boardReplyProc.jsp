<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.music.vo.*, com.music.dao.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="vo" class="com.music.vo.MusicBoardVO" />
<jsp:setProperty name="vo" property="*" />

<%
	String id = request.getParameter("id");
	String bid = request.getParameter("bid");
	
	//DB연동
	MusicBoardDAO dao = new MusicBoardDAO();
	boolean result = dao.getRpInsert(vo,id,bid);
	
	if(result){
		response.sendRedirect("board_content.jsp?bid="+bid);
	}else{
		response.sendRedirect("../errorPage.jsp");
	}



%>