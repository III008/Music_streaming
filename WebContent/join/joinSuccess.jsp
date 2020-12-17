<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
		<script src="http://localhost:9000/Music_streaming/js/jquery-3.5.1.min.js"></script>
		<script src="http://localhost:9000/Music_streaming/js/join.js"></script>
	</head>
	<body>
		<!-- header -->
		<jsp:include page="../header.jsp"></jsp:include>
		
		<!-- content -->
		<div class="content_joinSuc">   
			<section class="section_1">
				<div>
					<h1>회원가입</h1>
					<form name="joinForm" class="join">
						<ul>
							<li>
								<h2>환영합니다!</h2>
								<h3>회원가입을 축하합니다.</h3>
							</li>
							<li>
								<a href="../login/login.jsp"><button type="button" class="btn_style">로그인하기</button></a>
								<a href="../index.jsp"><button type="button" class="btn_style_2">메인 페이지</button></a>
							</li>
						</ul>
					</form>
				</div>
			</section>
 		</div>
		
		<!-- footer -->
		<jsp:include page="../footer.jsp"></jsp:include>
	</body>
</html>