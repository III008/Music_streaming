<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://localhost:9000/Music_streaming/css/music_streaming.css">
<style>

/* 전체구조*/
div.content_menu {
	margin: auto;
}

/*메거진 메인 헤더 부분*/
div.content_menu>div.magazine_head {
	height: 450px;
	width: 1110px;
	display: block;
	margin: auto;
	padding:50px 0 0 0 ;
	border-bottom:2px solid #333;
}
div.content_menu>div.magazine_head>h2{
	padding-bottom:50px;
	height:50px;
	font-size:30px;
}
div.content_menu>div.magazine_head>section>a>img.head_img{
	width: 400px;
	height: 320px;
	border-radius:8px;
	float:left;
}
div.content_menu>div.magazine_head>section>h2{
	padding:50px 0;
}

div.content_menu>div.magazine_head>section>h2>a{
	text-decoration: none;
	color:black;
}
div.content_menu>div.magazine_head>section>h2>a:hover{
	text-decoration:underline;
}
div.content_menu>div.magazine_head>section>p>a{
	color:gray;
	text-decoration: none;
}

/*메거진 메인 리스트 */
div.content_menu>section.magazine_list{
	height: 1500px;
	width: 1500px;
	display: block;
	margin: auto;
	padding:50px 0 0 0 ;
}

div.content_menu>section.magazine_list>ul {
	display: block;
	padding: 0  100px;
}

div.content_menu>section.magazine_list>ul>li.list_item {
	margin-left:85px;
	float: left;
	padding: 35px 10px;
	list-style-type: none;	
}

div.content_menu>section.magazine_list>ul>li.list_item>span{
	font-size:12px;
	color:gray;
}

div.content_menu>section.magazine_list>ul>li.list_item>div.info a {
	text-decoration: none;
	color:black;
}

div.content_menu>section.magazine_list>ul>li.list_item>div.info a:hover
	{
	text-decoration: underline;
}

div.content_menu>section.magazine_list>ul>li.list_item>a>img {
	height: 300px;
	width: 300px;
	border-radius:8px;
}
</style>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<div class="content_menu">

		<div class="magazine_head">
		
			<h2>SIST MAGAZINE</h2>
	<!-- 		<a  href="#">기</a>
			<a  href="#">능</a>
			<a  href="#">미</a>
			<a  href="#">정</a> -->
			
				<section><a href="http://localhost:9000/Music_streaming/magazine/magazine_content.jsp">
					<img src="http://localhost:9000/Music_streaming/images/magazine_example.png" class="head_img"></a>
					
				<h2>	<a href="http://localhost:9000/Music_streaming/magazine/magazine_content.jsp">헤드 타이틀제목이 들어갈 자리</a></h2>
					<p><a href="http://localhost:9000/Music_streaming/magazine/magazine_content.jsp">
					아직 한 달 남짓한 시간이 남았지만, 2020년 역시 힙합의 해라고 해도 과언이 아니지 않을까?
					 신인을 비롯한 수많은 힙합 아티스트들이 빌보드 HOT 차트 상위권을 거쳐가며 인기를 끌었기 때문이다. 
					 그런데 최근 힙합을 잘 챙겨 듣지 않은 이들에게는 신인의 이름이 낯설 수도 있다.
					  올해가 가기 전 이름을 알아 두면 좋을 일곱 명의 래퍼를 확인해보자. - 힙합엘이</a></p>
				</section>
		</div>

		<section class="magazine_list">
			<ul>
				<li class="list_item"><a href="http://localhost:9000/Music_streaming/magazine/magazine_content.jsp"> <img
						src="http://localhost:9000/Music_streaming/images/magazine_example.png">
				</a>
					<div class="info">
						<a href="http://localhost:9000/Music_streaming/magazine/magazine_content.jsp"> 헬러윈 파티 현장 스케치 </a>
					</div> <span>2020.11.22</span></li>
				<li class="list_item"><a href="#"> <img
						src="http://localhost:9000/Music_streaming/images/magazine_example.png">
				</a>
					<div class="info">
						<a href="http://localhost:9000/Music_streaming/magazine/magazine_content.jsp"> 헬러윈 파티 현장 스케치 </a>
					</div> <span>2020.11.22</span></li>
				<li class="list_item"><a href="http://localhost:9000/Music_streaming/magazine/magazine_content.jsp"> <img
						src="http://localhost:9000/Music_streaming/images/magazine_example.png">
				</a>
					<div class="info">
						<a href="http://localhost:9000/Music_streaming/magazine/magazine_content.jsp"> 헬러윈 파티 현장 스케치 </a>
					</div> <span>2020.11.22</span></li>
				<li class="list_item"><a href="http://localhost:9000/Music_streaming/magazine/magazine_content.jsp"> <img
						src="http://localhost:9000/Music_streaming/images/magazine_example.png">
				</a>
					<div class="info">
						<a href="http://localhost:9000/Music_streaming/magazine/magazine_content.jsp"> 헬러윈 파티 현장 스케치 </a>
					</div> <span>2020.11.22</span></li>
				<li class="list_item"><a href="http://localhost:9000/Music_streaming/magazine/magazine_content.jsp"> <img
						src="http://localhost:9000/Music_streaming/images/magazine_example.png">
				</a>
					<div class="info">
						<a href="http://localhost:9000/Music_streaming/magazine/magazine_content.jsp"> 헬러윈 파티 현장 스케치 </a>
					</div> <span>2020.11.22</span></li>
				<li class="list_item"><a href="http://localhost:9000/Music_streaming/magazine/magazine_content.jsp"> <img
						src="http://localhost:9000/Music_streaming/images/magazine_example.png">
				</a>
					<div class="info">
						<a href="http://localhost:9000/Music_streaming/magazine/magazine_content.jsp"> 헬러윈 파티 현장 스케치 </a>
					</div> <span>2020.11.22</span></li>
				<li class="list_item"><a href="http://localhost:9000/Music_streaming/magazine/magazine_content.jsp"> <img
						src="http://localhost:9000/Music_streaming/images/magazine_example.png">
				</a>
					<div class="info">
						<a href="http://localhost:9000/Music_streaming/magazine/magazine_content.jsp"> 헬러윈 파티 현장 스케치 </a>
					</div> <span>2020.11.22</span></li>
				<li class="list_item"><a href="http://localhost:9000/Music_streaming/magazine/magazine_content.jsp"> <img
						src="http://localhost:9000/Music_streaming/images/magazine_example.png">
				</a>
					<div class="info">
						<a href="http://localhost:9000/Music_streaming/magazine/magazine_content.jsp"> 헬러윈 파티 현장 스케치 </a>
					</div> <span>2020.11.22</span></li>
				<li class="list_item"><a href="#"> <img
						src="http://localhost:9000/Music_streaming/images/magazine_example.png">
				</a>
					<div class="info">
						<a href="http://localhost:9000/Music_streaming/magazine/magazine_content.jsp"> 헬러윈 파티 현장 스케치 </a>
					</div> <span>2020.11.22</span></li>
			</ul>
		</section>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>