<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music.css">
<style>

</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="header.jsp"></jsp:include>
	<!--content-->
	<div class="content">
	
		<section class="section4">
		<div>
			<h1></h1>
		</div>
		</section>
		
		<section class="section1">
			<!--매거진-->
			<div>
				<h1>
					<a href="#" class="subtitle">매거진></a>
				</h1>
			</div>
			<!--매거진 테스트용 이미지-->
			<article class="art1">
				<img
					src="http://localhost:9000/Music_streaming/images/magazineTest_1.gif">
				<a href="#">관리자 소개글 등록1</a>
			</article>
			<article class="art1">
				<img
					src="http://localhost:9000/Music_streaming/images/magazineTest_2.jpg">
				<a href="#">관리자 소개글 등록2</a>
			</article>
			<article class="art1">
				<img
					src="http://localhost:9000/Music_streaming/images/magazineTest_3.jpg">
				<a href="#">관리자 소개글 등록3</a>
			</article>
			<article class="art1">
				<img
					src="http://localhost:9000/Music_streaming/images/magazineTest_4.png">
				<a href="#">관리자 소개글 등록4</a>
			</article>
		</section>

		<section class="section2">
			<!--음악-->
			<div>
				<h1>
					<a href="#" class="subtitle">음악></a>
				</h1>
			</div>
			<div>
				<iframe width="390" height="300"
					src="https://www.youtube.com/embed/D1v3_8xVha8" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<iframe width="390" height="300"
					src="https://www.youtube.com/embed/of0b34A5rpw" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<iframe width="390" height="300"
					src="https://www.youtube.com/embed/eooZvdQKiMM" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
			</div>
		</section>

		<section class="section3">
			<!--뮤직비디오-->
			<div>
				<h1>
					<a href="#" class="subtitle">뮤직비디오></a>
				</h1>
			</div>
			<div>
				<iframe width="390" height="300"
					src="https://www.youtube.com/embed/D1v3_8xVha8" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<iframe width="390" height="300"
					src="https://www.youtube.com/embed/of0b34A5rpw" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<iframe width="390" height="300"
					src="https://www.youtube.com/embed/eooZvdQKiMM" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
			</div>
		</section>

		<!--추후 광고글-->
		<section class="section4">
			<h1>지금 바로 로그인하고 한땀 한땀 만든 플레이리스트 듣기!</h1>
				<p>K-Pop부터 클래식까지 모든 장르를 아우르는 건 기본. 수천 개의 플레이리스트가 트렌드에 맞게 업데이트.</p>
			<img src="http://localhost:9000/Music_streaming/images/bottom_ad.PNG">
		</section>

	</div>
	<!--content div-->

	<!--footer -->
	<jsp:include page="footer.jsp" />
</body>
</html>