<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
</head>
<style>

</style>
<body>
	<!-- header -->
	<jsp:include page="../../manager_header.jsp"></jsp:include>

	<!-- content -->
	<div class="content_notice">
		<section class="section_1">
			<div>
				<h1>뮤비 관리</h1>
				<div class = "d1">
				</div>
				<table class="admin_movie_list">
					<tr>
						<td colspan ="4"><a href ="movie_register.jsp"><button type = "button" class = "btn_style" >등록</button></a></td>
					</tr>
					
					<tr>
						<th>번호</th>
						<th>노래제목</th>
						<th>가수명</th>
						<th>등록일</th>
					</tr>
					<tr>
						<td>1</td>
						<td><a href="movie_info.jsp">HOW LIKE THAT</a></td>
						<td>BLACKPINK</td>
						<td>2020.11.22</td>
					</tr>
					<tr>
						<td>2</td>
						<td><a href="#"></a></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>3</td>
						<td><a href="#"></a></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>4</td>
						<td><a href="#"></a></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>5</td>
						<td><a href="#"></a></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>6</td>
						<td><a href="#"></a></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>7</td>
						<td><a href="#"></a></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>8</td>
						<td><a href="#"></a></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td></td>
						<td><a href="#"></a></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>10</td>
						<td><a href="#"></a></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td colspan="4"><< 1 2 3 4 5 6 7 8 9 10 >></td>
					</tr>
				</table>
			</div>
		</section>
	</div>

	<!-- footer -->
	<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>