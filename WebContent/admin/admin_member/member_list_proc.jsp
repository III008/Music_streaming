<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.music.dao.*, com.music.vo.*, java.util.*, com.google.gson.*"%>
<%
	MusicMemberDAO dao = new MusicMemberDAO();
	
	String sname = request.getParameter("sname");
	String svalue = request.getParameter("svalue");
	String rpage = request.getParameter("rpage");
	
	int start = 0;
	int end = 0;
	int pageSize = 10; 
	int pageCount = 1; 
	int dbCount = dao.getListCount(sname, svalue);
	int reqPage = 1;
		
	if(dbCount % pageSize == 0){
		pageCount = dbCount/pageSize;		
	}else{
		pageCount = dbCount/pageSize +1;
	}
	
	if(rpage != null){
		reqPage = Integer.parseInt(rpage);
		start = (reqPage-1) * pageSize + 1 ;
		end = reqPage*pageSize;	
	}else{
		start = reqPage;
		end = pageSize;
	}
	
	ArrayList<MusicMemberVO> list = dao.getSearchList(sname,svalue,start,end);

	JsonArray jarray = new JsonArray();
	JsonObject jdata = new JsonObject();
	Gson gson = new Gson();
	
	for(MusicMemberVO vo : list){
		JsonObject jobj = new JsonObject();
		jobj.addProperty("rno", vo.getRno());
		jobj.addProperty("id", vo.getId());
		jobj.addProperty("name", vo.getName());
		jobj.addProperty("nickname", vo.getNickname());
		jobj.addProperty("cp", vo.getCp());
		jobj.addProperty("mdate", vo.getMdate());
	      
		jarray.add(jobj);		
	}
	
	jdata.add("jlist", jarray);
	jdata.addProperty("dbcount", dbCount);
	jdata.addProperty("reqpage", reqPage);
	jdata.addProperty("pagesize", pageSize);
	
	out.write(gson.toJson(jdata));
%>
