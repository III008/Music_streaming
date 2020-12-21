<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import = "com.music.dao.*,com.music.vo.*, java.util.*"%>
	
	<%
	String vid = request.getParameter("vid");
	MusicVideoDAO dao = new MusicVideoDAO();
	ArrayList<MusicVideoVO> list = dao.getList();
	ArrayList<MusicVideoVO> list2 = dao.getHotList();
	dao.getUpdateHits(vid);
	
	
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">

</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp" />

	<div class="movie_list">
		<section class="section1">
			<div>
				<div>뮤직비디오</div>
			</div>
			<hr>
			<div class="hot_movie">
				<div>인기 뮤비</div>
				<ul class="hot_movie_list">
				<% for (MusicVideoVO vo: list2){  %>
					<li><a href="movie_content.jsp?vid=<%= vo.getVid() %>"><img src="http://localhost:9000/Music_streaming/upload/<%= vo.getVsfile1() %>"></a>
						<dl>
							<dt><%= vo.getVtitle() %></dt>
							<dt><%=vo.getVartist() %></dt>
						</dl></li>
						<%} %>
				</ul>
			</div>
		</section>

		<section class="section2">
			<div class="entire_movie">
				<div>전체 영상</div>
				<ul class="entire_movie_list">
					<div class = "A">
					<%for (MusicVideoVO vo :list){ %>
					<li><a href="movie_content.jsp?vid=<%=vo.getVid()  %>"><img src="http://localhost:9000/Music_streaming/upload/<%= vo.getVsfile1() %>"></a>
						<dl>
							<dt><%=vo.getVtitle() %></dt>
							<dt><%=vo.getVartist() %></dt>
							<dt class="like_image"><a href= ""><img src="http://localhost:9000/Music_streaming/images/heart.PNG"></a><span></span>조회<%= vo.getVhits() %></dt>
						</dl>
					</li>
						<%} %>
						</div>
						<div class = "B">
						</div>
				</ul>
			</div>
		</section>
	</div>

	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>