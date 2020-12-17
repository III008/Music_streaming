<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.music.vo.*, com.music.dao.*"%>
<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="vo" class="com.music.vo.MusicChartVO" />
<jsp:setProperty name="vo" property="*" />

<%
	/* System.out.println(vo.getBtitle());
	System.out.println(vo.getBcontent()); */
	//아이디 넘기기
	String id = request.getParameter("id");
	String mid = request.getParameter("mid");
	
	//DB연동
	MusicChartDAO dao = new MusicChartDAO();
	boolean result = dao.getCommentInsert(vo,id,mid);
	
	if(result){
		response.sendRedirect("music_content.jsp?mid="+mid);
	}else{
		System.out.println("오류");
	}
%>
