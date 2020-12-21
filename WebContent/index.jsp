<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

	<!-- content -->
	<div class="content">
		<section class="magazine">
			<div>
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
						<td>아직 한 달 남짓한 시간이 남았지만, 2020년 역시 힙합의 해라고 해도 과언이 아니지 않을까?</td>
					</tr>

				</table>
			</div>
		</section>
		<section class="carousel">
				<!-- 캐러셀 start -->
				<div id="demo" class="carousel slide" data-ride="carousel">
				
					<!-- Indicators -->
					<ul class="carousel-indicators">
						<li data-target="#demo" data-slide-to="0" class="active"></li>
						<li data-target="#demo" data-slide-to="1"></li>
						<!-- <li data-target="#demo" data-slide-to="2"></li> -->
					</ul>
					  
					<!-- The slideshow -->
					<div class="carousel-inner">
						<div class="carousel-item active">
						  <img src="images/magazine_example.png" width="1500" height="450">
						</div>
						<div class="carousel-item">
						  <img src="images/album.jpg" width="1500" height="450">
						</div>
						<div class="carousel-item">
						  <img src="images/music_video1.PNG" width="1500" height="450">
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
			</section>
		<section class="magazine2">
			<div id="navbar">
				<a class="active"
					href="http://localhost:9000/Music_streaming/magazine/magazine_list.jsp">매거진></a>
			</div>
			<div class="content2">
				<div>
					<img
						src="http://localhost:9000/Music_streaming/images/magazine1.png">
					<dl>
						<dt>넓은 음악적 스펙트럼을 자랑하는 함소윤</dt>
						<dt>2020.11.16</dt>
					</dl>
				</div>
				<div>
					<img
						src="http://localhost:9000/Music_streaming/images/magazine2.png">
					<dl>
						<dt>아리아나 그란데의 콜라보레이터</dt>
						<dt>2020.11.12</dt>
					</dl>
				</div>
				<div>
					<img
						src="http://localhost:9000/Music_streaming/images/magazine3.png">
					<dl>
						<dt>한국 재즈가 있어 따뜻한 가을</dt>
						<dt>2020.11.11</dt>
					</dl>
				</div>
				<div>
					<img
						src="http://localhost:9000/Music_streaming/images/magazine4.png">
					<dl>
						<dt>이주의 디깅 #83</dt>
						<dt>2020.11.10</dt>
					</dl>
				</div>
			</div>
		</section>

		<section class="music">
			<div id="navbar">
				<a class="active"
				href="http://localhost:9000/Music_streaming/music/music_chart.jsp">음악></a>
			</div>
			<div class="content2">
				<iframe width="700" height="350"
					src="https://www.youtube.com/embed/c0gZnxJ5U6c?controls=0"
					frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<img src="http://localhost:9000/Music_streaming/images/album.jpg">
			</div>
		</section>

		<section class="movie">
			<div id="navbar">
				<a class="active"
				href="http://localhost:9000/Music_streaming/movie/movie_list.jsp">뮤직비디오></a>
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