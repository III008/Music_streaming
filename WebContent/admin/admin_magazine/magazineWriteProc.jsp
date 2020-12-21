<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     import="com.music.vo.*, com.music.dao.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>  

<%
	String save_path = request.getServletContext().getRealPath("/upload"); 
	
	int max_size = 1024*1024*15;

	MultipartRequest multi = new MultipartRequest(request,save_path,max_size,"utf-8", new DefaultFileRenamePolicy());


	MusicMagazineVO vo = new MusicMagazineVO();
	vo.setMtitle(multi.getParameter("mtitle"));
	vo.setMcontent(multi.getParameter("mcontent"));
	vo.setMfile(multi.getOriginalFileName("mfile"));
	vo.setMsfile(multi.getFilesystemName("mfile"));
	
	MusicMagazineDAO dao = new MusicMagazineDAO();
	boolean result = dao.getInsert(vo);

	if(result){
		response.sendRedirect("magazine_list.jsp");
	}else{
		response.sendRedirect("../errorPage.jsp");
	}
%>