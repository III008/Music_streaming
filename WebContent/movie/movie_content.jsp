<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	 import = "com.music.vo.*, com.music.dao.*, java.util.*"%>
	 <%
	 String vid = request.getParameter("vid");
	 String vartist = request.getParameter("vartist");
	 MusicVideoDAO dao = new MusicVideoDAO();
	 MusicVideoVO vo = dao.getContent(vid);
	 
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


	<div class="movie_info">
		<section class="section1">
			<div>영상 정보</div>
			<div>
			<%= vo.getVcontent() %>
			</div>
			<div class="movie_detail">
				<div>
					<div><%=vo.getVtitle() %></div>
					<div>조회수 : <%=vo.getVhits() %></div>
				</div>
				<div><%=vo.getVdate() %></div>
				<div>
					<div>
						<img
							src="http://localhost:9000/Music_streaming/images/<%=vo.getVartist_image() %>">
						<span><%=vo.getVartist() %></span>
					</div>
				</div>
				<div><%= vo.getVintro() %></div>
			</div>
			<div class="same_artist">같은 아티스트의 뮤직비디오</div>
			<div>
				<ul class="recommend_movie_list">
					<li><a href="#"><img
							src=""></a>
						<dl>
							<dt></dt>
							<dt></dt>
						</dl></li>
				</ul>
			</div>
		</section>

	</div>
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>