<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     import="com.music.dao.*"%>
     
     <%
     String vid = request.getParameter("vid");
     MusicVideoDAO dao = new MusicVideoDAO();
     boolean result = dao.getDelete(vid);
     
     if(result){
    	 response.sendRedirect("movie_list.jsp");
     }else{
    	 
    	 response.sendRedirect("../../errorPage.jsp");
     }
     %>
