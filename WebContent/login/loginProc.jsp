<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.music.vo.*, com.music.dao.*"
    %>
    <jsp:useBean id="vo" class="com.music.vo.MusicMemberVO" />
	<jsp:setProperty name="vo" property="*" />

<%
	MusicMemberDAO dao = new MusicMemberDAO();
	SessionVO svo = dao.getLogin(vo); 
	
	if(svo.getResult() != 0){
		session.setAttribute("svo", svo)	;
		
		/* dao.login_state(1, vo);// 로그인 성공시 login_state 1로 변경 */
		
		response.sendRedirect("http://localhost:9000/Music_streaming/index.jsp");
	}else{
		response.sendRedirect("http://localhost:9000/Music_streaming/login/loginFail.jsp");
	}
%>    