<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="com.music.dao.*"
    %>

<%
	String mid = request.getParameter("mid");
	MusicMagazineDAO dao = new MusicMagazineDAO();
	boolean result = dao.getDelete(mid);
	
	if(result){
		response.sendRedirect("magazine_list.jsp");
	}else{
		response.sendRedirect("../../manager_index.jsp");
	}
%> 