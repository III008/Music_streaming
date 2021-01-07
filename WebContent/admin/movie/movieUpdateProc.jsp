<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="com.music.vo.*, com.music.dao.*"%>
    

<%@page import = "com.oreilly.servlet.MultipartRequest"	%>
<%@page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>

<%
	String save_path = request.getServletContext().getRealPath("/upload");
	int max_size = 1024*1024*15;
	MultipartRequest multi = new MultipartRequest(request, save_path,max_size, "UTF-8",new DefaultFileRenamePolicy());
	
	MusicVideoVO vo = new MusicVideoVO();
	MusicVideoDAO dao = new MusicVideoDAO();
	boolean result = false;
	
	//뮤비사진, 가수사진 둘다 수정할 때 
	if((multi.getOriginalFileName("vfile1")!=null) && (multi.getOriginalFileName("vfile2")!=null)){
		vo.setVid(multi.getParameter("vid"));
		vo.setVtitle(multi.getParameter("vtitle"));
		vo.setVcontent(multi.getParameter("vcontent"));
		vo.setVintro(multi.getParameter("vintro"));
		vo.setVfile1(multi.getOriginalFileName("vfile1"));
		vo.setVsfile1(multi.getFilesystemName("vfile1"));
		vo.setVfile2(multi.getOriginalFileName("vfile2"));
		vo.setVsfile2(multi.getFilesystemName("vfile2"));
		
		result = dao.getUpdate(vo);
		
	//뮤비사진만 수정할 때
	}else if(multi.getOriginalFileName("vfile1")!=null ){
		vo.setVid(multi.getParameter("vid"));
		vo.setVartist(multi.getParameter("vartist"));
		vo.setVtitle(multi.getParameter("vtitle"));
		vo.setVcontent(multi.getParameter("vcontent"));
		vo.setVintro(multi.getParameter("vintro"));
		vo.setVfile1(multi.getOriginalFileName("vfile1"));
		vo.setVsfile1(multi.getFilesystemName("vfile1"));
		
		result = dao.getUpdateVfile1(vo);
		
	//가수사진만 수정할 때
	}else if(multi.getOriginalFileName("vfile2")!=null ){
		vo.setVid(multi.getParameter("vid"));
		vo.setVartist(multi.getParameter("vartist"));
		vo.setVtitle(multi.getParameter("vtitle"));
		vo.setVcontent(multi.getParameter("vcontent"));
		vo.setVintro(multi.getParameter("vintro"));
		vo.setVfile2(multi.getOriginalFileName("vfile2"));
		vo.setVsfile2(multi.getFilesystemName("vfile2"));
		
		result = dao.getUpdateVfile2(vo);
		
	//뮤비사진, 가수사진 둘다 수정하지 않을 때 
	}else if((multi.getOriginalFileName("vfile1") ==null) && (multi.getOriginalFileName("vfile2")==null)){
		vo.setVid(multi.getParameter("vid"));
		vo.setVartist(multi.getParameter("vartist"));
		vo.setVtitle(multi.getParameter("vtitle"));
		vo.setVcontent(multi.getParameter("vcontent"));
		vo.setVintro(multi.getParameter("vintro"));
		
		result = dao.getUpdateNofile(vo);
	}
	
	
	
	
	
	if(result){
		response.sendRedirect("movie_list.jsp");
	}else{
		response.sendRedirect("../../errorPage.jsp");
		
	}
%>

