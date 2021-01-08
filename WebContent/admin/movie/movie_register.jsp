<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://localhost:9000/Music_streaming/js/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
<script>
	$(document).ready(function() {
		
		var vfile1Name = "";
		var vfile2Name = "";
		
		//파일선택
		$("input[type=file]#vfile1").on('change', function(){
			if(window.FileReader){
				vfile1Name = $(this)[0].files[0].name;  //파일선택 0번지의 첫번째 파일의 이름을 fileName변수에 넣는다
				$("#vfile1_msg").text("").text(vfile1Name);//기존 데이터 지우고 fileName 값을 넣음
			}
		});
		
		$("input[type=file]#vfile2").on('change', function(){
			if(window.FileReader){
				vfile2Name = $(this)[0].files[0].name;  //파일선택 0번지의 첫번째 파일의 이름을 fileName변수에 넣는다
				$("#vfile2_msg").text("").text(vfile2Name);//기존 데이터 지우고 fileName 값을 넣음
			}
		});
		
		
		
		
		
		$("#btnMovieRegister").click(function() {
			if ($("#vartist").val() == "") {
				alert("가수명을 입력해주세요.");
				$("#vartist").focus();
				return false;
			} else if ($("#vtitle").val() == "") {
				alert("노래제목을 입력해주세요.");
				$("#vtitle").focus();
				return false;
			} else if ($("#vcontent").val() == "") {
				alert("영상주소를 입력해주세요.");
				$("#vcontent").focus();
				return false;
			} else if ($("#vintro").val() == "") {
				alert("영상소개를 입력해주세요.");
				$("#vintro").focus();
				return false;
			}else if(vfile1Name == ""){
				alert("뮤비사진을 입력해주세요,");
				$("#vfile1").focus();
				return false;
			}else if(vfile2Name == ""){
				alert("가수사진을 입력해주세요.");
				$("#vfile2").focus();
				return false;
			} else {
				movieRegisterForm.submit();
			}
		});
	});
</script>
</head>
<body>
	<!-- header -->
	<jsp:include page="../../manager_header.jsp"></jsp:include>

	<!-- content -->
	<div class="content_board">
		<section class="section_1">
			<div>
				<h1>뮤비 등록</h1>
				<form name="movieRegisterForm" action="movieRegisterProc.jsp"
					method="post" enctype="multipart/form-data" class="admin_movie_register">
					<ul>
						<li><label>가수명</label> <input type="text" name="vartist"
							id="vartist"></li>
						<li><label>노래제목</label> <input type="text" name="vtitle"
							id="vtitle"></li>
						<li><label>영상주소</label> <input type="text" name="vcontent"
							id="vcontent"></li>
						<li><label>영상소개</label> <textarea name="vintro" id="vintro"></textarea>
						</li>
						<li><label>뮤비사진</label> 
							<input type="file" name="vfile1" id ="vfile1" value="">
							<span id="vfile1_msg" class="vfile_msg">뮤비사진을 등록해주세요</span>
						</li>
						<li><label>가수사진</label> 
							<input type="file" name="vfile2" id = "vfile2" value = "">
							<span id="vfile2_msg" class="vfile_msg">가수사진을 등록해주세요</span>
						</li>
						<li>
							<button type="button" class="btn_style" id="btnMovieRegister">등록</button>
							<button type="reset" class="btn_style_2">취소</button> <a
							href="movie_list.jsp"><button type="button" class="btn_style">목록으로</button></a>
						</li>
					</ul>
				</form>
			</div>
		</section>
	</div>

	<!-- footer -->
	<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>