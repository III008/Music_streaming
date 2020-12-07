<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>header</title>
		<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
		<style>
			/*이전 header code
			body {
				margin: 0px;
			}
			header {
				background-image:url("http://localhost:9000/Music_streaming/images/header.png");
				width:170px; height:100%; float: left; position: fixed;
				z-index:4; background-color:black;
			} */
			
			html {
				height: 100%;
			}
			body {
				padding-left:230px;
			}
			header {
				position:fixed;	float:left;
				background:black;
				left:0;	top:0; bottom:0;
				height:100%; width:230px;
			}
			
			/**로고이미지**/
			div.title_img {
				text-align:center;
			}
			div.title_img>a>img {
				width:200px; height:140px;
				/* border:1px solid red; */
			}
			/* nav>ul {
				margin: auto;
				padding: 0 0 0 0;
				border:1px solid blue;
			} */
			header nav>ul>li {
				/* border: 1px solid red; */
				padding:6px 5px 5px 25px;
				clear: both;
				margin:10px 0;
			}
			/* nav>ul>li>a {
				font-size: 16px;
				text-decoration: none;
				color: white;
			} */
			nav>ul>li>a>img {
				width:40px; height:40px; margin-right:15px;
				display:inline-block; float:left;
				/* border:1px solid white; */
			}
			nav>ul>li>a>span {
				/* border:1px solid violet; */
				display:inline-block;
				margin:10px 0;
				color:rgb(241,241,241); font-size:19px;
				font-weight:bold;
			}
			nav>ul>li>a>span:hover {
				/* text-decoration:underline; */
				color:white;
			}
			nav>ul>li>a>span:active {
				color:rgb(255,0,80);
			}
			
			/**로그인**/
			div.login_click {
				text-align:center;
			}
			div.login_click>a {
				display:inline-block; text-align:center;
				background-color:rgb(231,231,231); border-radius:4px;
				padding:10px 40px; font-size:18px; 
				color:black; font-weight:600;
				margin:15px 0; text-decoration:none;
			}
			div.login_click>a>span:hover {
				color:rgb(255,0,80);
				text-decoration:none;
			}
		</style>
	</head>
	<body>
		<header>
			<div>
				<nav>
					<div class="title_img">
						<a href="http://localhost:9000/Music_streaming/index.jsp">
							<img src="http://localhost:9000/Music_streaming/images/logo.jpg">
						</a>
					</div>
					<div class="login_click">
						<a href="http://localhost:9000/Music_streaming/login/login.jsp">
							<span>로그인</span>
						</a>
					</div>
					<ul>
						<li>
							<a href="http://localhost:9000/Music_streaming/mypage/mypage_home.jsp">
								<img src="http://localhost:9000/Music_streaming/images/mypage.png">
								<span>마이페이지</span>
							</a>
						</li>
						<li>
							<a href="http://localhost:9000/Music_streaming/chart/music_chart.jsp">
								<img src="http://localhost:9000/Music_streaming/images/music.png">
								<span>차트</span>
							</a>
						</li>
						<li>
							<a href="http://localhost:9000/Music_streaming/movie/movie_list.jsp">
								<img src="http://localhost:9000/Music_streaming/images/music_video.png">
								<span>뮤직비디오</span>
							</a>
						</li>
						<li>
							<a href="http://localhost:9000/Music_streaming/magazine/magazine_list.jsp">
								<img src="http://localhost:9000/Music_streaming/images/magazine.png">
								<span>매거진</span>
							</a>
						</li>
						<li>
							<a href="http://localhost:9000/Music_streaming/board/board_list.jsp">
								<img src="http://localhost:9000/Music_streaming/images/board.png">
								<span>게시판</span>
							</a>
						</li>
						<li>
							<a href="http://localhost:9000/Music_streaming/notice/notice_list.jsp">
								<img src="http://localhost:9000/Music_streaming/images/notice_2.png">
								<span>공지사항</span>
							</a>
						</li>
					</ul>
				</nav>
			</div>
		</header>
	</body>
</html>