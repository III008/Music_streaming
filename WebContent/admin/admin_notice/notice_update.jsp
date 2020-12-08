<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>board_write</title>
		<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
	</head>
	<body>
		<!-- header -->
		<jsp:include page="../../manager_header.jsp"></jsp:include>
		
		<!-- content -->
		<div class="content_board">
			<section class="section_1">
				<div>
					<h1>게시판</h1>
					<form name="boardWriteForm" action="#" method="get" class="board_update">
						<ul>
							<li>
								<label>제 목</label>
								<input type="text" name="btitle" value="방탄소년단 신곡 너무 좋아요!">
							</li>
							<li>
								<label>내 용</label>
								<textarea name="bcontent">Dynamite 노래 너무 좋아요! 다음 앨범도 기대됩니다~ </textarea>
							</li>
							<li>
								<label>파일첨부</label>
								<input type="file" name="bfile">
							</li>
							<li>
								<button type="button" class="btn_style">수정완료</button>
								<button type="reset" class="btn_style_2">취소</button>
								<a href="board_content.jsp"><button type="button" class="btn_style_2">이전페이지</button></a>
								<a href="board_list.jsp"><button type="button" class="btn_style">목록으로</button></a>
							</li>
						</ul>
					</form>
				</div>
			</section>
 		</div>
		
		<!-- footer -->s
		<jsp:include page="../../footer.jsp"></jsp:include>
	</body>
</html>