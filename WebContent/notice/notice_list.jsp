<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.music.vo.*, com.music.dao.*, java.util.*"%>
<%
	MusicNoticeDAO dao = new MusicNoticeDAO();
	ArrayList<MusicNoticeVO> list = dao.getList();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://localhost:9000/Music_streaming/css/music_streaming.css">
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

					<% for(MusicNoticeVO vo : list){ %>
					<tr>
						<td><%=vo.getRno() %></td>
						<td><a href="notice_content.jsp?nid=<%=vo.getNid()%>"><%=vo.getNtitle() %></a></td>
						<td><%=vo.getNdate() %></td>
						<td><%=vo.getNhits() %></td>
					</tr>
						<% } %>
					<tr>
						<td colspan="4"><< 1 2 3 4 5 6 7 8 9 10 >></td>
					</tr>
				</table>
			</div>
		</section>
	</div>

	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>