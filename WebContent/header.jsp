<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.music.dao.MusicMemberDAO, com.music.vo.MusicMemberVO"
	%>
	<%
	MusicMemberDAO dao = new MusicMemberDAO(); 
	MusicMemberVO vo = new MusicMemberVO();
%> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>header</title>
		<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
		<!-- <script src="http://localhost:9000/Music_streaming/js/jquery-3.5.1.min.js"></script> -->
		<script>
			$(document).ready(function(){
			     $(".menu>a").click(function(){
			         var submenu = $(this).next("ul");
			
			         if( submenu.is(":visible") ){
			             submenu.slideUp();
			         }else{
			             submenu.slideDown();
			         }
			     }).mouseover(function(){
			         $(this).next("ul").slideDown();
			     });
			 });
		</script>
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
					
		
						<%-- <%} else{ %> --%>
						<%-- 	<a href="http://localhost:9000/Music_streaming/index.jsp">
							<span>로그아웃</span>
							<% dao.login_state(vo, 0); %>
							</a>
							<%} %>  --%>
							
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
						 <li class="menu">
				            <a href="http://localhost:9000/Music_streaming/board/board_list.jsp">
				            	<img src="http://localhost:9000/Music_streaming/images/board.png">
				            	<span>게시판</span>
				            </a>
				            <ul class="hide">
				                <li><a href="http://localhost:9000/Music_streaming/board/board_list.jsp">발라드</a></li>
								<li><a href="#">댄스</a></li>
								<li><a href="#">랩/힙합</a></li>
								<li><a href="#">알앤비</a></li>
								<li><a href="#">인디</a></li>
								<li><a href="#">트롯</a></li>
				            </ul>
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