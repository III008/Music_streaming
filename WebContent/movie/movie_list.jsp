<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/**전체 가운데 정렬**/
div.movie_list {
	text-align: center;
}

/**리스트 디스플레이 속성 변경**/
ul.entire_movie_list>li,
ul.hot_movie_list>li {
	display: inline-block;
}

/**전체영상리스트 이미지 크기 지정**/
ul.entire_movie_list img {
	width: 220px;
	heigth: 150px;
}

/**인기뮤비 배경색 지정**/
div.hot_movie {
	background-color: rgb(245, 245, 245);
}

/**전체영상 폰트사이즈 지정**/
section.section2 dt {
	font-size: 13px;
}

/**전체영상 태두리 지정**/
div.entire_movie {
	border-top: 4px solid #bfbfbf;
	border-bottom: 1px solid #bfbfbf;
	border-right: 1px solid #ffffff;
	border-left: 1px solid #ffffff;
}
/**하트사진&조회수 사이에 바 넣기**/
ul.entire_movie_list span {
	background-color: lightgray;
	width: 2px;
	height: 10px;
	display: inline-block;
	margin: 0 3px;
	padding-top: 5px;
}

/**하트 사진 사이즈 지정**/
dt.like_image>a>img {
	margin-top: 3px;
	width: 20px;
	height: 20px;
}

/**하트 사진 빨간색으로 바꾸기**/
dt.like_image>a>img:hover {
	content:
	url("http://localhost:9000/Music_streaming/images/heart_red.PNG")
}

/** 인기뮤비 제목 스타일 지정**/
section.section1>div:first-child>div {
	display: inline-block;
	width: 1680px;
	text-align: left;
	font-size: 30px;
}
/** 인기뮤비 제목 스타일 지정**/
div.hot_movie>div {
	display: inline-block;
	width: 1360px;
	text-align: left;
	font-size: 30px;
}

/** 전체영상 제목 스타일 지정**/
div.entire_movie>div:first-child{
border: 1px solid red;
font-size: 30px;
}

</style>
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
					<li><a href=""><img
							src="http://localhost:9000/Music_streaming/images/entire_movie11.PNG"></a>
						<dl>
							<dt>이데아 (IDEA:理想)</dt>
							<dt>태민 (TAEMIN)</dt>
							<dt class="like_image">
								<a href= ""><img
									src="http://localhost:9000/Music_streaming/images/heart.PNG"></a><span></span>조회
								62,999
							</dt>
						</dl></li>
					<li><a href=""><img
							src="http://localhost:9000/Music_streaming/images/entire_movie12.PNG"></a>
						<dl>
							<dt>Dynamite</dt>
							<dt>방탄소년단</dt>
							<dt class="like_image">
								<a href= ""><img
									src="http://localhost:9000/Music_streaming/images/heart.PNG"></a><span></span>조회
								62,999
							</dt>
						</dl></li>
					<li><a href=""><img
							src="http://localhost:9000/Music_streaming/images/entire_movie13.PNG"></a>
						<dl>
							<dt>뻔한남자</dt>
							<dt>이승기</dt>
							<dt class="like_image">
								<a href= ""><img
									src="http://localhost:9000/Music_streaming/images/heart.PNG"></a><span></span>조회
								62,999
							</dt>
						</dl></li>
					<li><a href=""><img
							src="http://localhost:9000/Music_streaming/images/entire_movie14.PNG"></a>
						<dl>
							<dt>How You Like That</dt>
							<dt>BLACKPINK</dt>
							<dt class="like_image">
								<a href= ""><img
									src="http://localhost:9000/Music_streaming/images/heart.PNG"></a><span></span>조회
								62,999
							</dt>
						</dl></li>
				</ul>
			</div>
		</section>
	</div>

	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>