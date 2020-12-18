<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="com.music.vo.*, com.music.dao.*" %>
<%	request.setCharacterEncoding("utf-8"); %>   
<jsp:useBean id="vo" class="com.music.vo.MusicBoardVO" />
<jsp:setProperty property="*" name="vo"/>

<%
	MusicBoardDAO dao = new MusicBoardDAO();
	boolean result = dao.getUpdate(vo);
	
	if(result){
		response.sendRedirect("board_list.jsp");
	}else{
		//response.sendRedirect("../errorPage.jsp");
	}

%> 
