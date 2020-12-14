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

div.content {
	margin: auto;
	padding-top: 150px;
	height: 715px;
}
div.content>section.section1>div>form.login {
	text-align: center;
}
section.section1>div>form.login ul>li {
	 list-style-type: none;
	padding: 5px;
}

div.content>div{
text-align:center;
margin-bottom:50px;
}
div.content>div>a{
padding: 40px 115px 20px 115px;
text-decoration: none;
border-radius:4px;
background-color:black;
}
div.content>div>a>span{
text-align:center;
color: white;
font-size:50px;
font-weight:900;
}
section.section1>div>form.login ul>li>input {
	padding: 20px 10px;
	border: 1px solid lightgray;
	border-radius: 4px;
	width: 500px;
}
section.section1>div>form.login ul>li>button {
	padding: 20px 10px;
	border-radius: 4px;
	width: 520px;
	font-family: "나눔바른고딕";
	font-size: 18px;
	font-weight: 700;
	color: white;
	background-color: rgb(255, 0, 80);
}
section.section1>div>form li:last-child>a{
	text-decoration: none;
	color:gray;
}
</style>
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