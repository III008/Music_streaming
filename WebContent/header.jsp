<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header</title>
<style>

/*이전 header code*/
/* 
body {
		margin: 0px;
}
header {
	background-image:url("http://localhost:9000/Music_streaming/images/header.png");
	width: 170px;
	float: left;
	position: fixed;
	height:100%;
	z-index:4;
	background-color:black;
}
 */

html {
	height: 100%;
}

/*각자 해상도에따라 패딩 다르게 되야 할수도 있음*/
body {
	padding-left: 190px;
}

header {
	position: fixed;
	float: left;
	background:black;
	left: 0;
	top: 0;
	bottom: 0;
	height: 100%;
	width: 170px;
	padding: 0 10px;
}


/**로고이미지**/
header>div>nav>div>a>img {
	width: 170px;
	height: 140px;
	/* border:1px solid red; */
}
nav>ul {
	margin: auto;
	padding: 0 0 0 0;
/* 	border:1px solid blue;  */
	
}
nav>ul>li {
	list-style-type: none;
	padding: 10px 5px 5px 10px;
	clear: both;
}
nav>ul>li>a {
	font-size: 16px;
	font-family: "나눔바른고딕";
	text-decoration: none;
	color: white;
}
nav>ul>li>a>span {
	/* border:1px solid violet;  */
	display: inline-block;
	margin: 14px 0 0 12px;
	font-weight:bold;
}
nav>ul>li>a>span:hover {
	text-decoration: underline;
}
nav>ul>li>a>img {
	display: inline-block;
	width: 50px;
	height: 50px;
	float: left;
}
/**로그인**/
nav>ul>li>a.login_click{
	padding: 8px 40px;
	font-size: 20px;
	font-weight: bold;
	background-color: lightgray;
	border: 1px solid lightgray;
	border-radius:12px;
	color:black;
}
nav>ul>li>a.login_click>span{
	float:center;
}
nav>ul>li>a.login_click>span:hover {
	color:red;
	text-decoration: none;
}
</style>
</head>
<body>
	<header>
		<div>
			<nav>
				<div>
					<a href="http://localhost:9000/Music_streaming/index.jsp">
						<img src="http://localhost:9000/Music_streaming/images/logo.jpg">
					</a>
				</div>
				<ul>

					<li><a href="http://localhost:9000/Music_streaming/login/login.jsp" class="login_click"><span>로그인</span></a></li>
					<li><a href="#">
						<img src="http://localhost:9000/Music_streaming/images/login.png"><span>마이페이지</span></a>
					</li>
					<li><a href="http://localhost:9000/Music_streaming/music/music_chart.jsp"><img
							src="http://localhost:9000/Music_streaming/images/music.png"><span>차트</span></a></li>
					<li><a href="http://localhost:9000/Music_streaming/movie/movie_list.jsp"><img
							src="http://localhost:9000/Music_streaming/images/music_video.png"><span>뮤직비디오</span></a></li>
					<li><a href="http://localhost:9000/Music_streaming/magazine/magazine_list.jsp">
						<img src="http://localhost:9000/Music_streaming/images/magazine.png"><span>매거진</span></a>
					</li>
					<li><a href="http://localhost:9000/Music_streaming/board/board_list.jsp">
						<img src="http://localhost:9000/Music_streaming/images/board.png"><span>게시판</span></a>
					</li>
					<li><a href="#">
						<img src="http://localhost:9000/Music_streaming/images/notice_2.png"><span>공지사항</span></a>
					</li>
				</ul>
			</nav>
		</div>
	</header>
</body>
</html>