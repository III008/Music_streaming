<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.music.dao.*, java.util.*"%>
    
<%
	MusicChartDAO dao = new MusicChartDAO();

	String rownum = request.getParameter("rownum");
	
	String[] rownumList = rownum.split(",");
	ArrayList<String> midList = new ArrayList<String>(); 
	
	if(rownumList != null){
		for(int i=0; i<rownumList.length; i++){
			int rownum_int = Integer.parseInt(rownumList[i]);
			
			String mid = dao.getMid(rownum_int);
			
			midList.add(mid);
			
		}
		/* System.out.println(midList); */
		
		for(int i=0; i<midList.size(); i++){
			dao.getDeleteChk(midList.get(i));
		}
	}

%>