<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music.css">
<style>
	div.content_menu{
		margin:auto;
	}
	div.content_menu>div.magazine_head{
		height:375px;
		width:1300px;
		display:block;
		margin:auto;
		border:2px solid blue;
	}
	
	div.content_menu>div.magazine_head>table.tb img {
	width: 400px;
	height: 300px;
}
	div.content_menu>div.magazine_head>table.tb {
	background: rgb(242, 242, 242);
	width: 100%;
	padding-bottom: 15px;
	margin-top: 15px;
}

div.content_menu>div.magazine_head>table.tb {
	border-collapse: collapse;
	margin-left: auto;
	margin-right: auto;
}

div.content_menu>div.magazine_head>table.tb tr td {
	text-align: left;
	text-indent: 8px;
}
div.content_menu>div.magazine_head>table.tb tr td a{

	text-decoration:none;
}

div.content_menu>div.magazine_head>table.tb tr:nth-child(2)>td>a {
	font-size: 30px;
}


	
	
	
	div.content_menu>section.magazine_list>ul{
 	height:1500px; 
	display: block;
	border: 2px solid gray;
	}
	div.content_menu>section.magazine_list>ul>li.list_item{
		float:left;
		padding: 30px 65px;
		list-style-type: none
	}
	div.content_menu>section.magazine_list>ul>li.list_item>div.info a{
		text-decoration:none;
	}
	div.content_menu>section.magazine_list>ul>li.list_item>div.info a:hover{
			text-decoration:underline;
	}
	div.content_menu>section.magazine_list>ul>li.list_item>a>img{
		height:300px;
		width:300px;
	}

</style>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
	<h2>SIST MAGAGINE</h2>
	<div class="content_menu">
		
		<div class="magazine_head">
			<table class="tb">
					<tr>
						<th rowspan="3"><a href="#"><img
							src="http://localhost:9000/Music_streaming/images/magazine_example.png"></a></th>
					</tr>
	
					<tr>
						<td><a href="#">매거진 메인 헤드 문구</a></td>
					</tr>
					<tr>
						<td><a href="#">매거진 소개글</a></td>
					</tr>
				</table>
	</div>

		 


		
		<section class="magazine_list">
			<ul>
				<li class="list_item">
					<a href="#">
						<img src="http://localhost:9000/Music_streaming/images/magazine_example.png">
					</a>
					<div class="info">
					<a href="#">
						헬러윈 파티 현장 스케치
					</a>
					</div>
					<span>2020.11.22</span>
				</li>
				<li class="list_item">
					<a href="#">
						<img src="http://localhost:9000/Music_streaming/images/magazine_example.png">
					</a>
					<div class="info">
					<a href="#">
						헬러윈 파티 현장 스케치
					</a>
					</div>
					<span>2020.11.22</span>
				</li>
				<li class="list_item">
					<a href="#">
						<img src="http://localhost:9000/Music_streaming/images/magazine_example.png">
					</a>
					<div class="info">
					<a href="#">
						헬러윈 파티 현장 스케치
					</a>
					</div>
					<span>2020.11.22</span>
				</li>
				<li class="list_item">
					<a href="#">
						<img src="http://localhost:9000/Music_streaming/images/magazine_example.png">
					</a>
					<div class="info">
					<a href="#">
						헬러윈 파티 현장 스케치
					</a>
					</div>
					<span>2020.11.22</span>
				</li>
				<li class="list_item">
					<a href="#">
						<img src="http://localhost:9000/Music_streaming/images/magazine_example.png">
					</a>
					<div class="info">
					<a href="#">
						헬러윈 파티 현장 스케치
					</a>
					</div>
					<span>2020.11.22</span>
				</li>
				<li class="list_item">
					<a href="#">
						<img src="http://localhost:9000/Music_streaming/images/magazine_example.png">
					</a>
					<div class="info">
					<a href="#">
						헬러윈 파티 현장 스케치
					</a>
					</div>
					<span>2020.11.22</span>
				</li>
				<li class="list_item">
					<a href="#">
						<img src="http://localhost:9000/Music_streaming/images/magazine_example.png">
					</a>
					<div class="info">
					<a href="#">
						헬러윈 파티 현장 스케치
					</a>
					</div>
					<span>2020.11.22</span>
				</li>
				<li class="list_item">
					<a href="#">
						<img src="http://localhost:9000/Music_streaming/images/magazine_example.png">
					</a>
					<div class="info">
					<a href="#">
						헬러윈 파티 현장 스케치
					</a>
					</div>
					<span>2020.11.22</span>
				</li>
				<li class="list_item">
					<a href="#">
						<img src="http://localhost:9000/Music_streaming/images/magazine_example.png">
					</a>
					<div class="info">
					<a href="#">
						헬러윈 파티 현장 스케치
					</a>
					</div>
					<span>2020.11.22</span>
				</li>
			</ul>
		</section>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>