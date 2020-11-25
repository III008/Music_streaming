<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
div.movie_list{
}
.section1>div>h1 {
	display: inline-block;
	padding-right: 10px;
}

ul.entire_movie_list>li, ul.hot_movie_list>li {
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
	margin:auto;
	text-align:center;
	
}

/**전체영상 폰트사이즈 지정**/
section.section2 dt {
	font-size: 13px;
	
}

/**전체영상 태두리 지정**/
div.entire_movie{
	border-top:4px solid #bfbfbf;
	border-bottom:1px solid #bfbfbf;
	border-right:1px solid #ffffff;
	border-left:1px solid #ffffff;
	text-align:center;

}
/**하트사진&조회수 사이에 바 넣기**/
ul.entire_movie_list div{
	background-color:lightgray;
	width:2px; height:10px;
	display:inline-block;
	margin:0 3px;
	padding-top:5px;
}

/**하트 사진 사이즈 지정**/
dt.like_image>img{
	margin-top:3px;
	width:20px;
	height:20px;
}
	
/**하트 사진 빨간색으로 바꾸기**/
dt.like_image>img:hover{
	content: url("http://localhost:9000/Music_streaming/images/heart_red.PNG")
}	
	
/**페이징 처리 가운데 정렬**/
div.entire_movie>a>div{
	text-align:center;
}

/**페이징 처리 폰트 지정 **/
div.entire_movie>a{
text-decoration:none;
font-size:20px;
}

