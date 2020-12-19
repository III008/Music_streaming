<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.music.dao.*, com.music.vo.*, java.util.*"%>
	
<%  String mid = request.getParameter("mid");
	MusicChartDAO dao = new MusicChartDAO();
	MusicChartVO vo = dao.getContent(mid);  
	ArrayList<MusicChartVO> commlist = dao.getComm_List(mid);  
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
</head>
<body class="music_info">
	<!-- header -->
	<jsp:include page="../../manager_header.jsp" />
	<div class="content_board">
		<section class="section_1">
			<div>
				<h1>음악 관리</h1>
				<table class="board_content">
						<tr>
							<td colspan="3">
								<a href="music_list.jsp"><button type="button" class="btn_style">목록으로</button></a>
								<a href="music_update.jsp?mid=<%= mid %>"><button type="button" class="btn_style">수정</button></a>
								<a href="music_delete.jsp?mid=<%= mid %>"><button type="button" class="btn_style_2">삭제</button></a>
							</td>
						</tr>
						<tr>
							<th colspan="3">OVERVIEW</th>
						</tr>
						<tr id="content">
							<td>앨범커버</td>
							<% if(vo.getMusic_simage() != null) { %>
								<td><img src="http://localhost:9000/Music_streaming/images/<%= vo.getMusic_simage() %>" 
									width="200px" height="200px"></td>
							<% }else { %>
								<td>앨범커버를 등록해주세요</td>
							<% } %>
						</tr>
						<tr id="content">
							<td>음악 제목</td>
							<td><%= vo.getSong() %></td>
						</tr>
						<tr id="content">
							<td>아티스트</td>
							<td><%= vo.getArtist() %></td>
						</tr>
						<tr id="content">
							<td>작사</td>
							<td><%= vo.getLyricist() %></td>
						</tr>
						<tr id="content">
							<td>작곡</td>
							<td><%= vo.getComposer() %></td>
						</tr>
						<tr id="content">
							<td>가사</td>
							<td><%= vo.getLyrics().replace("\r\n", "<br>") %></td>
						</tr>
						<tr id="content">
							<td>좋아요 수</td>
							<td><%= vo.getMhits() %></td>
						</tr>
						<tr id="content">
							<td>등록일</td>
							<td><%= vo.getMdate() %></td>
						</tr>
						<tr>
							<th colspan="3"></th>
						</tr>
					</table>
			</div>
		</section>
	</div>

	<!-- footer -->
	<jsp:include page="../../footer.jsp" />
</body>
</html>