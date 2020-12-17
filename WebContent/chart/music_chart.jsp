<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.music.dao.MusicChartDAO, com.music.vo.MusicChartVO, java.util.*"%>
<%
	MusicChartDAO dao = new MusicChartDAO(); 
	ArrayList<MusicChartVO> list1 = dao.getList1();  
	ArrayList<MusicChartVO> list2 = dao.getList2(); 
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
</head>
<body class="music_chart">
	<!-- header -->
	<jsp:include page="../header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="content">
		<section class="section1">
			<div>
				<h1>
					<label>음악 차트</label>
				</h1>
			</div>
		</section>
		<section class="section2">
			<div>
				<h3>
					<img src="http://localhost:9000/Music_streaming/images/chart_img2.png"> 
					<label class="top5_1">조회 TOP 5</label>
				</h3>
				<div class="line"></div>
				<div class="part">
					<% for(int i=0; i<2; i++){ %>
					<table class="chart1">
						<tr>
							<td rowspan="2" id="music_image"><img src="http://localhost:9000/Music_streaming/images/<%= list1.get(i).getMusic_image() %>"></td>
							<td rowspan="2" id="rank"><label><%= list1.get(i).getRno() %></label></td>
							<td id="song"><a href="http://localhost:9000/Music_streaming/chart/music_content.jsp?mid=<%= list1.get(i).getMid() %>"><%= list1.get(i).getSong() %></a></td>
						</tr>
						<tr>
							<td id="artist"><label><%= list1.get(i).getArtist() %></label></td>
						</tr>
						
					</table>
					<% } %>
				</div>
				<div class="part">
					<% for(int i=2; i<4; i++){ %>
					<table class="chart1">
						<tr>
							<td rowspan="2" id="music_image"><img src="http://localhost:9000/Music_streaming/images/<%= list1.get(i).getMusic_image() %>"></td>
							<td rowspan="2" id="rank"><label><%= list1.get(i).getRno() %></label></td>
							<td id="song"><a href="http://localhost:9000/Music_streaming/chart/music_content.jsp?mid=<%= list1.get(i).getMid() %>"><%= list1.get(i).getSong() %></a></td>
						</tr>
						<tr>
							<td id="artist"><label><%= list1.get(i).getArtist() %></label></td>
						</tr>
					</table>
					<% } %>
				</div>
				<div class="part">
					<% for(int i=4; i<5; i++){ %>
					<table class="chart1">
						<tr>
							<td rowspan="2" id="music_image"><img src="http://localhost:9000/Music_streaming/images/<%= list1.get(i).getMusic_image() %>"></td>
							<td rowspan="2" id="rank"><label><%= list1.get(i).getRno() %></label></td>
							<td id="song"><a href="http://localhost:9000/Music_streaming/chart/music_content.jsp?mid=<%= list1.get(i).getMid() %>"><%= list1.get(i).getSong() %></a></td>
						</tr>
						<tr>
							<td id="artist"><label><%= list1.get(i).getArtist() %></label></td>
						</tr>
					</table>
					<% } %>
				</div>
			</div>
		</section>
		<section class="section3">
			<div>
				<h3>
					<img src="http://localhost:9000/Music_streaming/images/chart_img2.png">
					<label class="top5_2">최신 TOP 5</label>
				</h3>
				<div class="line"></div>
				<div class="part">
					<% for(int i=0; i<2; i++){ %>
					<table class="chart2">
						<tr>
							<td rowspan="2" id="music_image"><img src="http://localhost:9000/Music_streaming/images/<%= list2.get(i).getMusic_image() %>"></td>
							<td rowspan="2" id="rank"><label><%= list2.get(i).getRno() %></label></td>
							<td id="song"><a href="http://localhost:9000/Music_streaming/chart/music_content.jsp?mid=<%= list2.get(i).getMid() %>"><%= list2.get(i).getSong() %></a></td>
						</tr>
						<tr>
							<td id="artist"><label><%= list2.get(i).getArtist() %></label></td>
						</tr>
						
					</table>
					<% } %>
				</div>
				<div class="part">
					<% for(int i=2; i<4; i++){ %>
					<table class="chart2">
						<tr>
							<td rowspan="2" id="music_image"><img src="http://localhost:9000/Music_streaming/images/<%= list2.get(i).getMusic_image() %>"></td>
							<td rowspan="2" id="rank"><label><%= list2.get(i).getRno() %></label></td>
							<td id="song"><a href="http://localhost:9000/Music_streaming/chart/music_content.jsp?mid=<%= list2.get(i).getMid() %>"><%= list2.get(i).getSong() %></a></td>
						</tr>
						<tr>
							<td id="artist"><label><%= list2.get(i).getArtist() %></label></td>
						</tr>
					</table>
					<% } %>
				</div>
				<div class="part">
					<% for(int i=4; i<5; i++){ %>
					<table class="chart2">
						<tr>
							<td rowspan="2" id="music_image"><img src="http://localhost:9000/Music_streaming/images/<%= list2.get(i).getMusic_image() %>"></td>
							<td rowspan="2" id="rank"><label><%= list2.get(i).getRno() %></label></td>
							<td id="song"><a href="http://localhost:9000/Music_streaming/chart/music_content.jsp?mid=<%= list2.get(i).getMid() %>"><%= list2.get(i).getSong() %></a></td>
						</tr>
						<tr>
							<td id="artist"><label><%= list2.get(i).getArtist() %></label></td>
						</tr>
					</table>
					<% } %>
				</div>
			</div>
		</section>
	</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>