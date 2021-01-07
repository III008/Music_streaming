<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.music.vo.*, com.music.dao.*"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>

<%
	//C:\Users\User\eclipse-workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Music_streaming\images
//1. 파일이 저장되는 경로 설정 : upload폴더 주소
String save_path = request.getServletContext().getRealPath("/upload");

//2. 파일 업로드 사이즈 설정
int max_size = 1024 * 1024 * 15;

//3. MultipartRequest 객체 생성 -- 생성되는 동시에 파일이 자동업로드(서버에 저장) 
//	객체 생성시 자동으로 upload 폴더에 파일이 업로드 됨
MultipartRequest multi = new MultipartRequest(request, save_path, max_size, "utf-8", new DefaultFileRenamePolicy());

//4. VO 객체 생성
//4-1. 선택된 파일이 있는 경우(새로운 파일 선택)

MusicChartVO vo = new MusicChartVO();
MusicChartDAO dao = new MusicChartDAO();
boolean result = false;

//공통
String mid = multi.getParameter("mid");

vo.setSong(multi.getParameter("song"));
vo.setArtist(multi.getParameter("artist"));
vo.setLyricist(multi.getParameter("lyricist"));

vo.setComposer(multi.getParameter("composer"));
vo.setLyrics(multi.getParameter("lyrics"));

//이미지, 파일 유효성 체크
if (multi.getOriginalFileName("music_image") != null) { //이미지 O
	if (multi.getOriginalFileName("music_file") != null) {
		//이미지 O, 음악파일 O
		vo.setMusic_image(multi.getOriginalFileName("music_image"));
		vo.setMusic_simage(multi.getFilesystemName("music_image"));
		vo.setMusic_file(multi.getOriginalFileName("music_file"));
		vo.setMusic_sfile(multi.getFilesystemName("music_file"));

		result = dao.updateMusic(vo, mid);
	} else {
		//이미지 O, 음악파일 X
		vo.setMusic_image(multi.getOriginalFileName("music_image"));
		vo.setMusic_simage(multi.getFilesystemName("music_image"));

		result = dao.updateMusicImg(vo, mid);
	}
} else { //이미지 X
	if (multi.getOriginalFileName("music_file") != null) {
		//이미지 X, 음악파일 O
		vo.setMusic_file(multi.getOriginalFileName("music_file"));
		vo.setMusic_sfile(multi.getFilesystemName("music_file"));

		result = dao.updateMusicFile(vo, mid);
	} else {
		//이미지X, 음악파일 X
		result = dao.updateMusicNofile(vo, mid);
	}
}

if (result) {
	response.sendRedirect("music_info.jsp?mid=" + mid);
} else {
	System.out.println("에러");
}
%>