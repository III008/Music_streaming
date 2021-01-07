<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>header</title>
		<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
	</head>
	<body>
		<header>
			<div>
				<nav>
					<div class="title_img">
						<a>
							<img src="http://localhost:9000/Music_streaming/images/logo.jpg">
						</a>
					</div>
					<div class="login_click">
						<a href="http://localhost:9000/Music_streaming/index.jsp">
							<span>사용자 페이지</span>
						</a>
					</div>
					
					<ul>
						<li>
							<a href="http://localhost:9000/Music_streaming/admin/admin_member/member_list.jsp">
								<img src="http://localhost:9000/Music_streaming/images/mypage.png">
								<span>회원 관리</span>
							</a>
						</li>
						<li>
							<a href="http://localhost:9000/Music_streaming/admin/music/music_list.jsp">
								<img src="http://localhost:9000/Music_streaming/images/music.png">
								<span>음악 관리</span>
							</a>
						</li>
						<li>
							<a href="http://localhost:9000/Music_streaming/admin/movie/movie_list.jsp">
								<img src="http://localhost:9000/Music_streaming/images/music_video.png">
								<span>뮤직비디오</span>
							</a>
						</li>
						<li>
							<a href="http://localhost:9000/Music_streaming/admin/admin_magazine/magazine_list.jsp">
								<img src="http://localhost:9000/Music_streaming/images/magazine.png">
								<span>매거진 관리</span>
							</a>
						</li>
						<li>
							<a href="http://localhost:9000/Music_streaming/admin/admin_notice/notice_list.jsp">
								<img src="http://localhost:9000/Music_streaming/images/notice_2.png">
								<span>공지사항 관리</span>
							</a>
						</li>
					</ul>
				</nav>
			</div>
		</header>
	</body>
</html>