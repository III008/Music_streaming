<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     import="com.music.dao.*, com.music.vo.*, java.util.*, com.google.gson.*"%>
     
	<% MusicMemberDAO dao = new MusicMemberDAO();
	String email = request.getParameter("email");
	MusicMemberVO vo = dao.FindID(email);
	
	JsonObject jdata = new JsonObject();
	JsonObject jobj = new JsonObject();
	Gson gson =new Gson();
	
	jdata.addProperty("id", vo.getId());
	jdata.addProperty("mdate", vo.getMdate());
	
	out.write(gson.toJson(jdata));
	%>
 