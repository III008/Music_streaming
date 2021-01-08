<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import ="com.music.vo.*, com.music.dao.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>

<%
//1. 파일이 저장되는 경로 설정 : upload폴더 주소
	String save_path = request.getServletContext().getRealPath("/upload"); 
	//System.out.println("path==>>" + save_path);	

	//2. 파일 업로드 사이즈 설정
	int max_size = 1024*1024*15;

	//3. MultipartRequest 객체 생성 -- 생성되는 동시에 파일이 자동업로드(서버에 저장)
	MultipartRequest multi 
		= new MultipartRequest(request, save_path, max_size, "utf-8", new DefaultFileRenamePolicy()); 
	
	//4. VO 객체 생성
	//4-1. 선택된 파일이 있는 경우 (새로운 파일 선택)
	String rb_bid = multi.getParameter("rb_bid");
	
	MusicBoardRbVO vo = new MusicBoardRbVO();
	MusicBoardRbDAO dao = new MusicBoardRbDAO();
	boolean result = false;
	
	if(multi.getOriginalFileName("rb_bfile") != null){
		vo.setRb_bid(multi.getParameter("rb_bid"));
		vo.setRb_btitle(multi.getParameter("rb_btitle"));
		vo.setRb_bcontent(multi.getParameter("rb_bcontent"));
		vo.setRb_bfile(multi.getOriginalFileName("rb_bfile"));
		vo.setRb_bsfile(multi.getFilesystemName("rb_bfile"));
		
		//DB연동 --> 새로운 파일 있는 경우
		//System.out.println("-----------> 파일이 있는 경우(새로운 파일)");
		result = dao.getUpdate(vo);
	}else{
		vo.setRb_bid(multi.getParameter("rb_bid"));
		vo.setRb_btitle(multi.getParameter("rb_btitle"));
		vo.setRb_bcontent(multi.getParameter("rb_bcontent"));
		
		//DB연동 ---> 새로운 파일 없음 : 기존 파일 유지!!
		//System.out.println("-----------> 파일선택 X, 기존 파일 유지");
		result = dao.getUpdateNofile(vo);
	}

	if(result){
		response.sendRedirect("board_content.jsp?rb_bid="+rb_bid);
	}else{
		response.sendRedirect("http://localhost:9000/Music_streaming/errorPage.jsp");
	}

%> 
