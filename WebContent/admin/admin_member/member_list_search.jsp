<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.music.vo.*, com.music.dao.*, java.util.*, com.google.gson.*" %>
<%
	String sitem = request.getParameter("sitem");
	String sname = request.getParameter("sname");
	
	MusicMemberDAO dao = new MusicMemberDAO();
	ArrayList<MusicMemberVO> list = dao.getSearchList(sitem, sname);
	
	//list객체의 데이터를 json 객체로 변환작업 필요 --> JSON 라이브러리 설치(GSON)
	JsonArray jarray = new JsonArray();
	JsonObject jdata = new JsonObject();
	Gson gson = new Gson();
	
	for(MusicMemberVO vo : list) {
		JsonObject jobj = new JsonObject();
		jobj.addProperty("rno", vo.getRno());
		jobj.addProperty("id", vo.getId());
		jobj.addProperty("name", vo.getName());
		jobj.addProperty("cp", vo.getCp());
		jobj.addProperty("mdate", vo.getMdate());
		
		jarray.add(jobj);
	}
	jdata.add("jlist", jarray);
	
	out.write(gson.toJson(jdata)); //gson.toJSON()
%>
