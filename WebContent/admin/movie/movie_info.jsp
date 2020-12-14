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
	<jsp:include page="../../manager_header.jsp" />
	<div class="content_board">
		<section class="section_1">
			<div>
				<h1>뮤비 관리</h1>
				<table class="admin_movie_info">
					<tr>
						<td colspan="4"><a href="movie_list.jsp"><button
									type="button" class="btn_style">목록으로</button></a></td>
						<td colspan="3"><a href="movie_update.jsp"><button
									type="button" class="btn_style">수정</button></a> <a
							href="movie_delete.jsp"><button type="button"
									class="btn_style_2">삭제</button></a></td>
					</tr>
					<tr>
						<th colspan="7">HOW LIKE THAT</th>
					</tr>
					<tr>
						<td>BLACKPINK</td>
						<td>2020.11.22</td>
					</tr>
					<tr>
						<td colspan="7"><iframe width="560" height="315"
								src="https://www.youtube.com/embed/ioNng23DkIM?controls=0"
								frameborder="0"
								allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
								allowfullscreen></iframe></td>
					</tr>
				</table>
			</div>
		</section>
	</div>

	<!-- footer -->
	<jsp:include page="../../footer.jsp" />
</body>
</html>