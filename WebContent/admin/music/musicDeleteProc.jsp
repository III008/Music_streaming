<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.music.dao.*"%>
    
<%
	String mid = request.getParameter("mid");
	MusicChartDAO dao = new MusicChartDAO();
	boolean result = dao.getDelete(mid);
	
	if(result){
		response.sendRedirect("music_list.jsp");
	}else{
		System.out.println("에러");
	}
%>