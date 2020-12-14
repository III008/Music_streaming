<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!--reset-->
<meta charset="UTF-8">
<title>Index</title>
<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
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
							src="http://localhost:9000/Music_streaming/images/represent.PNG"></td>
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

		<section class="magazine2">
			<div>
				<a
					href="http://localhost:9000/Music_streaming/magazine/magazine_list.jsp">매거진></a>
			</div>
			<div>
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
			<div>
				<a href="http://localhost:9000/Music_streaming/music/music_chart.jsp">음악></a>
			</div>
			<div>
				<iframe width="700" height="350"
					src="https://www.youtube.com/embed/c0gZnxJ5U6c?controls=0"
					frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<img src="http://localhost:9000/Music_streaming/images/album.jpg">
			</div>
		</section>

		<section class="movie">
			<div>
				<a href="http://localhost:9000/Music_streaming/movie/movie_list.jsp">뮤직비디오></a>
			</div>
			<div>
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