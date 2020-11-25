<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Index</title>
	<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
<style>
div.content {
	width: 93.7%;
	text-align: center;
	padding-left: 120px;
	display: inline-block;
}
/**매거진 크기 설정**/
section.section1>div>img {
	border: 1px solid white;
	border-radius: 18px;
	width: 340px;
	height: 320px;
	margin: 6px 8px;
}
div.content>section.section1, div.content>section.section2, div.content>section.section3
	{
	text-align: center;
}
div.content>section.section1>div {
	display: inline-block;
}
div.content>section.section1>div>div>a>p.title {
	text-align: left;
	font-size: 15px;
}
div.content>section.section1>div>div>a>p.date {
	text-align: left;
	font-size: 13px;
}
div.content>section.section1>div>div>a {
	text-decoration: none;
}
div.content>section.section1>div>div>a:hover {
	text-decoration: underline;
}
section.section2>div>img {
	border: 1px solid white;
	border-radius: 18px;
	width: 550px;
	height: 350px;
}
section.section2>div>iframe, section.section3>div>iframe {
	border: 1px solid white;
	border-radius: 18px;
}
section.section3>div:last-child>iframe {
	margin-bottom: 100px;
}
section.section2>div {
	margin: auto;
	display: inline-block;
}
section.section3>div>span {
	display: inline-block;
	background-color: gray;
	width: 3px;
	height: 150px;
}
section.section3 span.aaa {
	padding-top: 100px;
	margin-bottom: 30px;
}
section.section3 span.ccc {
	padding-top: 100px;
	margin-bottom: 130px;
}
div.content>div>img {
	width: 300px;
	height: 300px;
}
section.release {
	background: rgb(242, 242, 242);
	width: 100%;
	padding-bottom:15px;
	margin-top:15px;
}
div.content>section.release>table.tb {
	border-collapse:collapse;
	margin-left:auto;
	margin-right:auto;
}
div.content>section.release>table.tb tr td{
	background-color:rgb(255,255,255);
	text-align:left;
	text-indent:8px;
}
div.content>section.release>table.tb tr:nth-child(2)>td>a{
	font-size:30px;
}
div.content>section.release>table.tb tr td>button{
	background-color:rgb(126,1,228);
	border:1px solid white;
	border-radius:10px;
	font-family:"나눔바른고딕";
	font-size:14px;
	font-weight:bold;
	color:white;
	width:15%;
	padding:12px 0;	
}
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="header.jsp"/>
	
	<!-- content -->
	<div class="content">
		<section class="release">
			<table class="tb">
				<tr>
					<th rowspan="3"><img src="http://localhost:9000/Music_streaming/images/represent.png"></th>
					<td><button>GENRE</button></td>
				</tr>
				<tr>
					<td><a href="#">"NEW RELEASE #16 : 이적 빌리 아일리시"</a></td>
				</tr>
				<tr>
					<td><a href="#">고래의 포효같은 강렬한 에너지로 돌아온 이적, 4개월만에 새로운 싱글을 발표한 빌리 아일리시</a></td>
				</tr>
			</table>
		</section>
		
		<section class="section1">
			<h1>메거진</h1>
			<div>
				<img src="http://localhost:9000/Music_streaming/images/magazine1.png">
				<div>
					<a href=""><p class="title">넓은 음악적 스펙트럼을 자랑하는 함소윤</p></a>
					<a href=""><p class="date">2020.11.16</p></a>
				</div>
			</div>
			<div>
				<img src="http://localhost:9000/Music_streaming/images/magazine2.png">
				<div>
					<a href=""><p class="title">아리아나 그란데의 콜라보레이터</p></a>
					<a href=""><p class="date">2020.11.12</p></a>
				</div>
			</div>
			<div>
				<img src="http://localhost:9000/Music_streaming/images/magazine3.png">
				<div>
					<a href=""><p class="title">한국재즈가 있어 따듯한 가을</p></a>
					<a href=""><p class="date">2020.11.11</p></a>
				</div>
			</div>
			<div>
				<img src="http://localhost:9000/Music_streaming/images/magazine4.png">
				<div>
					<a href=""><p class="title">이주의 디깅 #83</p></a>
					<a href=""><p class="date">2020.11.10</p></a>
				</div>
			</div>
		</section>
		
		<section class="section2">
			<div>
				<h1>음악</h1>
				<iframe width="700" height="350"
					src="https://www.youtube.com/embed/c0gZnxJ5U6c" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<img src="http://localhost:9000/Music_streaming/images/album.jpg">
			</div>
		</section>
		
		<section class="section3">
			<h1>뮤직비디오</h1>
			<div>
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/D1PvIWdJ8xo?autoplay=1&mute=1"
					frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<span class="aaa"></span>
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/gIOyB9ZXn8s?autoplay=1&mute=1"
					frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
			</div>
			<div>
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/XsX3ATc3FbA?autoplay=1&mute=1"
					frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<span class="ccc"></span>
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/mrAIqeULUL0?autoplay=1&mute=1"
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