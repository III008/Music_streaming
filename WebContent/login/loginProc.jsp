<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.music.vo.*, com.music.dao.*"
    %>
    <jsp:useBean id="vo" class="com.music.vo.MusicMemberVO" />
	<jsp:setProperty name="vo" property="*" />

<%
	MusicMemberDAO dao = new MusicMemberDAO();
	int result = dao.getLogin(vo);
	
	
	if(result != 0){
		response.sendRedirect("http://localhost:9000/Music_streaming/index.jsp");
	}else{
		response.sendRedirect("http://localhost:9000/Music_streaming/login/loginFail.jsp");
	}
%>    