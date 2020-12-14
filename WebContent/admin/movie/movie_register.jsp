<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
</head>
<body>
	<!-- header -->
		<jsp:include page="../../manager_header.jsp"></jsp:include>
		
		<!-- content -->
		<div class="content_board">
			<section class="section_1">
				<div>
					<h1>뮤비 등록</h1>
					<form name="movieRegisterForm" action="#" method="get" class="admin_movie_register">
						<ul>
							<li>
								<label>제 목</label>
								<input type="text" name="register_movie_title">
							</li>
							<li>
								<label>영상주소</label>
								<input type="text" name="register_movie_address">
							</li>
							<li>
								<label>내용</label>
								<textarea name="register_movie_content"></textarea>
							</li>
							<li>
								<label>파일첨부</label>
								<input type="file" name="register_movie_file">
							</li>
							<li>
								<button type="button" class="btn_style">등록</button>
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