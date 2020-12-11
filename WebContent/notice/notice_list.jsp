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
					
					<table class="notice">
						<tr>
							<th>no</th>
							<th>제목</th>
							<th>등록일</th>
							<th>조회수</th>
						</tr>
						<tr>
							<td>1</td>
							<td><a href="notice_content.jsp">[VIBE 업데이트] Windows 10에서 만나는 VIBE</a></td>
							<td>2020.12.01</td>
							<td>70</td>
						</tr>
						<tr>
							<td>2</td>
							<td><a href="#">공지사항</a></td>
							<td>2020.11.22</td>
							<td>70</td>
						</tr>
						<tr>
							<td>3</td>
							<td><a href="#">룰루</a></td>
							<td>2020.11.22</td>
							<td>70</td>
						</tr>
						<tr>
							<td>4</td>
							<td><a href="#">룰루</a></td>
							<td>2020.11.22</td>
							<td>70</td>
						</tr>
						<tr>
							<td>5</td>
							<td><a href="#">룰루</a></td>
							<td>2020.11.22</td>
							<td>70</td>
						</tr>
						<tr>
							<td>6</td>
							<td><a href="#">룰루</a></td>
							<td>2020.11.22</td>
							<td>70</td>
						</tr>
						<tr>
							<td>7</td>
							<td><a href="#">룰루</a></td>
							<td>2020.11.22</td>
							<td>70</td>
						</tr>
						<tr>
							<td>8</td>
							<td><a href="#">룰루</a></td>
							<td>2020.11.22</td>
							<td>70</td>
						</tr>
						<tr>
							<td>9</td>
							<td><a href="#">룰루</a></td>
							<td>2020.11.22</td>
							<td>70</td>
						</tr>
						<tr>
							<td>10</td>
							<td><a href="#">룰루</a></td>
							<td>2020.11.22</td>
							<td>70</td>
						</tr>
						<tr>
							<td colspan="4"> << 1 2 3 4 5 6 7 8 9 10 >> </td>
						</tr>
					</table>
				</div>
			</section>
		</div>
		
		<!-- footer -->
		<jsp:include page="../footer.jsp"></jsp:include>
	</body>
</html>