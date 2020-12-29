<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "com.music.vo.*, com.music.dao.*"%>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>    
<%
	String save_path = request.getServletContext().getRealPath("/upload");
	int max_size = 1024*1024*15;
	MultipartRequest multi = new MultipartRequest(request, save_path, max_size,
			"UTF-8",new DefaultFileRenamePolicy());
	
	MusicVideoVO vo = new MusicVideoVO();
	vo.setVartist(multi.getParameter("vartist"));
	vo.setVtitle(multi.getParameter("vtitle"));
	vo.setVcontent(multi.getParameter("vcontent"));
	vo.setVintro(multi.getParameter("vintro"));
	vo.setVfile1(multi.getOriginalFileName("vfile1"));
	vo.setVsfile1(multi.getFilesystemName("vfile1"));	
	
	vo.setVfile2(multi.getOriginalFileName("vfile2"));
	vo.setVsfile2(multi.getFilesystemName("vfile2"));
	
	MusicVideoDAO dao = new MusicVideoDAO();
	boolean result = dao.getInsert(vo);
	
	if(result){
		response.sendRedirect("movie_list.jsp");
	}else{
		
		response.sendRedirect("../../errorPage.jsp");
	}
%>