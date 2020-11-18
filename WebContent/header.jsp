<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2차프로젝트</title>
<style>
html {
	height: 100%;
}
body {
	padding-left: 250px;
}
header {
	position: fixed;
	float: left;
	background-color: black;
	left: 0;
	top: 0;
	bottom: 0;
	height: 100%;
	width: 230px;
	padding: 0 10px;
	/* border: 2px solid red; */
	/* 	margin:auto; */
}

header>div>nav>ul {
	text-align: left;
	padding-top: 20px;
	/* 	border: 2px solid green; */
}

header>div>nav>ul>img {
	float: left;
	padding: 10px 20px;
	/* 	border: 2px solid blue; */
}

header>div>nav>ul>li>a {
	display: block;
	color: white;
	font-size: 18px;
	padding: 14px 15px;
	text-decoration: none;
}

header>div>nav>ul>li.logo>a {
	font-size: 35px;
	font-weight: bold;
}

header>div>nav>ul>li.login>a {
	font-size: 18px;
	margin-top: 30px;
	margin-bottom: 25px;
	border:2px solid gray; 
	border-right:black; 
	border-left:black; 
}

header>div>nav>ul>li.logo>a {
	/* border: 2px solid yellow; */
	border-width: 2px 0;
	line-height: 40px;
}
header>div>nav>ul>li>a:hover{
	color:red;
	font-weight:1000px;
}
</style>
</head>
<body>
	<header>
		<div>
			<nav>
				<ul>
					<li class="logo"><a href="#">SIST</a>
						<div></div></li>
					<li class="login"><a href="#"><label><img
								src="http://localhost:9000/Music_streaming/images/login.png"
								width="28" height="30"></label>로그인</a>
						<div></div></li>
					<li><a href="#"><label><img
								src="http://localhost:9000/Music_streaming/images/music.png"
								width="28" height="30"></label>최신차트</a>
						<div></div></li>
					<li><a href="#"><label><img
								src="http://localhost:9000/Music_streaming/images/magazine.png"
								width="28" height="30"></label>매거진</a>
						<div></div></li>
					<li><a href="#"><label><img
								src="http://localhost:9000/Music_streaming/images/music_video.png"
								width="28" height="30"></label>뮤직비디오</a>
						<div></div></li>
					<li><a href="#"><label><img
								src="http://localhost:9000/Music_streaming/images/board.png"
								width="28" height="30"></label>게시판</a>
						<div></div></li>
					<li><a href="#"><label><img
								src="http://localhost:9000/Music_streaming/images/notice_2.png"
								width="28" height="30"></label>공지사항</a>
						<div></div></li>
				</ul>
			</nav>
		</div>
	</header>
</body>
</html>