<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/Music_streaming/js/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
<script>
	$(document).ready(function(){
		
		var imgfileName = "";
		var musicfileName = "";
		
		//파일선택
		$("input[type=file]#music_image").on('change', function(){
			if(window.FileReader){
				imgfileName = $(this)[0].files[0].name;  //파일선택 0번지의 첫번째 파일의 이름을 fileName변수에 넣는다
				$("#fname_album").text("").text(imgfileName);//기존 데이터 지우고 fileName 값을 넣음
			}
		});
		
		$("input[type=file]#music_file").on('change', function(){
			if(window.FileReader){
				musicfileName = $(this)[0].files[0].name;  //파일선택 0번지의 첫번째 파일의 이름을 fileName변수에 넣는다
				$("#fname_music").text("").text(musicfileName);//기존 데이터 지우고 fileName 값을 넣음
			}
		});
		
		
		/** 유효성 체크 **/
		$("#btnsongRegister").click(function(){
			
			if($("#song").val() == ""){
				alert("음악제목을 입력해주세요");
				$("#song").focus();
				return false;
			}else if($("#artist").val() == ""){
				alert("가수를 입력해주세요");
				$("#artist").focus();
				return false;
			}else if($("#lyricist").val() == ""){
				alert("작사가를 입력해주세요");
				$("#lyricist").focus();
				return false;
			}else if($("#composer").val() == ""){
				alert("작곡가를 입력해주세요");
				$("#composer").focus();
				return false;
			}else if($("#lyrics").val() == ""){
				alert("가사를 입력해주세요");
				$("#lyrics").focus();
				return false;
			}else if(imgfileName == ""){
				alert("앨범커버 입력해주세요");
				$("#music_image").focus();
				return false;
			}else if(musicfileName == ""){
				alert("음악파일 입력해주세요");
				$("#music_file").focus();
				return false;
			}else{
				//폼이름.submit()
				musicRegisterForm.submit();
			}
		});//btn_songRegister click -- validation check
		
	});	
</script>
</head>
<body class="music_register">
	<!-- header -->
	<jsp:include page="../../manager_header.jsp"></jsp:include>
	<!-- content -->
	<div class="content_board">
		<section class="section_1">
			<div>
				<h1>음악 등록</h1>
				<form name="musicRegisterForm" action="musicRegisterProc.jsp" method="post" enctype="multipart/form-data"
					class="admin_music_register">
					<ul>
						<li><label>음악제목</label> <input type="text" name="song" id="song"></li>
						<li><label>가수</label> <input type="text" name="artist" id="artist"></li>
						<li><label>작사</label> <input type="text" name="lyricist" id="lyricist"></li>
						<li><label>작곡</label> <input type="text" name="composer" id="composer"></li>
						<li class="lyrics"><label>가사</label><textarea name="lyrics" id="lyrics"></textarea></li>
						<li class="music_image"><label>앨범커버</label> 
							<input type="file" name="music_image" id="music_image" value="">
							<span id="fname_album" class="fname">앨범커버 등록해주세요</span>
						</li>
						<li class="music_file"><label>음악파일</label> 
							<input type="file" name="music_file" id="music_file" value="">
							<span id="fname_music" class="fname">음악파일 등록해주세요</span>
						</li>
						<li><button type="button" class="btn_style" id="btnsongRegister">등록완료</button>
								<button type="reset" class="btn_style_2">취소</button> 
								<a href="music_list.jsp"><button type="button" class="btn_style">목록으로</button></a></li>
					</ul>
				</form>
			</div>
		</section>
	</div>




	<!-- footer -->
	<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>