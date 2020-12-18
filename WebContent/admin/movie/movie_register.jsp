<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
<script src="http://localhost:9000/Music_streaming/js/jquery-3.5.1.min.js"></script>
<script>
	$(document).ready(function(){
		$("#btnMovieRegister").click(function(){
			movieRegisterForm.submit();
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
					<form name="movieRegisterForm" action="movieRegisterProc.jsp" method="post" class="admin_movie_register" enctype="multipart/form-data"">
						<ul>
							<li>
								<label>가수명</label>
								<input type="text" name="vartist" id= "vartist">
							</li>
							<li>
								<label>제 목</label>
								<input type="text" name="vtitle" id = "vtitle">
							</li>
							<li>
								<label>영상주소</label>
								<input type="text" name="vcontent" id = "vcontent">
							</li>
							<li>
								<label>영상소개</label>
								<textarea name="vintro" id = "vintro"></textarea>
							</li>
							<li>
								<label>뮤비사진</label>
								<input type="file" name="vfile1">
							</li>
							<li>
								<label>가수사진</label>
								<input type="file" name="vfile2">
							</li>
							<li>
								<button type="button" class="btn_style" id = "btnMovieRegister">등록</button>
								<button type="reset" class="btn_style_2">취소</button>
								<a href="movie_list.jsp"><button type="button" class="btn_style">목록으로</button></a>
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