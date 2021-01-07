<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.music.dao.*, java.util.*,com.music.vo.*"%>

<%
	MusicVideoDAO dao = new MusicVideoDAO();

	String vidnum = request.getParameter("vidnum");
	
	List<String> vidList = Arrays.asList(vidnum.split(","));
	
	if(vidList != null){
		 System.out.println(vidList);
			 
		for(int i=0; i<vidList.size(); i++){
			dao.getDeleteChk(vidList.get(i));
		}

	}
%>