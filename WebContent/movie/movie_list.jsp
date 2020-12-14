<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					<li><a href="#"><img
							src="http://localhost:9000/Music_streaming/images/hot_issue1.png"></a>
						<dl>
							<dt>Stay Gold</dt>
							<dt>방탄 소년단</dt>
						</dl></li>
					<li><a href=""><img
							src="http://localhost:9000/Music_streaming/images/hot_issue2.png"></a>
						<dl>
							<dt>Happy</dt>
							<dt>태연 (TAEYEON)</dt>
						</dl></li>
					<li><a
						href="http://localhost:9000/Music_streaming/movie/movie_content.jsp"><img
							src="http://localhost:9000/Music_streaming/images/hot_issue3.png"></a>
						<dl>
							<dt>How You Like That</dt>
							<dt>BLACKPINK</dt>
						</dl></li>
					<li><a href=""><img
							src="http://localhost:9000/Music_streaming/images/hot_issue4.png"></a>
						<dl>
							<dt>CAN’T STOP ME</dt>
							<dt>TWICE(트와이스)</dt>
						</dl></li>
				</ul>
			</div>
		</section>

		<section class="section2">
			<div class="entire_movie">
				<div>전체 영상</div>
				<ul class="entire_movie_list">
					<div class = "A">
					<li><a href="#"><img
							src="http://localhost:9000/Music_streaming/images/entire_movie1.PNG"></a>
						<dl>
							<dt>MAGO</dt>
							<dt>여자친구 (GFRIEND)</dt>
							<dt class="like_image">
								<a href= ""><img
									src="http://localhost:9000/Music_streaming/images/heart.PNG"></a><span></span>조회
								62,999
							</dt>
						</dl></li>
					<li><a href=""><img
							src="http://localhost:9000/Music_streaming/images/entire_movie2.PNG"></a>
						<dl>
							<dt>DON'T TOUCH ME</dt>
							<dt>환불원정대</dt>
							<dt class="like_image">
								<a href= ""><img
									src="http://localhost:9000/Music_streaming/images/heart.PNG"></a><span></span>조회
								62,999
							</dt>
						</dl></li>
					<li><a href=""><img
							src="http://localhost:9000/Music_streaming/images/entire_movie3.PNG"></a>
						<dl>
							<dt>AYA</dt>
							<dt>마마무(Mamamamoo)</dt>
							<dt class="like_image">
								<a href= ""><img
									src="http://localhost:9000/Music_streaming/images/heart.PNG"></a><span></span>조회
								62,999
							</dt>
						</dl></li>
					<li><a href=""><img
							src="http://localhost:9000/Music_streaming/images/entire_movie4.PNG"></a>
						<dl>
							<dt>딩가딩가 (Dingga)</dt>
							<dt>마마무(Mamamamoo)</dt>
							<dt class="like_image">
								<a href= ""><img
									src="http://localhost:9000/Music_streaming/images/heart.PNG"></a><span></span>조회
								62,999
							</dt>
						</dl></li>
					<li><a href=""><img
							src="http://localhost:9000/Music_streaming/images/entire_movie5.PNG"></a>
						<dl>
							<dt>I CAN’T STOP ME</dt>
							<dt>TWICE (트와이스)</dt>
							<dt class="like_image">
								<a href= ""><img
									src="http://localhost:9000/Music_streaming/images/heart.PNG"></a><span></span>조회
								62,999
							</dt>
						</dl></li>
						</div>
						<div class = "B">
					<li><a href=""><img
							src="http://localhost:9000/Music_streaming/images/entire_movie6.PNG"></a>
						<dl>
							<dt>Lovesick Girls</dt>
							<dt>BLACKPINK</dt>
							<dt class="like_image">
								<a href= ""><img
									src="http://localhost:9000/Music_streaming/images/heart.PNG"></a><span></span>조회
								62,999
							</dt>
						</dl></li>
					<li><a href=""><img
							src="http://localhost:9000/Music_streaming/images/entire_movie7.PNG"></a>
						<dl>
							<dt>HERO</dt>
							<dt>임영웅</dt>
							<dt class="like_image">
								<a href= ""><img
									src="http://localhost:9000/Music_streaming/images/heart.PNG"></a><span></span>조회
								62,999
							</dt>
						</dl></li>
						
					<li><a href=""><img
							src="http://localhost:9000/Music_streaming/images/entire_movie8.PNG"></a>
						<dl>
							<dt>SO BAD</dt>
							<dt>STAYC(스테이씨)</dt>
							<dt class="like_image">
								<a href= ""><img
									src="http://localhost:9000/Music_streaming/images/heart.PNG"></a><span></span>조회
								62,999
							</dt>
						</dl></li>
					<li><a href=""><img
							src="http://localhost:9000/Music_streaming/images/entire_movie9.PNG"></a>
						<dl>
							<dt>When We Disco (Duet with 선미)</dt>
							<dt>박진영</dt>
							<dt class="like_image">
								<a href= ""><img
									src="http://localhost:9000/Music_streaming/images/heart.PNG"></a><span></span>조회
								62,999
							</dt>
						</dl></li>
					<li><a href=""><img
							src="http://localhost:9000/Music_streaming/images/entire_movie10.PNG"></a>
						<dl>
							<dt>Dynamite (B-side)</dt>
							<dt>방탄소년단</dt>
							<dt class="like_image">
								<a href= ""><img
									src="http://localhost:9000/Music_streaming/images/heart.PNG"></a><span></span>조회
								62,999
							</dt>
						</dl></li>
						</div>
				</ul>
			</div>
		</section>
	</div>

	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>