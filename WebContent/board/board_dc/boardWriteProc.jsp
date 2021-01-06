<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.music.vo.*, com.music.dao.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>

<%-- <% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="vo" class="com.music.vo.MusicBoardVO"></jsp:useBean>
<jsp:setProperty property="*" name="vo"/> --%>

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
	MusicBoardDcVO vo = new MusicBoardDcVO();
	vo.setDc_btitle(multi.getParameter("dc_btitle"));
	vo.setDc_bcontent(multi.getParameter("dc_bcontent"));
	vo.setDc_bfile(multi.getOriginalFileName("dc_bfile"));
	vo.setDc_bsfile(multi.getFilesystemName("dc_bfile"));
	
	MusicBoardDcDAO dao = new MusicBoardDcDAO();
	boolean result = dao.getInsert(vo);
	
	if(result){
		response.sendRedirect("board_list.jsp");
	}else {
		response.sendRedirect("../../errorPage.jsp");
	}

%>


