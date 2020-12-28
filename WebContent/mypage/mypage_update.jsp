<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.music.vo.*, com.music.dao.*, java.util.*"%>
<% 
	SessionVO svo = (SessionVO)session.getAttribute("svo");

	//svo 객체 != null ===> 로그인 성공!!
	//svo 객체 == null ===> 로그인 하지 않은 상태
	if(svo != null){
%>

<%
	//id 임의로
	MusicMemberDAO dao = new MusicMemberDAO();
	String id = dao.getId(svo.getName());
	MusicMemberVO vo = dao.getInfo(id); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
<script src="http://localhost:9000/Music_streaming/js/jquery-3.5.1.min.js"></script>
<script>
	$(document).ready(function(){
		
		//이메일 수신거부 선택 준비
		var email_agr = $("#checkedEmail").val();
		$("input[name=email_agr]").each(function(){
			if($(this).val() == email_agr){
				$(this).attr("checked",true);
			} 
		});
		
		//SMS 수신동의 선택 준비
		var sms_agr = $("#checkedSms").val();
		$("input[name=sms_agr]").each(function(){
			if($(this).val() == sms_agr){
				$(this).attr("checked",true);
			} 
		});
		
		//이메일 선택 준비
		var splitEmail = $("#splitEmail").val();
		$("select[name='email3'] option").each(function(){
			if($(this).val() == splitEmail){
				$(this).prop("selected",true);
			}
		});
		
		//핸드폰 선택 준비
		var splitPhone = $("#splitPhone").val();
		$("select[name='cp1'] option").each(function(){
			if($(this).val() == splitPhone){
				$(this).prop("selected",true);
			}
		});
		//장르 선택 준비
		var splitGenre = $("#checkedGenre").val().split(",");
		$("input[name=genre]").each(function(){
			for(var i=0; i<splitGenre.length; i++){
				if($(this).val() == splitGenre[i]){
					$(this).attr("checked",true);
				} 
			}
		});
		
		
		//파일선택
		$("input[type=file]").on('change', function(){
			if(window.FileReader){
				var fileName = $(this)[0].files[0].name;  //파일선택 0번지의 첫번째 파일의 이름을 fileName변수에 넣는다
				$("#fname").text("").text(fileName);	  //기존 데이터 지우고 fileName 값을 넣음
			}
		});
		
		/**
		 * 회원가입 - 닉네임 중복체크
		 */
		$("#nicknameCheck").click(function(){
			if($("#nickname").val() == ""){
				alert("닉네임을 입력해주세요");
				$("#nickname").focus();
				return false;
			}else {
				//ajax를 활용한 서버 연동
				$.ajax({
					url:"mypage_nicknameCheck.jsp?nickname="+$("#nickname").val(),
					success:function(result){
						if(result == 1){
							$("#nicknamecheck_result").text("이미 중복된 닉네임이 존재합니다. 다시 입력해주세요")
								.css("color","red");
							$("#nickname").val("");
							$("#nickname").focus();
							return false;
						}else {
							$("#nicknamecheck_result").text("사용가능한 닉네임입니다")
							.css("color","blue");
							return true;
						}
					}
				});
			}
		});
		
		/** 비밀번호 정규식 체크 **/
		$("#pass").focusout(function(){
			var re = /^.{4,12}$/
			var msg1 = "비밀번호를 입력해주세요";
			var msg2 = "비밀번호는 4자리 이상 12자리 이하로 입력해주세요";
			if(ruleCheck($("#pass"), re, msg1, msg2)) {
				return true;
			}else {
				$("#pass").val("");
				$("#pass").focus();
				return false;
			}
		});
		
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
			
			if($("#name").val() == ""){
				alert("성명을 입력해주세요");
				$("#name").focus();
				return false;
			}else if($("#nickname").val() == ""){
				alert("닉네임을 입력해주세요");
				$("#nickname").focus();
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
			}else if($("input[name='genre']:checked").length == 0){
				alert("음악취향 선택해주세요");
				document.getElementById("");
				return false;
			}else{
				//닉네임 중복확인 버튼 눌렀는지 확인
				if($("#nicknamecheck_result").text() == "" || $("#nicknamecheck_result").text() == "이미 중복된 닉네임이 존재합니다. 다시 입력해주세요"){
					alert("닉네임 중복 버튼을 눌러주세요");
					$("#nicknameCheck").focus();
					return false;
				}else {
					//폼이름.submit()
					updateForm.submit();
				}
			}
		});//btnUpdate click -- validation check
		
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
			  	<li><a href="http://localhost:9000/Music_streaming/mypage/mypage_home.jsp?id=<%= id %>">홈</a></li>
			  	<li class="dropdown">
			    <a href="javascript:void(0)" class="dropbtn">보관함</a>
				    <div class="dropdown-content">
				      <a href="http://localhost:9000/Music_streaming/mypage/mypage_musiclist.jsp?id=<%= id %>">음악</a>
				      <a href="http://localhost:9000/Music_streaming/mypage/mypage_movielist.jsp?id=<%= id %>">뮤비</a>
				    </div>
				<li><a href="http://localhost:9000/Music_streaming/mypage/mypage_update.jsp?id=<%= id %>">내정보 수정</a></li>
			  	</li>
			</ul>
		</section>
		<section class="section_1">
				<div>
					<form name="updateForm" action="mypage_updateProc.jsp" enctype="multipart/form-data" method="post" class="join">
					<input type="hidden" name="id" value="<%= id %>"> <!-- 예시 -->
						<div class="j_title"><span class="red">*</span>표시 항목은 필수 입력 항목 입니다.</div>
						<ul>
							<li>
								<label>프로필사진</label>
								<input type="file" name="file">
								<% if(vo.getBfile() != null){ %>
									<span id="fname"><%= vo.getBfile() %></span> 
								<% }else{%>
									<span id="fname">프로필 사진을 등록해주세요</span>
								<% } %>
							</li>    
							<li>
								<label><span class="red">*</span>성명</label>
								<input type="text" name="name" class="f1" id="name" value="<%= vo.getName() %>">
							</li>    
							<li>
								<label>닉네임</label>
								<input type="text" name="nickname" class="f1" id="nickname" value="<%= vo.getNickname() %>">
								<button type="button" class="sub" id="nicknameCheck">닉네임 중복체크</button>
								<div id="nicknamecheck_result"></div>
							</li>  
							<li>
								<label><span class="red">*</span>아이디</label>
								<div id="id"><%= vo.getId() %></div>
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
								<% String email[] = vo.getEmail().split("@");%>
								<input type="text" name="email1" class="f2" id="email1" value="<%= email[0] %>"> @
								<input type="text" name="email2" class="f2" id="email2" value="<%= email[1] %>">
								<input type="hidden" id ="splitEmail" value="<%= email[1] %>">
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
								<input type="hidden" id="checkedEmail" value="<%= vo.getEmail_agr() %>">
								<label><span class="red">*</span>정보수신동의 E-mail</label>
								<input type="radio" name="email_agr" value="수신동의"><span class="rchk">수신동의</span>
								<input type="radio" name="email_agr" value="수신거부"><span class="rchk">수신거부</span>
							</li>
							<li>
								<label><span class="red">*</span>핸드폰</label>
								<% String phone[] = vo.getCp().split("-"); %>
								<input type="hidden" id="splitPhone" value="<%= phone[0] %>">
								<select name="cp1" class="hp" id="phone1">
									<option value="선택">선택</option>
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="016">016</option>
									<option value="017">017</option>
								</select>
								- <input type="text" name="cp2" class="hp_num" id="phone2" value="<%= phone[1] %>">
								- <input type="text" name="cp3" class="hp_num" id="phone3" value="<%= phone[2] %>">
							</li>
							<li>
								<input type="hidden" id="checkedSms" value="<%= vo.getSms_agr() %>">
								<label><span class="red">*</span>정보수신동의 SMS</label>
								<input type="radio" name="sms_agr" value="수신동의"><span class="rchk">수신동의</span>
								<input type="radio" name="sms_agr" value="수신거부"><span class="rchk">수신거부</span>
							</li>
							<li>
								<label><span class="red">*</span>음악취향</label>
								<input type="hidden" id="checkedGenre" value="<%= vo.getGenre_list() %>">
								<input type="checkbox" name="genre" value="발라드"><span class="rchk">발라드</span>
								<input type="checkbox" name="genre" value="댄스"><span class="rchk">댄스</span>
								<input type="checkbox" name="genre" value="랩/힙합"><span class="rchk">랩/힙합</span>
								<input type="checkbox" name="genre" value="R&B"><span class="rchk">R&B</span>
								<input type="checkbox" name="genre" value="인디"><span class="rchk">인디</span>
								<input type="checkbox" name="genre" value="EDM"><span class="rchk">EDM</span>
								<input type="checkbox" name="genre" value="트롯"><span class="rchk">트롯</span>
							</li>
							<li>
								<button type="submit" class="btn_style" id="btnUpdate">수정하기</button>
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
<% }else { %>
<script>
	alert("로그인을 진행하셔야 접근이 가능합니다.");
</script>
<% } %>