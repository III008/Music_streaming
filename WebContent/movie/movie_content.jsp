<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

div.movie_info{
padding-left:300px;
}

/**가수이름 & 영상소개 간격 지정**/
span.name {
	margin-bottom: 20px;
	display: inline-block;
	
}

/**추천영상 리스트 디스플레이 지정**/
ul.recommend_movie_list>li {
	display: inline-block;
	padding: 0 10px;
}

/**조회수 사진 크키 지정**/
img.i1{
	width:25px;
	height:25px;
	margin-top:10px;
}

/**댓글 창 사이즈 지정**/
section.section2>div input[type="text"]{
	border:1px solid gray;
	border-radius:4px;
	width:1000px;  height:60px;
	overflow:auto;
}

/**댓글 등록 버튼 스타일 지정**/
section.section2>div button[type="button"]{
padding: 20px 20px 23px 20px;
margin-left:3px;
}

section.section2>div{
	display:inline-block;
	
}	
/**댓글 배경색 지정**/
div.comment{
background-color:rgb(245,245,245);
padding: 20px;
}
div.comment div{
display:inline-block;
float:left;
}
div.movie_intro{
margin-right:380px;
}

div.comment img{
height:50px;
display:inline-block;
margin:8px 5px 0 0;
}
</style>
</head>
<body>

	<!-- header -->
	<jsp:include page="../header.jsp" />
	

	<div class = "movie_info">
		<section class = "section1">
			<h2>영상 정보</h2>
			<div>
				<iframe width="1000" height="500"
					src="https://www.youtube.com/embed/ioNng23DkIM?controls=0"
					frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
			</div>
			<dl>
			<dt><strong>[MV] HOW LIKE THAT</strong></dt>
			<dt>2020.06.26</dt>
			<dt><img  class = "i1" src = "http://localhost:9000/MyWeb/images/views.png"> <label>45,165</label></dt>
			</dl>
			
			
			<div>
				<img src="http://localhost:9000/MyWeb/images/blackpink.png">
				<span class="name">BLACKPINK</span>

			</div>
			<div class = "movie_intro">"How You Like That"은 전매특허 'BLACKPINK'만의 개성과 카리스마 넘치는 사운드가
				돋보이는 힙합곡이다. 몽환적이고 웅장한 오케스트라 사운드가 도입부부터 분위기를 압도하며, 'BLACKPINK'의 강렬한
				지휘가 시작된다. 결연해진 감정의 변화를 따라 고조되는 보컬과 마침내 토해낸 "How You Like That"의 폭발적인
				드롭 파트는, 곡의 분위기를 단숨에 반전시킨다. 곡이 진행될수록 더욱더 강력히 급변하는 파워풀한 비트는, 어떤 어두운
				상황에서도 굴하지 않고 전진하여 더 높이 비상하자는 블랙핑크가 전하는 메시지를 한층 더 부각한다.</div>
			<h2>같은 아티스트의 뮤직비디오</h2>
			<div>
				<ul class="recommend_movie_list">
					<li><a href ="#"><img
						src="http://localhost:9000/MyWeb/images/recommend_movie1.png"></a>
						<dl>
							<dt>- 두뚜두두 (DDU-DU DDU-DU)</dt>
							<dt>BLACKPINK</dt>
						</dl></li>
					<li><a href ="#"><img
						src="http://localhost:9000/MyWeb/images/recommend_movie2.png"></a>
						<dl>
							<dt>- 휘파람</dt>
							<dt>BLACKPINK</dt>
						</dl></li>
					<li><a href ="#"><img
						src="http://localhost:9000/MyWeb/images/recommend_movie3.png"></a>
						<dl>
							<dt>- 마지막처럼</dt>
							<dt>BLACKPINK</dt>
						</dl></li>
					<li><a href ="#"><img
						src="http://localhost:9000/MyWeb/images/recommend_movie4.png"></a>
						<dl>
							<dt>- Lovesick Girls</dt>
							<dt>BLACKPINK</dt>
						</dl></li>
					<li><a href ="#"><img
						src="http://localhost:9000/MyWeb/images/recommend_movie5.png"></a>
						<dl>
							<dt>- Ice Cream (with Selena Gomez)</dt>
							<dt>BLACKPINK</dt>
						</dl></li>
						
				</ul>
				<hr>
			</div>
		</section>
		<section class = "section2">
			<h2>댓글</h2>
			<div class = "comment">
					<div><img src = "http://localhost:9000/MyWeb/images/comment_user.png"></div>
					<div><input type = "text" placeholder="*게시물의 저작권 등 분쟁, 개인정보 노출로 인한 책임은 작성자 또는 게시자에게 있음을 유의해 주세요."></textarea></div>
					<div><button type = "button">등록</button></div>
			</div>
		</section>
		
	</div>
		<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>