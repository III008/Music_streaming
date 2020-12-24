<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "com.music.vo.*,com.music.dao.*"
    %>
    <jsp:useBean id="vo" class="com.music.vo.MusicMemberVO" />
	<jsp:setProperty name="vo" property="*" />
<%
	MusicMemberDAO dao = new MusicMemberDAO();
	SessionVO svo = (SessionVO)session.getAttribute("svo");
	
	if(svo != null){
		
		session.invalidate();
		dao.login_state(vo, 0);// 로그아웃 성공시 login_state 0로 변경
		
		response.sendRedirect("http://localhost:9000/Music_streaming/index.jsp");
	}else{
		response.sendRedirect("http://localhost:9000/Music_streaming/errorPage.jsp");
	}
%>