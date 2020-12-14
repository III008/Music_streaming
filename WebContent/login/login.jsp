<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://localhost:9000/Music_streaming/css/music_streaming.css">

</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>

	<!--content-->
	<div class="content">
		<div>
			<a href="http://localhost:9000/Music_streaming/index.jsp"><span>this my vibe</span></a>
		</div>
		<section class="section1">
			<div>
				<form name="loginform" action="#" method="get" class="login">
					<ul>
						<li><label></label> <input type="text" name="id"
							placeholder="아이디"></li>
						<li><label></label> <input type="text" name="pass"
							placeholder="비밀번호"></li>
						<li>
							<button type="button">로그인</button>
						</li>
						<li><a href="#"><span>아이디/비밀번호 찾기</span></a> <a
							href="../join/join.jsp"><span>회원가입</span></a></li>
					</ul>
				</form>
			</div>
		</section>
		
	</div>

	<jsp:include page="../footer.jsp" />
</body>
</html>