<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.music.dao.*, java.util.*"%>
    
<%
	MypageLikeDAO dao = new MypageLikeDAO();

	String rownum = request.getParameter("rownum");
	String id = request.getParameter("id");
	
	String[] rownumList = rownum.split(",");
	ArrayList<String> midList = new ArrayList<String>(); 
	
	if(rownumList != null){
		for(int i=0; i<rownumList.length; i++){
			int rownum_int = Integer.parseInt(rownumList[i]);
			/* System.out.println(rownum_int); */
			
			String mid = dao.getMid(id, rownum_int); 
			/* System.out.println(mid); */
			
			midList.add(mid);
			
		}
		/* System.out.println(midList); */
		
		//playlist에 넣기
		MusicPlaylistDAO dao2 = new MusicPlaylistDAO();
		
		for(int i=0; i<midList.size(); i++){
			dao2.insertMusiclist(id, midList.get(i));
		}
	}

%>
