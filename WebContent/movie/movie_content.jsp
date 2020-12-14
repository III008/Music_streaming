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


	<div class="movie_info">
		<section class="section1">
			<div>영상 정보</div>
			<div>
				<iframe width="1200" height="700"
					src="https://www.youtube.com/embed/ioNng23DkIM?controls=0"
					frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
			</div>
			<div class="movie_detail">
				<div>[MV] HOW LIKE THAT</div>
				<div>2020.06.26</div>
				<div>
					<div>
						<img
							src="http://localhost:9000/Music_streaming/images/blackpink.png">
						<span>BLACKPINK</span>
					</div>
				</div>
				<div>"How You Like That"은 전매특허 'BLACKPINK'만의 개성과 카리스마 넘치는 사운드가
					돋보이는 힙합곡이다. 몽환적이고 웅장한 오케스트라 사운드가 도입부부터 분위기를 압도하며, 'BLACKPINK'의 강렬한
					지휘가 시작된다. 결연해진 감정의 변화를 따라 고조되는 보컬과 마침내 토해낸 "How You Like That"의
					폭발적인 드롭 파트는, 곡의 분위기를 단숨에 반전시킨다. 곡이 진행될수록 더욱더 강력히 급변하는 파워풀한 비트는, 어떤
					어두운 상황에서도 굴하지 않고 전진하여 더 높이 비상하자는 블랙핑크가 전하는 메시지를 한층 더 부각한다</div>
			</div>
			<div class="same_artist">같은 아티스트의 뮤직비디오</div>
			<div>
				<ul class="recommend_movie_list">
					<li><a href="#"><img
							src="http://localhost:9000/Music_streaming/images/recommend_movie1.png"></a>
						<dl>
							<dt>- 뚜두뚜두 (DDU-DU DDU-DU)</dt>
							<dt>BLACKPINK</dt>
						</dl></li>
					<li><a href="#"><img
							src="http://localhost:9000/Music_streaming/images/recommend_movie2.png"></a>
						<dl>
							<dt>- 휘파람</dt>
							<dt>BLACKPINK</dt>
						</dl></li>
					<li><a href="#"><img
							src="http://localhost:9000/Music_streaming/images/recommend_movie3.png"></a>
						<dl>
							<dt>- 마지막처럼</dt>
							<dt>BLACKPINK</dt>
						</dl></li>
					<li><a href="#"><img
							src="http://localhost:9000/Music_streaming/images/recommend_movie4.png"></a>
						<dl>
							<dt>- Lovesick Girls</dt>
							<dt>BLACKPINK</dt>
						</dl></li>
					<li><a href="#"><img
							src="http://localhost:9000/Music_streaming/images/recommend_movie5.png"></a>
						<dl>
							<dt>- Ice Cream (with Selena Gomez)</dt>
							<dt>BLACKPINK</dt>
						</dl></li>

				</ul>
			</div>
		</section>

	</div>
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>