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
	MusicBoardRhVO vo = new MusicBoardRhVO();
	MusicBoardRhDAO dao = new MusicBoardRhDAO();
	boolean result = false;
	
	if(multi.getOriginalFileName("rh_bfile") != null){
		vo.setRh_bid(multi.getParameter("rh_bid"));
		vo.setRh_btitle(multi.getParameter("rh_btitle"));
		vo.setRh_bcontent(multi.getParameter("rh_bcontent"));
		vo.setRh_bfile(multi.getOriginalFileName("rh_bfile"));
		vo.setRh_bsfile(multi.getFilesystemName("rh_bfile"));
		
		//DB연동 --> 새로운 파일 있는 경우
		//System.out.println("-----------> 파일이 있는 경우(새로운 파일)");
		result = dao.getUpdate(vo);
	}else{
		vo.setRh_bid(multi.getParameter("rh_bid"));
		vo.setRh_btitle(multi.getParameter("rh_btitle"));
		vo.setRh_bcontent(multi.getParameter("rh_bcontent"));
		
		//DB연동 ---> 새로운 파일 없음 : 기존 파일 유지!!
		//System.out.println("-----------> 파일선택 X, 기존 파일 유지");
		result = dao.getUpdateNofile(vo);
	}

	if(result){
		response.sendRedirect("board_list.jsp");
	}else{
		response.sendRedirect("../../errorPage.jsp");
	}

%> 
