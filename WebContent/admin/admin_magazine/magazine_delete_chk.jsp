<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.music.dao.*, java.util.*,com.music.vo.*"%>

<%
	MusicMagazineDAO dao = new MusicMagazineDAO();

	String midnum = request.getParameter("midnum");
	
	List<String> midList = Arrays.asList(midnum.split(","));
	
	if(midList != null){
			 /* nidList.add(nidnum); */ 
		 System.out.println(midList);
			 
		for(int i=0; i<midList.size(); i++){
			dao.getDeleteChk(midList.get(i));
		}

	}
%>