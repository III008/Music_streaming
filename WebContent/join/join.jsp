<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>join</title>
		<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
		<script>
		/**
			유효성 체크
		*/
		function joinFormCheck(){
			var name, id, pass, cpass, email1, email2, email3, phone1, phone2, phone3;
			
			name = document.getElementById("name");
			id = document.getElementById("id");
			pass = document.getElementById("pass");
			cpass = document.getElementById("cpass");
			email1 = document.getElementById("email1");
			email2 = document.getElementById("email2");
			email3 = document.getElementById("email3");
			phone1 = document.getElementById("phone1");
			phone2 = document.getElementById("phone2");
			phone3 = document.getElementById("phone3");
			
			if(name.value == ""){
				alert("이름을 입력해주세요.");
				name.focus();
				return false;
			}else if(id.value == ""){
				alert("아이디를 입력해주세요.");
				id.focus();
				return false;
			}else if(pass.value == ""){
				alert("비밀번호를 입력해주세요.");
				pass.focus();
				return false;
			}else if(cpass.value == ""){
				alert("비밀번호 확인란을 입력해주세요.");
				cpass.focus();
				return false;
			}else if(email1.value == ""){
				alert("이메일 주소를 입력해주세요.");
				email1.focus();
				return false;
			}else if(email3.value == "선택"){
				alert("이메일 주소를 선택해주세요.");
				email3.focus();
				return false;
			}else if(phone1.value == "선택"){
				alert("휴대전화 번호를 선택해주세요.");
				phone1.focus();
				return false;
			}else if(phone2.value == ""){
				alert("휴대전화 번호을 입력해주세요.");
				phone2.focus();
				return false;
			}else if(phone3.value == ""){
				alert("휴대전화 번호를 입력해주세요.");
				phone3.focus();
				return false;
			}else {
				joinForm.submit();
			}
		}
		
		
		
		</script>
	</head>
	<body>
		<!-- header -->
		<jsp:include page="../header.jsp"></jsp:include>
		
		<!-- content -->
		<div class="content_join">   
			<section class="section_1">
				<div>
					<h1>회원가입</h1>
					<form name="joinForm" action="#" method="get" class="join">
						<div class="j_title"><span class="red">*</span>표시 항목은 필수 입력 항목 입니다.</div>
						<ul>
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
							</li>
							<li>
								<label><span class="red">*</span>E-mail</label>
								<input type="text" name="email1" class="f2" id="email1">@
								<input type="text" name="email2" class="f2" id="email2">
								<select name="email3" class="f3" id="email3" onchange="addrCheck()">
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
								<input type="radio" name="email-agr"><span class="rchk">수신동의</span>
								<input type="radio" name="email-agr" checked><span class="rchk">수신거부</span>
							</li>
							<li>
								<label><span class="red">*</span>핸드폰</label>
								<select name="cp1" class="hp" id="phone1">
									<option value="선택">선택</option>
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
								</select>
								- <input type="text" name="cp2" class="hp_num" id="phone2">
								- <input type="text" name="cp3" class="hp_num" id="phone3">
							</li>
							<li>
								<label><span class="red">*</span>정보수신동의 SMS</label>
								<input type="radio" name="sms-agr"><span class="rchk">수신동의</span>
								<input type="radio" name="sms-agr" checked><span class="rchk">수신거부</span>
							</li>
							<li>
								<label><span class="red">*</span>음악취향</label>
								<input type="checkbox" name="genre"><span class="rchk">발라드</span>
								<input type="checkbox" name="genre"><span class="rchk">댄스</span>
								<input type="checkbox" name="genre"><span class="rchk">랩/힙합</span>
								<input type="checkbox" name="genre"><span class="rchk">R&B</span>
								<input type="checkbox" name="genre"><span class="rchk">인디</span>
								<input type="checkbox" name="genre"><span class="rchk">EDM</span>
								<input type="checkbox" name="genre"><span class="rchk">트롯</span>
							</li>
							<li>
								<button type="button" class="btn_style" onclick="joinFormCheck()">가입하기</button>
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