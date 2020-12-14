<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>notice_content</title>
		<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
	</head>
	<body>
		<!-- header -->
		<jsp:include page="../../manager_header.jsp"></jsp:include>
		
		<!-- content -->
		<div class="content_notice">
			<section class="section_1">
				<div>
					<h1>게시판</h1>
					<table class="notice_content">
						<tr>
							<td colspan="7">
								<a href="notice_list.jsp"><button type="button" class="btn_style">목록으로</button></a>
								<a href="notice_update.jsp"><button type="button" class="btn_style">수정하기</button></a>
							</td>
						</tr>
						<tr>
							<th colspan="7">[VIBE 업데이트] Windows 10에서 만나는 VIBE</th>
						</tr>
						<tr>
							<td>Admin</td>
							<td>추천</td>
							<td>0</td>
							<td>조회</td>
							<td>70</td>
							<td>등록일</td>
							<td>20.12.01</td>
						</tr>
						<tr>
							<td colspan="7">
								<p> 공지사항<br>
									공지사항<br><br>
								</p>
							</td>
						</tr>
					</table>
				</div>
			</section>
			
			<section class="section_2">
	
			</section>
 		</div>
		
		<!-- footer -->
		<jsp:include page="../../footer.jsp"></jsp:include>
	</body>
</html>