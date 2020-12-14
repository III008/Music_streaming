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
		<jsp:include page="../../manager_header.jsp"></jsp:include>
		
		<!-- content -->
		<div class="content_board">
			<section class="section_1">
				<div>
					<h1>매거진 관리</h1>
					<table class="board_content">
						<tr>
							<td colspan="4">
								<a href="magazine_list.jsp"><button type="button" class="btn_style">목록으로</button></a>
							</td>
							<td colspan="3">
								<a href="magazine_update.jsp"><button type="button" class="btn_style">수정</button></a>
								<a href="magazine_delete.jsp"><button type="button" class="btn_style_2">삭제</button></a>
							</td>
						</tr>
						<tr>
							<th colspan="7">매거진등록 미완성</th>
							
						</tr>
						<tr>
							<td>매거진등록 미완성</td>
							<td>추천</td>
							<td>0</td>
							<td>조회</td>
							<td>70</td>
							<td>등록일</td>
							<td>2020.12.05</td>
						</tr>
						<tr>
							<td colspan="7">
								<p> 매거진  <br>
								</p>
							</td>
						</tr>
					</table>
				</div>
			</section>
			
			<section class="section_2">
				<div>
				
						
				</div>
			</section>
 		</div>
		
		<!-- footer -->
		<jsp:include page="../../footer.jsp"></jsp:include>
	</body>
</html>