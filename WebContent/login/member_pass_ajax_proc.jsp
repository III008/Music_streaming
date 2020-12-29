<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     import="com.music.dao.*, com.music.vo.*, java.util.*, com.google.gson.*"%>
     
	<% MusicMemberDAO dao = new MusicMemberDAO();
	String id = request.getParameter("id");
	String email = request.getParameter("email");
	MusicMemberVO vo = dao.FindPass(id,email);
	
	JsonObject jdata = new JsonObject();
	JsonObject jobj = new JsonObject();
	Gson gson =new Gson();
	
	jdata.addProperty("pass", vo.getPass());
	
	out.write(gson.toJson(jdata));
	%>
 