<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.music.dao.*, com.music.vo.*"%>
<%
	String mid = request.getParameter("mid");
	MusicMagazineDAO dao = new MusicMagazineDAO();
	MusicMagazineVO vo = dao.getContent(mid);
	dao.getUpdateHits(mid);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://localhost:9000/Music_streaming/css/music_streaming.css">
<style>
</style>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>

	<div class="content_title">
		<h1><%=vo.getMtitle() %></h1>
		<p><%=vo.getMsummary() %></p>
	</div>

	<div class="magazine_content">
		<div class="magazine_subheading">
			<h2><%=vo.getMsubtitle() %></h2>
		</div>

		<section>
			<% if(vo.getMsfile() != null){ %>
			<img
				src="http://localhost:9000/Music_streaming/upload/<%=vo.getMsfile()%>"
				width="50%">
			<% } %>
			<p><%=vo.getMcontent() %></p>
		</section>

	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>




