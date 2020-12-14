<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				<div class="line"></div>
				<h3>
					<img src="http://localhost:9000/Music_streaming/images/chart_img2.png"> 
					<label class="top5_1">조회 TOP 5</label>
				</h3>
				<div class="line"></div>
				<div class="part">
					<table class="chart1_top1">
						<tr>
							<td rowspan="2" id="music_image"><img src="http://localhost:9000/Music_streaming/images/mchart1_top1.jpg"></td>
							<td rowspan="2" id="rank"><label>1</label></td>
							<td id="song"><a href="http://localhost:9000/Music_streaming/chart/music_content.jsp">Dynamite</a></td>
						</tr>
						<tr>
							<td id="artist"><label>방탄소년단</label></td>
						</tr>
					</table>
					<table class="chart1_top2">
						<tr>
							<td rowspan="2" id="music_image"><img src="http://localhost:9000/Music_streaming/images/mchart1_top2.jpg"></td>
							<td rowspan="2" id="rank"><label>2</label></td>
							<td id="song"><a href="#">잠이 오질 않네요</a></td>
						</tr>
						<tr>
							<td id="artist"><label>장범준</label></td>
						</tr>
					</table>
				</div>
				<div class="part">
					<table class="chart1_top3">
						<tr>
							<td rowspan="2" id="music_image"><img src="http://localhost:9000/Music_streaming/images/mchart1_top3.jpg"></td>
							<td rowspan="2" id="rank"><label>3</label></td>
							<td id="song"><a href="#">Lovesick Girls</a></td>
						</tr>
						<tr>
							<td id="artist"><label>BLACKPINK</label></td>
						</tr>
					</table>
					<table class="chart1_top4">
						<tr>
							<td rowspan="2" id="music_image"><img src="http://localhost:9000/Music_streaming/images/mchart1_top4.jpg"></td>
							<td rowspan="2" id="rank"><label>4</label></td>
							<td id="song"><a href="#">힘든 건 사랑이 아니다</a></td>
						</tr>
						<tr>
							<td id="artist"><label>임창정</label></td>
						</tr>
					</table>
				</div>
				<div class="part">
					<table class="chart1_top5">
						<tr>
							<td rowspan="2" id="music_image"><img src="http://localhost:9000/Music_streaming/images/mchart1_top5.jpg"></td>
							<td rowspan="2" id="rank"><label>5</label></td>
							<td id="song"><a href="#">DON'T TOUCH ME</a></td>
						</tr> 
						<tr>
							<td id="artist"><label>환불원정대</label></td>
						</tr>
					</table>
				</div>
			</div>
		</section>
		<section class="section3">
			<div>
				<div class="line"></div>
				<h3>
					<img src="http://localhost:9000/Music_streaming/images/chart_img2.png">
					<label class="top5_2">최신 TOP 5</label>
				</h3>
				<div class="line"></div>
				<div class="part">
					<table class="chart2_top1">
						<tr>
							<td rowspan="2" id="music_image"><img src="http://localhost:9000/Music_streaming/images/mchart2_top1.jpg"></td>
							<td rowspan="2" id="rank"><label>1</label></td>
							<td id="song"><a href="#">Black Mamba</a></td>
						</tr>
						<tr>
							<td id="artist"><label>aespa</label></td>
						</tr>
					</table>
					<table class="chart2_top2">
						<tr>
							<td rowspan="2" id="music_image"><img src="http://localhost:9000/Music_streaming/images/mchart2_top2.jpg"></td>
							<td rowspan="2" id="rank"><label>2</label></td>
							<td id="song"><a href="#">밤하늘의 별을 (2020)</a></td>
						</tr>
						<tr>
							<td id="artist"><label>경서</label></td>
						</tr>
					</table>
				</div>
				<div class="part">
					<table class="chart2_top3">
						<tr>
							<td rowspan="2" id="music_image"><img src="http://localhost:9000/Music_streaming/images/mchart2_top3.jpg"></td>
							<td rowspan="2" id="rank"><label>3</label></td>
							<td id="song"><a href="#">알았다면</a></td>
						</tr>
						<tr>
							<td id="artist"><label>길구봉구</label></td>
						</tr>
					</table>
					<table class="chart2_top4">
						<tr>
							<td rowspan="2" id="music_image"><img src="http://localhost:9000/Music_streaming/images/mchart2_top4.jpg"></td>
							<td rowspan="2" id="rank"><label>4</label></td>
							<td id="song"><a href="#">서로</a></td>
						</tr>
						<tr>
							<td id="artist"><label>옥상달빛</label></td>
						</tr>
					</table>
				</div>
				<div class="part">
					<table class="chart2_top5">
						<tr>
							<td rowspan="2" id="music_image"><img src="http://localhost:9000/Music_streaming/images/mchart2_top5.jpg"></td>
							<td rowspan="2" id="rank"><label>5</label></td>
							<td id="song"><a href="#">니가 없다면</a></td>
						</tr>
						<tr>
							<td id="artist"><label>김나영</label></td>
						</tr>
					</table>
				</div>
			</div>
		</section>
	</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>