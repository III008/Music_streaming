<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music.css">
<style>
/* *
		로그인 스타일
	 */
	
	 div.content>section.section1{

		border:2px solid red;
	 }
	 
	 	div.content, div.content>div, section {
		border:1px solid rgb(253,252,240);
		background-color:rgb(253,252,240); 
	}
	section.section1>div>h1 {
		/* border:1px solid red; */
		width:30%;
		font-size:35px;
		border-left:15px solid #333;
		border-bottom:1px solid #333;
		padding:5px 0 5px 25px;
		margin:30px 0 30px 120px;
	}
	section.section1>div>form,
	section.section1>div>table {
		/* border:1px solid red; */
		width:60%;
		margin:auto;
		
	}
	.btn_style {
		background-color:lightgray;
		border:1px solid lightgray;
		font-family:"나눔바른고딕";
		font-size:14px;
		font-weight:700;
		color:white;
		width:20%;
		padding:8px 0;		
	}
	
section.section1>div>form.login {
	margin-bottom: 100px;
}

section.section1>div>form.login ul label>img {
	width: 20px;
	height: 20px;
	margin-top: 4px;
}

section.section1>div>form.login ul>li {
	/*  border: 1px solid red; */
	list-style-type: none; /* 점 없애는거*/
	padding: 5px;
}

section.section1>div>form.login ul>li>label {
	background-color: lightgray;
	padding: 0 10px;
	border-radius: 4px;
	display: inline-block;
	height: 30px;
	float: left;
}

section.section1>div>form.login ul>li>input {
	padding: 5px 10px;
	border: 1px solid lightgray;
	border-radius: 4px;
	width: 30%;
	margin-left: 5px;
	text-indent: 15px;
}

section.section1>div>form.login ul>li>button {
	padding: 5px 0px;
	border-radius: 4px;
	width: 41%;
	/* border:1px solid tomato; */
	background-color: lightgray;
	font-family: "나눔바른고딕";
	font-size: 14px;
	font-weight: 650px;
	color: white;
}

section.section1>div>form.login ul>li>button:hover {
	opacity: 0.6;
}

section.section1>div>form.login ul>li>a {
	font-size: 10px;
	font-weight: 650;
	color: #333;
	text-decoration: none;
	padding-right: 10px;
}

section.section1>div>form.login ul>li>a:hover {
	text-decoration: underline;
}

section.section1>div>form.login ul>li:last-child {
	padding-left: 100px;
}

</style>

</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>

<!--content-->
	<div class ="content">
		<section class="section1">
			<div>
				<h1>SIST LOGIN</h1>
				<form name ="loginform" action="#" method="get" class="login">
					<ul>
						<li>
							<label><img src="../images/icon_id.png"></label>
							<input type="text" name="id" placeholder="아이디를 입력해주세요." >
						</li>
						<li>
								<label><img src="../images/1.png"></label>
							<input type="text" name="pass" placeholder="비밀번호를 입력해주세요.">
						</li>
					<li>
						<button  type ="button">로그인</button>
					</li>
					<li>
						<a href ="#"><span>아이디/비밀번호 찾기></span></a>
						<a href ="../join/join.jsp"><span>회원가입></span></a>
					</li>
					</ul>
				</form>
				</div>
		</section>
	</div>


<jsp:include page="../footer.jsp" />
</body>
</html>