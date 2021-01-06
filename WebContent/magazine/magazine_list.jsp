<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.music.vo.*, com.music.dao.*, java.util.*"%>
<%
	MusicMagazineDAO dao = new MusicMagazineDAO();
	ArrayList<MusicMagazineVO> list = dao.getList();
	ArrayList<MusicMagazineVO> list1 = dao.getList1(); 
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
	<!-- player -->
	<jsp:include page="../musicplayer.jsp" />
	
	<div class="content_menu">

		<div class="magazine_head">

			<h2>SIST MAGAZINE</h2>

			<section>
			<% for (MusicMagazineVO vo : list1) { %>
			<a href="magazine_content.jsp?mid=<%=vo.getMid()%>"><img src="http://localhost:9000/Music_streaming/upload/<%=vo.getMsfile()%>" class="head_img"></a>			
			<!-- 	<a href="http://localhost:9000/Music_streaming/magazine/magazine_content.jsp">
					<img	src="http://localhost:9000/Music_streaming/images/magazine_example.png"class="head_img">
				</a> -->

				<h2>
					<a href="magazine_content.jsp?mid=<%=vo.getMid()%>"><%=vo.getMtitle()%></a>
				</h2>
				<p>
					<a href="magazine_content.jsp?mid=<%=vo.getMid()%>"><%=vo.getMsummary()%></a>
				</p>
				<%} %>
			</section>
		</div>

		<section class="magazine_list">
			<ul>

				<%
					for (MusicMagazineVO vo : list) {
				%>
				<li class="list_item">
				<a href="magazine_content.jsp?mid=<%=vo.getMid()%>"><img src="http://localhost:9000/Music_streaming/upload/<%=vo.getMsfile()%>"></a>
					<div class="info">
						<a href="magazine_content.jsp?mid=<%=vo.getMid()%>"><%=vo.getMtitle()%></a>
					</div> <span><%=vo.getMdate()%></span></li>
				<%
					}
				%>


			</ul>
		</section>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>