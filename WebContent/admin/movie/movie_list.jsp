<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.music.vo.*, com.music.dao.*, java.util.*"%>
	<%
		MusicVideoDAO dao = new MusicVideoDAO();
		ArrayList<MusicVideoVO> list = dao.getList();
	%>
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
					<%for(MusicVideoVO vo : list){ %>
					<tr>
						<td><%=vo.getRno() %></td>
						<td><a href="movie_info.jsp?vid=<%= vo.getVid() %>"><%=vo.getVtitle() %></a></td>
						<td><%=vo.getVartist() %></td>
						<td><%=vo.getVdate() %></td>
					</tr>
					<%} %>
					<tr>
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