<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.music.vo.*, com.music.dao.*"%>
	<%
		String vid = request.getParameter("vid");
		MusicVideoDAO dao = new MusicVideoDAO();
		MusicVideoVO vo = dao.getContent(vid);
	%>
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
							href="movie_delete.jsp?vid=<%= vid %>"><button type="button"
									class="btn_style_2">삭제</button></a></td>
					</tr>
					<tr>
						<th colspan="7"><%=vo.getVtitle() %></th>
					</tr>
					<tr>
					<% if(vo.getVsfile2() != null){ %>
					<td><img src = "http://localhost:9000/Music_streaming/upload/<%=vo.getVsfile2()%>>"></td>
						<% } %>
						<td><%=vo.getVartist() %></td>
						<td><%=vo.getVdate() %></td>
					</tr>
					<tr>
						<td colspan="7"><%=vo.getVcontent() %></td>
					</tr>
				</table>
			</div>
		</section>
	</div>

	<!-- footer -->
	<jsp:include page="../../footer.jsp" />
</body>
</html>