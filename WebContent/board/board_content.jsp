<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>board_content</title>
		<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
	</head>
	<body>
		<!-- header -->
		<jsp:include page="../header.jsp"></jsp:include>
		
		<!-- content -->
		<div class="content_board">
			<section class="section_1">
				<div>
					<h1>게시판</h1>
					<table class="board_content">
						<tr>
						</tr>
						<tr>
							<th>제목</th>
							<td>방탄소년단 신곡 너무 좋아요!</td>
							<th>등록일</th>
							<td>2020.11.23</td>
							<th>조회수</th>
							<td>70</td>
						</tr>
						<tr>
							<td colspan="6">
								<p> Dynamite 노래 너무 좋아요! <br>
									다음 앨범도 기대됩니다~ <br><br>
								</p>
							</td>
						</tr>
						<tr>
							<td colspan="6">
								<a href="board_update.jsp"><button type="button" class="btn_style">수정</button></a>
								<a href="board_delete.jsp"><button type="button" class="btn_style_2">삭제</button></a>
								<a href="board_list.jsp"><button type="button" class="btn_style">목록으로</button></a>
							</td>
						</tr>
					</table>
				</div>
			</section>
 		</div>
		
		<!-- footer -->
		<jsp:include page="../footer.jsp"></jsp:include>
	</body>
</html>