section.section1 h1{
margin-left:80px;
}
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp" />
	<div class="movie_list">
		<section class="section1">
			<div>
				<h1>뮤직비디오</h1>
				<label>핫한 영상을 확인해보세요~</label>
			</div>
			<hr>
			<div class="hot_movie">
				<ul class="hot_movie_list">
				<h2>인기 뮤비</h2>
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
					<li><a href="http://localhost:9000/Music_streaming/movie/movie_content.jsp"><img
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
			<ul class="entire_movie_list">
				<h2>전체 영상</h2>
				<li><a href="#"><img
						src="http://localhost:9000/Music_streaming/images/entire_movie1.PNG"></a>
					<dl>
						<dt>MAGO</dt>
						<dt>여자친구 (GFRIEND)</dt>
						<dt class = "like_image"><img src ="http://localhost:9000/Music_streaming/images/heart.PNG"><div></div>조회 62,999</dt>
					</dl></li>
				<li><a href=""><img
						src="http://localhost:9000/Music_streaming/images/entire_movie2.PNG"></a>
					<dl>
						<dt>DON'T TOUCH ME</dt>
						<dt>환불원정대</dt>
						<dt class = "like_image"><img src ="http://localhost:9000/Music_streaming/images/heart.PNG"><div></div>조회 62,999</dt>
					</dl></li>
				<li><a href=""><img
						src="http://localhost:9000/Music_streaming/images/entire_movie3.PNG"></a>
					<dl>
						<dt>AYA</dt>
						<dt>마마무(Mamamamoo)</dt>
						<dt class = "like_image"><img src ="http://localhost:9000/Music_streaming/images/heart.PNG"><div></div>조회 62,999</dt>
					</dl></li>
				<li><a href=""><img
						src="http://localhost:9000/Music_streaming/images/entire_movie4.PNG"></a>
					<dl>
						<dt>딩가딩가 (Dingga)</dt>
						<dt>마마무(Mamamamoo)</dt>
						<dt class = "like_image"><img src ="http://localhost:9000/Music_streaming/images/heart.PNG"><div></div>조회 62,999</dt>
					</dl></li>
				<li><a href=""><img
						src="http://localhost:9000/Music_streaming/images/entire_movie5.PNG"></a>
					<dl>
						<dt>I CAN’T STOP ME</dt>
						<dt>TWICE (트와이스)</dt>
						<dt class = "like_image"><img src ="http://localhost:9000/Music_streaming/images/heart.PNG"><div></div>조회 62,999</dt>
					</dl></li>
				<li><a href=""><img
						src="http://localhost:9000/Music_streaming/images/entire_movie6.PNG"></a>
					<dl>
						<dt>Lovesick Girls</dt>
						<dt>BLACKPINK</dt>
						<dt class = "like_image"><img src ="http://localhost:9000/Music_streaming/images/heart.PNG"><div></div>조회 62,999</dt>
					</dl></li>
				<li><a href=""><img
						src="http://localhost:9000/Music_streaming/images/entire_movie7.PNG"></a>
					<dl>
						<dt>HERO</dt>
						<dt>임영웅</dt>
						<dt class = "like_image"><img src ="http://localhost:9000/Music_streaming/images/heart.PNG"><div></div>조회 62,999</dt>
					</dl></li>
				<li><a href=""><img
						src="http://localhost:9000/Music_streaming/images/entire_movie8.PNG"></a>
					<dl>
						<dt>SO BAD</dt>
						<dt>STAYC(스테이씨)</dt>
						<dt class = "like_image"><img src ="http://localhost:9000/Music_streaming/images/heart.PNG"><div></div>조회 62,999</dt>
					</dl></li>
				<li><a href=""><img
						src="http://localhost:9000/Music_streaming/images/entire_movie9.PNG"></a>
					<dl>
						<dt> When We Disco (Duet with 선미)</dt>
						<dt>박진영</dt>
						<dt class = "like_image"><img src ="http://localhost:9000/Music_streaming/images/heart.PNG"><div></div>조회 62,999</dt>
					</dl></li>
				<li><a href=""><img
						src="http://localhost:9000/Music_streaming/images/entire_movie10.PNG"></a>
					<dl>
						<dt>Dynamite (B-side)</dt>
						<dt>방탄소년단</dt>
						<dt class = "like_image"><img src ="http://localhost:9000/Music_streaming/images/heart.PNG"><div></div>조회 62,999</dt>
					</dl></li>
				<li><a href=""><img
						src="http://localhost:9000/Music_streaming/images/entire_movie11.PNG"></a>
					<dl>
						<dt>이데아 (IDEA:理想)</dt>
						<dt>태민 (TAEMIN)</dt>
						<dt class = "like_image"><img src ="http://localhost:9000/Music_streaming/images/heart.PNG"><div></div>조회 62,999</dt>
					</dl></li>
				<li><a href=""><img
						src="http://localhost:9000/Music_streaming/images/entire_movie12.PNG"></a>
					<dl>
						<dt>Dynamite</dt>
						<dt>방탄소년단</dt>
						<dt class = "like_image"><img src ="http://localhost:9000/Music_streaming/images/heart.PNG"><div></div>조회 62,999</dt>
					</dl></li>
				<li><a href=""><img
						src="http://localhost:9000/Music_streaming/images/entire_movie13.PNG"></a>
					<dl>
						<dt>뻔한남자</dt>
						<dt>이승기</dt>
						<dt class = "like_image"><img src ="http://localhost:9000/Music_streaming/images/heart.PNG"><div></div>조회 62,999</dt>
					</dl></li>
				<li><a href=""><img
						src="http://localhost:9000/Music_streaming/images/entire_movie14.PNG"></a>
					<dl>
						<dt>How You Like That</dt>
						<dt>BLACKPINK</dt>
						<dt class = "like_image"><img src ="http://localhost:9000/Music_streaming/images/heart.PNG"><div></div>조회 62,999</dt>
					</dl></li>
				<li><a href=""><img
						src="http://localhost:9000/Music_streaming/images/entire_movie15.PNG"></a>
					<dl>
						<dt>Pit A Pat</dt>
						<dt>XIA (준수)</dt>
						<dt class = "like_image"><img src ="http://localhost:9000/Music_streaming/images/heart.PNG"><div></div>조회 62,999</dt>
					</dl></li>
				<li><a href=""><img
						src="http://localhost:9000/Music_streaming/images/entire_movie16.PNG"></a>
					<dl>
						<dt>뻔한남자 (Teaser)</dt>
						<dt>이승기</dt>
						<dt class = "like_image"><img src ="http://localhost:9000/Music_streaming/images/heart.PNG"><div></div>조회 62,999</dt>
					</dl></li>
				<li><a href=""><img
						src="http://localhost:9000/Music_streaming/images/entire_movie17.PNG"></a>
					<dl>
						<dt>엄마아리랑</dt>
						<dt>송가인</dt>
						<dt class = "like_image"><img src ="http://localhost:9000/Music_streaming/images/heart.PNG"><div></div>조회 62,999</dt>
					</dl></li>
				<li><a href=""><img
						src="http://localhost:9000/Music_streaming/images/entire_movie18.PNG"></a>
					<dl>
						<dt>한 많은 대동강</dt>
						<dt>송가인</dt>
						<dt class = "like_image"><img src ="http://localhost:9000/Music_streaming/images/heart.PNG"><div></div>조회 62,999</dt>
					</dl></li>
				<li><a href=""><img
						src="http://localhost:9000/Music_streaming/images/entire_movie19.PNG"></a>
					<dl>
						<dt>용두산 에레지</dt>
						<dt>송가인</dt>
						<dt class = "like_image"><img src ="http://localhost:9000/Music_streaming/images/heart.PNG"><div></div>조회 62,999</dt>
					</dl></li>
				<li><a href=""><img
						src="http://localhost:9000/Music_streaming/images/entire_movie20.PNG"></a>
					<dl>
						<dt>진정인가요</dt>
						<dt>송가인, 김소유</dt>
						<dt class = "like_image"><img src ="http://localhost:9000/Music_streaming/images/heart.PNG"><div></div>조회 62,999</dt>
					</dl></li>
				<li><a href=""><img
						src="http://localhost:9000/Music_streaming/images/entire_movie21.PNG"></a>
					<dl>
						<dt>단장의 미아리고개</dt>
						<dt>송가인</dt>
						<dt class = "like_image"><img src ="http://localhost:9000/Music_streaming/images/heart.PNG"><div></div>조회 62,999</dt>
					</dl></li>

			</ul>
			<a href ="#"><div><<   1   2   3   4   5   >></div></a>
			</div>
		</section>
	</div>
		<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>