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
	<div class="content_notice">
		<section class="section_1">
			<div>
				<h1>노래 관리</h1>
				<div class="d1"></div>
				<table class="admin_movie_list">
					<tr>
						<td colspan="5"><a href="music_register.jsp"><button
									type="button" class="btn_style">등록</button></a></td>
					</tr>

					<tr>
						<th>순위</th>
						<th>앨범커버</th>
						<th>노래제목</th>
						<th>가수명</th>
						<th>발매일</th>
					</tr>
					<tr>
						<td>1</td>
						<td><img
							src="http://localhost:9000/Music_streaming/images/mchart1_top1.jpg"></td>
						<td><a href="music_info.jsp">Dynamite</a></td>
						<td>방탄소년단</td>
						<td>2020.11.22</td>
					</tr>
					<tr>
						<td>2</td>
						<td><img
							src="http://localhost:9000/Music_streaming/images/mchart1_top2.jpg"></td>
						<td><a href="#"></a>잠이 오질 않네요</td>
						<td>장범준</td>
						<td>2020.10.24</td>
					</tr>
					<tr>
						<td>3</td>
						<td><img
							src="http://localhost:9000/Music_streaming/images/mchart1_top3.jpg"></td>
						<td><a href="#"></a>Lovesick Girls</td>
						<td>BLACKPINK</td>
						<td>2020.10.02</td>
					</tr>
					<tr>
						<td>4</td>
						<td><img
							src="http://localhost:9000/Music_streaming/images/mchart1_top5.jpg"></td>
						<td><a href="#"></a>힘든건 사랑이 아니다</td>
						<td>임창정</td>
						<td>2020.11.19</td>
					</tr>
					<tr>
						<td>5</td>
						<td><img
							src="http://localhost:9000/Music_streaming/images/mchart1_top4.jpg"></td>
						<td><a href="#"></a>DON'T TOUCH ME</td>
						<td>환불원정대</td>
						<td>2020.10.10</td>
					</tr>
					<tr>
						<td>6</td>
						<td></td>
						<td><a href="#"></a></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>7</td>
						<td></td>
						<td><a href="#"></a></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>8</td>
						<td></td>
						<td><a href="#"></a></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>9</td>
						<td></td>
						<td><a href="#"></a></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<td>10</td>
						<td></td>
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