<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.music.dao.*"%>
    
<%
	String nickname = request.getParameter("nickname");

	MusicMemberDAO dao = new MusicMemberDAO();
	int result = dao.getNicknameCheck(nickname); 
	
	out.write(String.valueOf(result)); //ajax로 호출 페이지로 결과 전송(넘어갈때 String타입으로)
%>
