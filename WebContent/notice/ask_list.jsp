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
		<jsp:include page="../header.jsp"></jsp:include>
		
		<!-- content -->
		<div class="content_notice">
			<section class="section_1">
				<div>
					<h1>공지사항</h1>
					<table class="notice_menu">
						<tr>
							<td><a href="notice_list.jsp">공지사항</a></td>
							<td><a href="ask_list.jsp">자주하는 질문</a></td>
						</tr>
					</table>
					
					<table class="ask">
						<tr>
							<th>no</th>
							<th>분류</th>
							<th>제목</th>
							<th>등록일</th>
							<th>조회수</th>
						</tr>
						<tr>
							<td>1</td>
							<td>회원 문의</td>
							<td><a href="ask_content.jsp">비밀번호를 변경하려면 어떻게 해야 하나요?</a></td>
							<td>2020.12.01</td>
							<td>70</td>
						</tr>
						<tr>
							<td colspan="5"> << 1 2 3 4 5 6 7 8 9 10 >> </td>
						</tr>
					</table>
				</div>
			</section>
		</div>
		
		<!-- footer -->
		<jsp:include page="../footer.jsp"></jsp:include>
	</body>
</html>