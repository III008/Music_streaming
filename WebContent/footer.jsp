<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>footer</title>
</head>
<style>
div.foot1 {
	background-color: lightgray;
	width: 100%;
	height: 200px;
	clear: both;
}

footer {
	padding-left:170px;
}

footer nav>ul {
	padding-top: 70px;
}

footer nav>ul>li {
	display: inline;
}

footer nav>ul>li>div {
	display: inline-block;
	background-color: lightgray;
	width: 2px;
	height: 7px;
}

footer>nav>ul>li>a {
	text-decoration: none;
	font-size: 13px;
	font-weight: bold;
	padding: 0 10px 0 3px;
	font-size: 13px;
}

footer>nav>ul>li>a:hover {
	text-decoration: underline;
}
</style>
<body>
	<div class="foot1">
		<footer>
			<section class="sc1">
				<nav>
					<ul>
						<li><a href="#">공지사항</a></li>
						<li><a href="#">(구)네이버뮤직</a></li>
						<li><a href="#">개인정보처리방침</a></li>
						<li><a href="#">네이버 이용약관</a></li>
						<li><a href="#">VIBE 이용약관</a></li>
						<li><a href="#">고객센터</a></li>
						<li><a href="#">결제/환불 안내</a></li>
						<li><a href="#">톡톡상담</a></li>
						<li><a href="#">사업자정보 확인</a></li>
						<li><a href="#">©NAVER Corp.</a></li>
					</ul>
				</nav>
			</section>
			
			<section class="sc2">
				<div class="info">
					<div>네이버(주) 대표이사 한성숙</div>
					<div>사업자등록번호 220-81-62517 통신판매업신고번호 제2006-경기성남-0692호</div>
					<div>주소 경기도 성남시 분당구 불정로 6 네이버 그린팩토리 대표전화 1588-3820 이메일 ccnaver@naver.com 호스팅 서비스 제공 NAVER Business Platform</div>
				</div>
			</section>
		</footer>
		</div>
	</body>
</html>