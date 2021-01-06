<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.music.dao.*, com.music.vo.*, java.util.*"%>
<%
	MusicChartDAO dao = new MusicChartDAO();
	int start = 1;
	int end = 4;
	ArrayList<MusicChartVO> list1 = dao.getList1(start,end); 
	MusicMagazineDAO mdao = new MusicMagazineDAO();
	ArrayList<MusicMagazineVO> mlist = mdao.getList2();
%> 
<!DOCTYPE html>
<html>
<head>
<!--reset-->
<meta charset="UTF-8"
	  name="viewport" content="width=device-width, initial-scale=1">
<title>Index</title>
<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
	
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="header.jsp" />
	
	<!-- player -->
	<jsp:include page="musicplayer.jsp" />

	<!-- content -->
	<div class="content">
		<section class="magazine">
			<div class="part">
				<table class="tb">
					<tr>
						<td rowspan="3"><img
							src="http://localhost:9000/Music_streaming/images/represent2.png"></td>
						<td><button type="button">GENRE</button></td>
					</tr>

					<tr>
						<td>차트를 달리는 래퍼 : 잭 할로우 물라토</td>
					</tr>

					<tr>
						<td>아직 한 달 남짓한 시간이 남았지만, <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						2020년 역시 힙합의 해라고 해도 과언이 아니지 않을까?</td>
					</tr>

				</table>
			</div>
			<div class="part">
				<!-- 캐러셀 start -->
				<div id="demo" class="carousel slide" data-ride="carousel">
				
					<!-- Indicators -->
					<ul class="carousel-indicators">
						<li data-target="#demo" data-slide-to="0" class="active"></li>
						<li data-target="#demo" data-slide-to="1"></li>
						<li data-target="#demo" data-slide-to="2"></li>
						<li data-target="#demo" data-slide-to="3"></li>
						<li data-target="#demo" data-slide-to="4"></li>
					</ul>
					  
					<!-- The slideshow -->
					<div class="carousel-inner">
						<div class="carousel-item active">
						  <img src="http://localhost:9000/Music_streaming/images/ban_1.jpg" width="316" height="380">
						</div>
						<div class="carousel-item">
						  <img src="http://localhost:9000/Music_streaming/images/ban_2.jpg" width="316" height="380">
						</div>
						<div class="carousel-item">
						  <img src="http://localhost:9000/Music_streaming/images/ban_3.jpg" width="316" height="380">
						</div>
						<div class="carousel-item">
						  <img src="http://localhost:9000/Music_streaming/images/ban_4.jpg" width="316" height="380">
						</div>
						<div class="carousel-item">
						  <img src="http://localhost:9000/Music_streaming/images/ban_5.jpg" width="316" height="380">
						</div>
					</div>
					  
					<!-- Left and right controls -->
					<a class="carousel-control-prev" href="#demo" data-slide="prev">
					  	<span class="carousel-control-prev-icon"></span>
					</a>
					<a class="carousel-control-next" href="#demo" data-slide="next">
				   		<span class="carousel-control-next-icon"></span>
				 	</a>
				</div>
				
				<!-- 캐러셀 end -->
			</div>
		</section>
		
		<section class="magazine2">
			<div id="navbar">
				<a class="active"
					href="http://localhost:9000/Music_streaming/magazine/magazine_list.jsp">매거진 </a>
			</div>
				
			<div class="content2">
				<% if(mlist.size() != 0) { %>
				<%
					for (MusicMagazineVO vo : mlist) {
				%>		
				<div>
					<a href="http://localhost:9000/Music_streaming/magazine/magazine_content.jsp?mid=<%=vo.getMid()%>"><img src="http://localhost:9000/Music_streaming/upload/<%=vo.getMsfile()%>"></a>
					<dl>
						<dt><a href="http://localhost:9000/Music_streaming/magazine/magazine_content.jsp?mid=<%=vo.getMid()%>" class="mtitle_font"><%=vo.getMtitle()%></a></dt>
						<dt><span class="mdate_font"><%=vo.getMdate()%></span></dt>
					</dl>
				</div>
						<%}	%>
					<%}%>
			</div>
		</section>
		
		<section class="magazine2" id="music"><!-- 음악  -->
			<div id="navbar">
				<a class="active"
					href="http://localhost:9000/Music_streaming/chart/music_chart.jsp">음악 </a>
			</div>
			<div class="content2" id="music_content">
				<% if(list1.size() != 0) { %>
					<% for(MusicChartVO vo : list1) {%>
					<div>
						<a href="http://localhost:9000/Music_streaming/chart/music_content.jsp?mid=<%= vo.getMid() %>"><img
							src="http://localhost:9000/Music_streaming/upload/<%= vo.getMusic_simage() %>"></a>
						<dl>
							<dt><%= vo.getSong() %></dt>
							<dt><%= vo.getArtist() %></dt>
						</dl>
					</div>
					<% } %>
				<% } %>
				
			</div>
		</section>

		<section class="movie">
			<div id="navbar">
				<a class="active"
				href="http://localhost:9000/Music_streaming/movie/movie_list.jsp">뮤직비디오 </a>
			</div>
			<div class="content2">
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/D1PvIWdJ8xo?controls=0"
					frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<span class="aaa"></span>
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/gIOyB9ZXn8s?controls=0"
					frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
			</div>
			<div>
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/XsX3ATc3FbA?controls=0"
					frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<span class="ccc"></span>
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/mrAIqeULUL0?controls=0"
					frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
			</div>
		</section>
	</div>
	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>