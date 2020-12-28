<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="com.music.dao.*, com.music.vo.*, java.util.*, com.google.gson.*"%>
<%
	String mid = request.getParameter("mid");
	String id = request.getParameter("id");
	System.out.println(mid+id);

	MypageLikeDAO dao = new MypageLikeDAO();
	boolean result = dao.deleteMusicLike(mid,id); 
	
	if(result) {
		//좋아요 버튼 잘 반영
		ArrayList<MypageLikeVO> list = dao.getMusicLike(id); 
		//list객체의 데이터를 JSON 객체로 변환작업 필요 ---> JSON 라이브러리 존재(gson)
		JsonArray jarray = new JsonArray();
		JsonObject jdata = new JsonObject();
		Gson gson = new Gson();
		
		for(MypageLikeVO vo : list){
			JsonObject jobj = new JsonObject();
			jobj.addProperty("lid", vo.getLid());  //{'rno':1}
			jobj.addProperty("id", vo.getId());
			jobj.addProperty("mid", vo.getMid());
			jobj.addProperty("vid", vo.getVid());
			
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
		
		//좋아요 수 반영
		MusicChartDAO dao1 = new MusicChartDAO();
		dao1.getUpdateHitsMinus(mid);
	
	}else {
		System.out.println("좋아요 반영 못함");
	}
	
%>