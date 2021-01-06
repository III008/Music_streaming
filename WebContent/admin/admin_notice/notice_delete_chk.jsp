<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.music.dao.*, java.util.*,com.music.vo.*"%>

<%
	MusicNoticeDAO dao = new MusicNoticeDAO();

	String nidnum = request.getParameter("nidnum");
	
	List<String> nidList = Arrays.asList(nidnum.split(","));
	
	if(nidList != null){
			 /* nidList.add(nidnum); */ 
		 System.out.println(nidList);
			 
		for(int i=0; i<nidList.size(); i++){
			dao.getDeleteChk(nidList.get(i));
		}

	}
%>