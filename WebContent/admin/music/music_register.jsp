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
				<h1>노래 등록</h1>
				<form name="musicRegisterForm" action="#" method="get"
					class="admin_music_register">
					<ul>
						<li><label>노래제목</label> <input type="text"name="register_music_title" value="DYNAMITE"></li>
						<li><label>가수</label> <input type="text"name="register_music_singer" value="방탄소년단"></li>
						<li><label>가사</label> <textarea name="register_music_lyric">등록 할 가사</textarea></li>
						<li><label>앨범커버</label> <input type="file" name="register_music_file"></li>
						<li><button type="button" class="btn_style">등록완료</button>
								<button type="reset" class="btn_style_2">취소</button> 
								<a href="music_info.jsp"><button type="button"class="btn_style_2">이전페이지</button></a> 
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