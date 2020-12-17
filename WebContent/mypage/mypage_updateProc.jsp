<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.music.vo.*, com.music.dao.*"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>

<% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="vo" class="com.music.vo.MusicMemberVO"></jsp:useBean><!-- 객체생성 -->
<jsp:setProperty name="vo" property="*"/>
<%
    // 파일이 저장되는 경로
    //C:\Users\User\eclipse-workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Music_streaming\images
    String path = request.getSession().getServletContext().getRealPath("images");

    int size = 1024 * 1024 * 10; // 저장가능한 파일 크기
    String file = ""; // 업로드 한 파일의 이름(이름이 변경될수 있다)
    String originalFile = ""; // 이름이 변경되기 전 실제 파일 이름

    // 실제로 파일 업로드하는 과정
    try{
        MultipartRequest multi = new MultipartRequest(request, path, size, "UTF-8", new DefaultFileRenamePolicy());

        Enumeration files = multi.getFileNames();
        String str = (String)files.nextElement(); // 파일 이름을 받아와 string으로 저장

        file = multi.getFilesystemName(str); // 업로드 된 파일 이름 가져옴
        originalFile = multi.getOriginalFileName(str); // 원래의 파일이름 가져옴
        
        //수정폼 업로드
        vo.setName(multi.getParameter("name"));
        vo.setPass(multi.getParameter("pass"));
        
        String email1 = multi.getParameter("email1"); 
        String email2 = multi.getParameter("email2"); 
        vo.setEmail(email1+"@"+email2);
        vo.setEmail_agr(multi.getParameter("email_agr"));
        
        String cp1 = multi.getParameter("cp1"); 
        String cp2 = multi.getParameter("cp2"); 
        String cp3 = multi.getParameter("cp3"); 
        vo.setCp(cp1+"-"+cp2+"-"+cp3);
        vo.setSms_agr(multi.getParameter("sms_agr"));
        vo.setGenre(multi.getParameterValues("genre")); 
        
        System.out.println(vo.getName());
        System.out.println(vo.getPass());
        System.out.println(vo.getEmail());
        System.out.println(vo.getEmail_agr());
        System.out.println(vo.getCp());
        System.out.println(vo.getSms_agr());
        System.out.println(vo.getGenre_list());

    } catch (Exception e) {
        e.printStackTrace();
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
    file upload success
    <h1><%= file %></h1>
    <h1><%= originalFile %></h1>
</body>
</html>