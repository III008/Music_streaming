<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div.content {
		width:75%;
		padding:30px 0;
		text-align: center;
		display: inline-block;
	}
	div.content>section.section1, 
	div.content>section.section2, 
	div.content>section.section3 {
		margin:auto;
		padding-top:10px;
		text-align: center;
	}
	div section.section1 img { 
		width:65px; height:65px;
		margin: 8px 20px;
	}
	div section.section2 img,
	div section.section3 img{ 
		width:40px; height:40px;
		margin: 8px 13px;
	}
	div section.section1 label{
		position:absolute;
		padding-top:15px;
	}
	div section.section2 label.top5_1,
	div section.section3 label.top5_2 {
		position:absolute;
		padding-top:13px;
	}
	div.line {
		border:1px solid rgb(242,242,242);
		width:133%;
		/* width:107.2%; */
		/* padding-left:110px; */
	}
	/* div section.section1 {
		margin-left:-1200px;
		padding-bottom:25px;
	}
	div section.section2,
	div section.section3 {
		margin-left:-100px;
	} */
	div section.section1>div>h1 {
		display:inline-block;
		text-align:center;
		width:100%;
		font-size:40px;
		font-weight:1000;
	}
	div section.section2>div>h3,
	div section.section3>div>h3 {
		display:inline-block;
		text-align:left;
		padding-left:70px;
		/* width:100%; */
		/* margin:5px 0 5px -1100px; */
		font-size:23px;
		font-weight:1000;
	}
	div section.section2 div>div.part,
	div section.section3 div>div.part {
		display:inline-block;
		text-align:left;
		padding:30px 80px 80px 0;
	}
	div section.section2 div>div.part:last-child,
	div section.section3 div>div.part:last-child {
		padding-right:0;
	}
	div section.section2 div>div:last-child,
	div section.section3 div>div:last-child {
		position:absolute;
	}
	div section.section2 table,
	div section.section2 table td,
	div section.section3 table,
	div section.section3 table td {
		border-collapse:collapse;
	}
	div section.section2 table,
	div section.section3 table {
		border-bottom:1px solid lightgray;
		border-radius: 10px;
		width:470px; height:100px;
	}
	div section.section2 table td,
	div section.section3 table td {
		padding:10px 0;
	}
	div section.section2 table td#music_image,
	div section.section3 table td#music_image {
		width:100px; height:100px;
	}
	div section.section2 table td#music_image img,
	div section.section3 table td#music_image img {
		width:200px; height:200px;
	}
	div section.section2 table td#rank,
	div section.section3 table td#rank {
		margin-left:0;
		width:10px; height:auto;
		padding:0 20px 110px 20px;
	}
	div section.section2 table td#rank label,
	div section.section3 table td#rank label {
		font-size:30px;
		font-weight:900;
	}
	div section.section2 table td#artist label,
	div section.section3 table td#artist label {
		font-size:18px;
		color:gray;
	}
	div section.section2 table td#song a,
	div section.section3 table td#song a {
		font-size:27px;
		text-decoration:none;
		color:black;
		font-weight:900;
	}
	div section.section2 table td#song a:hover,
	div section.section3 table td#song a:hover {
		text-decoration:underline;
	}
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="content">
		<section class="section1">
			<div>
				<h1>
					<img src="http://localhost:9000/Music_streaming/images/chart_img1.png">
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
							<td id="song"><a href="http://localhost:9000/Music_streaming/music/music_content.jsp">Dynamite</a></td>
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