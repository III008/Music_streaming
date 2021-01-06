<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.music.dao.*, com.music.vo.*, java.util.*, com.google.gson.*"%>
<%
	String mid = request.getParameter("mid");
	String id = request.getParameter("id");
	/* System.out.println(mid+id); */

	MusicPlaylistDAO dao = new MusicPlaylistDAO();
	boolean result = dao.insertMusiclist(id,mid);
	
	if(result) {
		out.write("재생목록 추가 성공");
	}else {
		out.write("재생목록에 추가 실패");
	}
	
%>