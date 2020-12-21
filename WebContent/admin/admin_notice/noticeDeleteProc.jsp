<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="com.music.dao.*"
    %>

<%
	String nid = request.getParameter("nid");
	MusicNoticeDAO dao = new MusicNoticeDAO();
	boolean result = dao.getDelete(nid);
	
	if(result){
		response.sendRedirect("notice_list.jsp");
	}else{
		response.sendRedirect("../../manager_index.jsp");
	}
%> 