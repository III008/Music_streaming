<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>join</title>
		<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
		<script src="http://localhost:9000/Music_streaming/js/jquery-3.5.1.min.js"></script>
		<script src="http://localhost:9000/Music_streaming/js/join.js"></script>
	</head>
	<body>
		<!-- header -->
		<jsp:include page="../header.jsp"></jsp:include>
		
		<!-- content -->
		<div class="content_join">   
			<section class="section_1">
				<div>
					<h1>회원가입</h1>
					<form name="joinForm" action="joinProc.jsp" method="get" class="join">
						<div class="j_title"><span class="red">*</span>표시 항목은 필수 입력 항목 입니다.</div>
						<ul>
							<!-- <li>
								<label>프로필사진</label>
								<input type="file" name="bfile">
							</li> -->
							<li>
								<label><span class="red">*</span>성명</label>
								<input type="text" name="name" class="f1" id="name">
							</li>    
							<li>
								<label><span class="red">*</span>아이디</label>
								<input type="text" name="id" class="f1" id="id">
								<button type="button" class="sub">ID중복검사</button>
								<div>아이디는 영문, 숫자 조합으로 하셔야 합니다. [4자리 이상 12자리 이하]</div>
								<div>아이디는 <span class="red">소문자</span>로 저장 됩니다.</div>
							</li>
							<li>
								<label><span class="red">*</span>패스워드</label>
								<input type="password" name="pass" class="f1" id="pass">
								<div>비밀번호는 4자리 이상 12자리 이하로 입력해주세요.</div>
							</li>
							<li>
								<label><span class="red">*</span>패스워드 확인</label>
								<input type="password" name="cpass" class="f1" id="cpass">
								<div id="msg"></div>
							</li>
							<li>
								<label><span class="red">*</span>E-mail</label>
								<input type="text" name="email1" class="f2" id="email1"> @
								<input type="text" name="email2" class="f2" id="email2">
								<select name="email3" class="f3" id="email3">
									<option value="선택">선택</option>
									<option value="naver.com">네이버</option>
									<option value="gmail.com">구글</option>
									<option value="korea.com">코리아</option>
									<option value="nate.com">네이트</option>
									<option value="self">직접입력</option>
								</select>
							</li>
							<li>
								<label><span class="red">*</span>정보수신동의 E-mail</label>
								<input type="radio" name="email_agr"><span class="rchk">수신동의</span>
								<input type="radio" name="email_agr" checked><span class="rchk">수신거부</span>
							</li>
							<li>
								<label><span class="red">*</span>핸드폰</label>
								<select name="cp1" class="cp" id="cp1">
									<option value="선택">선택</option>
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
								</select>
								- <input type="text" name="cp2" class="cp_num" id="cp2">
								- <input type="text" name="cp3" class="cp_num" id="cp3">
							</li>
							<li>
								<label><span class="red">*</span>정보수신동의 SMS</label>
								<input type="radio" name="sms_agr"><span class="rchk">수신동의</span>
								<input type="radio" name="sms_agr" checked><span class="rchk">수신거부</span>
							</li>
							<li>
								<label><span class="red">*</span>음악취향</label>
								<input type="checkbox" name="genre" value="발라드"><span class="rchk">발라드</span>
								<input type="checkbox" name="genre" value="댄스"><span class="rchk">댄스</span>
								<input type="checkbox" name="genre" value="랩/힙합"><span class="rchk">랩/힙합</span>
								<input type="checkbox" name="genre" value="R&B"><span class="rchk">R&B</span>
								<input type="checkbox" name="genre" value="인디"><span class="rchk">인디</span>
								<input type="checkbox" name="genre" value="EDM"><span class="rchk">EDM</span>
								<input type="checkbox" name="genre" value="트롯"><span class="rchk">트롯</span>
							</li>
							<li>
								<button type="button" class="btn_style" id="btnJoin">가입하기</button>
								<button type="reset" class="btn_style_2">취소</button>
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