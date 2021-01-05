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
		ArrayList<MusicPlaylistVO> list = dao.getMusiclist(id); 
		//list객체의 데이터를 JSON 객체로 변환작업 필요 ---> JSON 라이브러리 존재(gson)
		JsonArray jarray = new JsonArray();
		JsonObject jdata = new JsonObject();
		Gson gson = new Gson();
		
		for(MusicPlaylistVO vo : list){
			JsonObject jobj = new JsonObject();
			jobj.addProperty("pid", vo.getPid());  //{'rno':1}
			jobj.addProperty("id", vo.getId());
			jobj.addProperty("mid", vo.getMid());
			jobj.addProperty("song", vo.getSong());
			jobj.addProperty("artist", vo.getArtist());
			jobj.addProperty("music_sfile", vo.getMusic_sfile());
			
			//{'rno':1, 'empno':7369, 'ename':SMITH, 'hiredate':2020-10-15}
			jarray.add(jobj);
		}
		
		/*
		{"jdata" :[{'rno':1, 'empno':7369, 'ename':SMITH, 'hiredate':2020-10-15},
				   {'rno':1, 'empno':7369, 'ename':SMITH, 'hiredate':2020-10-15},
				   {'rno':1, 'empno':7369, 'ename':SMITH, 'hiredate':2020-10-15}...]}
		*/
		
		jdata.add("jlist", jarray);		//java객체
		
		out.write(gson.toJson(jdata));  //gson.toJson(변환할 객체)
		
		/* out.write(sitem+","+sname); */
		
	}else {
		System.out.println("재생목록에 추가 못함");
	}
	
%>