<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
</head>
<body>
	<!-- header -->
	<jsp:include page="../../manager_header.jsp"></jsp:include>

	<!-- content -->
	<div class="content_board">
		<section class="section_1">
			<div>
				<h1>뮤비 수정</h1>
				<form name="movieUpdateForm" action="#" method="get"
					class="admin_movie_update">
					<ul>
						<li><label>제목</label> <input type="text"
							name="update_movie_title" value="HOW LIKE THAT"></li>
						<li><label>영상주소</label> <input type="text"
							name="update_movie_address"></li>
						<li><label>내용</label> <textarea name="update_movie_content"></textarea>
						</li>
						<li><label>사진첨부</label> <input type="file"
							name="update_movie_file"></li>
						<li>
							<button type="button" class="btn_style">수정완료</button>
							<button type="reset" class="btn_style_2">취소</button> <a
							href="movie_info.jsp"><button type="button"
									class="btn_style_2">이전페이지</button></a> <a href="movie_list.jsp"><button
									type="button" class="btn_style">목록으로</button></a>
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