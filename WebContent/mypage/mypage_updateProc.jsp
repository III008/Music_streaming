<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.music.vo.*, com.music.dao.*"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>

<%
    //C:\Users\User\eclipse-workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Music_streaming\images
    //1. 파일이 저장되는 경로 설정 : upload폴더 주소
	String save_path = request.getServletContext().getRealPath("/images");
			
	//2. 파일 업로드 사이즈 설정
	int max_size = 1024*1024*15;
			
	//3. MultipartRequest 객체 생성 -- 생성되는 동시에 파일이 자동업로드(서버에 저장) 
	//	객체 생성시 자동으로 upload 폴더에 파일이 업로드 됨
	MultipartRequest multi 
		= new MultipartRequest(request, save_path, max_size, 
								"utf-8", new DefaultFileRenamePolicy());

	//4. VO 객체 생성
	//4-1. 선택된 파일이 있는 경우(새로운 파일 선택)
	
	//아이디 넘겨주기
    /* String id = "test1234"; */
    String id = multi.getParameter("id");
    
	MusicMemberVO vo = new MusicMemberVO();
	MusicMemberDAO dao = new MusicMemberDAO();
	boolean result = false;
	
	if(multi.getOriginalFileName("file") != null) {
	    //수정폼 업로드
	    vo.setName(multi.getParameter("name"));
	    vo.setNickname(multi.getParameter("nickname"));
	    vo.setPass(multi.getParameter("pass"));
	        
	    vo.setEmail1(multi.getParameter("email1")); 
	    vo.setEmail2(multi.getParameter("email2")); 
	        
	    vo.setEmail_agr(multi.getParameter("email_agr"));
	        
	    vo.setCp1(multi.getParameter("cp1")); 
	    vo.setCp2(multi.getParameter("cp2")); 
	    vo.setCp3(multi.getParameter("cp3")); 
	    vo.setSms_agr(multi.getParameter("sms_agr"));
	    vo.setGenre(multi.getParameterValues("genre")); 
		
	    vo.setBfile(multi.getOriginalFileName("file"));
	    vo.setBsfile(multi.getFilesystemName("file"));   
	    
	    //DB연동 --> 새로운 파일 있는 경우
	  	//System.out.println("--------> 파일이 있는 경우(새로운 파일)");
	  	result = dao.getUpdate(vo, id);
	}else {
		
		vo.setName(multi.getParameter("name"));
		vo.setNickname(multi.getParameter("nickname"));
	    vo.setPass(multi.getParameter("pass"));
	        
	    vo.setEmail1(multi.getParameter("email1")); 
	    vo.setEmail2(multi.getParameter("email2")); 
	        
	    vo.setEmail_agr(multi.getParameter("email_agr"));
	        
	    vo.setCp1(multi.getParameter("cp1")); 
	    vo.setCp2(multi.getParameter("cp2")); 
	    vo.setCp3(multi.getParameter("cp3")); 
	    vo.setSms_agr(multi.getParameter("sms_agr"));
	    vo.setGenre(multi.getParameterValues("genre"));
		
		//DB연동 --> 새로운 파일 없는 경우 : 기존 파일 유지!!
		//System.out.println("--------> 파일선택 X, 기존 파일 유지");
		result = dao.getUpdateNofile(vo, id);  
	}
    	
   if(result){
    	response.sendRedirect("mypage_home.jsp?id="+id);
   }else{
    	System.out.println("에러");
    }

   
%>
