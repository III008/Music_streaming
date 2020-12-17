<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.music.vo.*, com.music.dao.*"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="vo" class="com.music.vo.MusicMemberVO"></jsp:useBean> <!-- 객체 생성 -->
<jsp:setProperty name="vo" property="*"></jsp:setProperty>

<%
	//DB 연동 후 저장
	MusicMemberDAO dao = new MusicMemberDAO();
	boolean join_result = dao.getInsert(vo);

	//페이지 이동
	if(join_result) {
		//회원가입 성공
		response.sendRedirect("joinSuccess.jsp");
	}else {
		//회원가입 실패 - 서버 연동 시 에러발생 : 에러페이지를 별도로 생성 후 호출
		response.sendRedirect("../errorPage.jsp");
	}
 	
%>
