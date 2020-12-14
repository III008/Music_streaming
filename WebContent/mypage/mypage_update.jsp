<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
<script src="http://localhost:9000/MyWeb/js/jquery-3.5.1.min.js"></script>
<script>
	$(document).ready(function(){
		
		/** 비밀번호, 비밀번호 확인 체크 **/
		$("#cpass").focusout(function(){
			$("#msg").text("");	
			
			if($("#pass").val() != "" && $("#cpass").val() != "") {
				
				if($("#pass").val() == $("#cpass").val()){
					$("#msg").append("패스워드가 동일합니다").css("color","blue");
					$("#email").focus();
					return true;
				}else{
					$("#msg").append("패스워드가 다릅니다. 다시 입력해주세요").css("color","red");
					$("#pass").val("");
					$("#cpass").val("");
					$("#pass").focus();
					return false;
				}
			}
		});
		
		/** 유효성 체크 **/
		$("#btnUpdate").click(function(){
			var re = /^[a-zA-Z0-9]{6,13}$/;  //아이디 정규식 표현
			
			var id_msg1 = "아이디를 입력해주세요";
			var id_msg2 = "영문자/숫자 포함 6~13자리 이내로 작성해주세요";
			
			if($("#name").val() == ""){
				alert("성명을 입력해주세요");
				$("#name").focus();
				return false;
			}else if(!ruleCheck($("#id"), re, id_msg1, id_msg2)){
				return false;
			}else if($("#pass").val() == ""){
				alert("비밀번호를 입력해주세요");
				$("#pass").focus();
				return false;
			}else if($("#cpass").val() == ""){
				alert("비밀번호 확인을 입력해주세요");
				$("#cpass").focus();
				return false;
			}else if($("#email1").val() == ""){
				alert("이메일을 입력해주세요");
				$("#email1").focus();
				return false;
			}else if($("#email2").val() == ""){
				alert("이메일을 입력해주세요");
				$("#email2").focus();
				return false;
			}else if($("#email3").val() == "선택"){
				alert("이메일을 입력해주세요");
				$("#email3").focus();
				return false;
			}else if($("#phone1").val() == "선택"){
				alert("전화번호를 입력해주세요");
				$("#phone1").focus();
				return false;
			}else if($("#phone2").val() == ""){
				alert("전화번호를 입력해주세요");
				$("#phone2").focus();
				return false;
			}else if($("#phone3").val() == ""){
				alert("전화번호를 입력해주세요");
				$("#phone3").focus();
				return false;
			}else if($("input:radio:checked").length == 0){
				alert("연령대를 선택해주세요");
				rdo_list[0].focus();
				return false;
			}else if(nameCheckCount("hobby") == 0){
				alert("취미를 선택해주세요");
				document.getElementById("")
				return false;
			}else{
				//폼이름.submit()
				updateForm.submit();
			}
		});//btnJoin click -- validation check
		
		/** 정규식 체크 **/
		function ruleCheck(obj, re, msg1, msg2){
			
			if(obj.val() == ""){
				alert(msg1);
				obj.focus();
				return false;
			}else{
				if(re.test(obj.val())){
					//정규식 표현에 맞는다.
					return true;
				}else{
					alert(msg2);
					obj.focus();
					return false;
				}
			}
		}
		
		/** 이메일 주소 선택 **/
		$("#email3").change(function(){
			
			//직접입력, 선택 이 아니면 email3의 선택값 ---> email2로 이동
			if($(this).val() != "선택"){
				if($("#email3").val() != "self"){
					$("#email2").val($("#email3").val());
				}else{
					$("#email2").val("");
					$("#email2").focus();
					return false;
				}
			}
		});
		
	});	
</script>
</head>
<body class="mypage_update">
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
		<section class="section_1">
				<div>
					<form name="updateForm" action="#" method="get" class="join">
						<div class="j_title"><span class="red">*</span>표시 항목은 필수 입력 항목 입니다.</div>
						<ul>
							<li>
								<label>프로필사진</label>
								<input type="file" name="bfile">
							</li>    
							<li>
								<label><span class="red">*</span>성명</label>
								<input type="text" name="name" class="f1" id="name">
							</li>    
							<li>
								<label><span class="red">*</span>아이디</label>
								<div>hong</div>
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
								<label>음악취향</label>
								<input type="checkbox" name="genre"><span class="rchk">발라드</span>
								<input type="checkbox" name="genre"><span class="rchk">댄스</span>
								<input type="checkbox" name="genre"><span class="rchk">랩/힙합</span>
								<input type="checkbox" name="genre"><span class="rchk">R&B</span>
								<input type="checkbox" name="genre"><span class="rchk">인디</span>
								<input type="checkbox" name="genre"><span class="rchk">EDM</span>
								<input type="checkbox" name="genre"><span class="rchk">트롯</span>
							</li>
							<li>
								<button type="button" class="btn_style" id="btnUpdate">수정하기</button>
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