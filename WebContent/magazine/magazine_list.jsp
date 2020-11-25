<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://localhost:9000/Music_streaming/css/music.css">
<style>

/* 전체구조*/
div.content_menu {
	margin: auto;
}
/*메거진 메인 헤더 부분*/
div.content_menu>div.magazine_head {
	height: 375px;
	width: 1110px;
	display: block;
	margin: auto;
	border: 2px solid blue;
	padding:50px 0 0 0 ;
}
div.content_menu>div.magazine_head>h2{
	margin-left:95px;
	height:50px;
}

div.content_menu>div.magazine_head>a>table.tb {
	background: white;
	width: 1110px;
	padding-bottom: 15px;
	margin:auto;
	border:2px solid red;
	/* 	border-collapse: collapse; */
}
/*메거진 메인 헤더 이미지*/
div.content_menu>div.magazine_head>a>table.tb img {
	width: 400px;
	height: 300px;
	float: left;
	border-radius:8px;
	border: 2px solid red;
}


div.content_menu>div.magazine_head>a>table.tb tr td p{
	font-color:gray;
	text-decoration: none;
	border: 2px solid red;
}


div.content_menu>div.magazine_head>table.tb tr:nth-child(2)>td {
	font-size: 30px;
}

div.content_menu>section.magazine_list>ul {
	height: 1500px;
	display: block;
	border: 2px solid gray;
}

div.content_menu>section.magazine_list>ul>li.list_item {
	margin-left:85px;
	float: left;
	padding: 35px 10px;
	list-style-type: none;
	
}

div.content_menu>section.magazine_list>ul>li.list_item>div.info a {
	text-decoration: none;
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
			<h2>SIST MAGAGINE</h2>
			<a href="http://localhost:9000/Music_streaming/magazine/magazine_content.jsp">
				<table class="tb">
					<tr>
						<th rowspan="4"><img
							src="http://localhost:9000/Music_streaming/images/magazine_example.png"></th>
					</tr>

					<tr>
						<td><p>이주의 매거진 메인 헤드 문구</p></td>
					</tr>
					<tr>
						<td><p>매거진 소개글1</p></td>
					</tr>
					<tr>
						<td><p>매거진 소개글2</p></td>
					</tr>
				</table>
			</a>
		</div>





		<section class="magazine_list">
			<ul>
				<li class="list_item"><a href="#"> <img
						src="http://localhost:9000/Music_streaming/images/magazine_example.png">
				</a>
					<div class="info">
						<a href="#"> 헬러윈 파티 현장 스케치 </a>
					</div> <span>2020.11.22</span></li>
				<li class="list_item"><a href="#"> <img
						src="http://localhost:9000/Music_streaming/images/magazine_example.png">
				</a>
					<div class="info">
						<a href="#"> 헬러윈 파티 현장 스케치 </a>
					</div> <span>2020.11.22</span></li>
				<li class="list_item"><a href="#"> <img
						src="http://localhost:9000/Music_streaming/images/magazine_example.png">
				</a>
					<div class="info">
						<a href="#"> 헬러윈 파티 현장 스케치 </a>
					</div> <span>2020.11.22</span></li>
				<li class="list_item"><a href="#"> <img
						src="http://localhost:9000/Music_streaming/images/magazine_example.png">
				</a>
					<div class="info">
						<a href="#"> 헬러윈 파티 현장 스케치 </a>
					</div> <span>2020.11.22</span></li>
				<li class="list_item"><a href="#"> <img
						src="http://localhost:9000/Music_streaming/images/magazine_example.png">
				</a>
					<div class="info">
						<a href="#"> 헬러윈 파티 현장 스케치 </a>
					</div> <span>2020.11.22</span></li>
				<li class="list_item"><a href="#"> <img
						src="http://localhost:9000/Music_streaming/images/magazine_example.png">
				</a>
					<div class="info">
						<a href="#"> 헬러윈 파티 현장 스케치 </a>
					</div> <span>2020.11.22</span></li>
				<li class="list_item"><a href="#"> <img
						src="http://localhost:9000/Music_streaming/images/magazine_example.png">
				</a>
					<div class="info">
						<a href="#"> 헬러윈 파티 현장 스케치 </a>
					</div> <span>2020.11.22</span></li>
				<li class="list_item"><a href="#"> <img
						src="http://localhost:9000/Music_streaming/images/magazine_example.png">
				</a>
					<div class="info">
						<a href="#"> 헬러윈 파티 현장 스케치 </a>
					</div> <span>2020.11.22</span></li>
				<li class="list_item"><a href="#"> <img
						src="http://localhost:9000/Music_streaming/images/magazine_example.png">
				</a>
					<div class="info">
						<a href="#"> 헬러윈 파티 현장 스케치 </a>
					</div> <span>2020.11.22</span></li>
			</ul>
		</section>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>