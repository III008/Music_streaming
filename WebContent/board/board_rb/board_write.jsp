<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시판</title>
		<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
		<script src="http://localhost:9000/Music_streaming/js/jquery-3.5.1.min.js"></script>
		<script src="http://localhost:9000/Music_streaming/js/join.js"></script>
	</head>
	<body>
		<!-- header -->
		<jsp:include page="../../header.jsp"></jsp:include>
		
		<!-- content -->
		<div class="content_board">
			<section class="section_1">
				<div>
					<h1>게시판</h1>
					<form name="boardWriteForm" action="boardWriteProc.jsp" method="post" class="board_write" enctype="multipart/form-data">
						<ul>
							<li>
								<label>제 목</label>
								<input type="text" name="rb_btitle" id="btitle">
							</li>
							<li>
								<label>내 용</label>
								<textarea name="rb_bcontent"></textarea>
							</li>
							<li>
								<label>파일첨부</label>
								<input type="file" name="rb_bfile">
							</li>
							<li>
								<button type="button" class="btn_style" id="btnBoardWrite">등록</button>
								<button type="reset" class="btn_style_2">취소</button>
								<a href="board_list.jsp"><button type="button" class="btn_style">목록으로</button></a>
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