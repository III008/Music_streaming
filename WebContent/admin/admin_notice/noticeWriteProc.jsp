<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
     import="com.music.vo.*, com.music.dao.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>  

<%
	String save_path = request.getServletContext().getRealPath("/upload"); 
	
	int max_size = 1024*1024*15;

	MultipartRequest multi = new MultipartRequest(request,save_path,max_size,"utf-8", new DefaultFileRenamePolicy());


	MusicNoticeVO vo = new MusicNoticeVO();
	vo.setNtitle(multi.getParameter("ntitle"));
	vo.setNcontent(multi.getParameter("ncontent"));
	vo.setNfile(multi.getOriginalFileName("nfile"));
	vo.setNsfile(multi.getFilesystemName("nfile"));
	
	MusicNoticeDAO dao = new MusicNoticeDAO();
	boolean result = dao.getInsert(vo);

	if(result){
		response.sendRedirect("notice_list.jsp");
	}else{
		response.sendRedirect("../errorPage.jsp");
	}
%>