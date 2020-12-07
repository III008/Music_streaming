<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
</head>
<body class="mypage_home">
	<!-- header -->
	<jsp:include page="../header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="content">
		<section class="section1">
		<h1><div>마이페이지</div></h1>
			<ul class="nav">
			  	<li><a href="http://localhost:9000/Music_streaming/mypage/mypage_home.jsp">홈</a></li>
			  	<li class="dropdown">
			    <a href="javascript:void(0)" class="dropbtn">보관함</a>
				    <div class="dropdown-content">
				      <a href="http://localhost:9000/Music_streaming/mypage/mypage_musiclist.jsp">음악</a>
				      <a href="#">Link2</a>
				      <a href="#">Link3</a>
				    </div>
				<li><a href="http://localhost:9000/Music_streaming/mypage/mypage_update.jsp">내정보 수정</a></li>
			  	</li>
			</ul>
		</section>
		<section class="section2">
			<div>
				<img src="http://localhost:9000/Music_streaming/images/mypage_user.png">
			</div>	
			<div>
				<table>
					<tr>
						<td><div class="vertical"></div></td>
						<td>좋아요 곡 수</td>
						<td><a href="http://localhost:9000/Music_streaming/mypage/mypage_musiclist.jsp">10</a></td>
					</tr>
					<tr>
						<td><div class="vertical"></div></td>
						<td>좋아요 뮤비 수</td>
						<td><a href="http://localhost:9000/Music_streaming/mypage/mypage_movielist.jsp">5</a></td>
					</tr>
				</table>
			</div>
			<div>
				<table>
					<tr>
						<td><div class="vertical"></div></td>
						<td>음악취향</td>
						<td>발라드, 댄스</td>
					</tr>
				</table>
			</div>
		</section>
		<section class="section3">
			<div>
				<table>
					<tr>
						<td><div class="vertical"></div></td>
						<td>이름</td>
						<td>홍길동</td>
					</tr>
					<tr>
						<td><div class="vertical"></div></td>
						<td>아이디</td>
						<td>hong</td>
					</tr>
					<tr>
						<td><div class="vertical"></div></td>
						<td>이메일</td>
						<td>hong@gmail.com</td>
					</tr>
					<tr>
						<td><div class="vertical"></div></td>
						<td>전화번호</td>
						<td>010-1234-5678</td>
					</tr>
				</table>
			</div>
		</section>
	</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>