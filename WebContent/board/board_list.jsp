<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.music.vo.*, com.music.dao.*, java.util.*" %>
    
<%
	MusicBoardDAO dao = new MusicBoardDAO();
	ArrayList<MusicBoardVO> list = dao.getList();
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
		<jsp:include page="../header.jsp"></jsp:include>
		
		<!-- content -->
		<div class="content_board">
			<section class="section_1">
				<div>
					<h1>게시판</h1>
					<table class="board">
						<tr>
							<td colspan="5">
								<a href="board_write.jsp">
									<button type="button" class="btn_style">글쓰기</button>
								</a>  
							</td>
						</tr>
						<tr>
							<th>no</th>
							<th>제목</th>
							<th>등록일</th>
							<th>추천</th>
							<th>조회수</th>
						</tr>
						<% for(MusicBoardVO vo : list) { %>
						<tr>
							<td><%= vo.getRno() %></td>
							<td><a href="board_content.jsp?nid=<%=vo.getBid()%>"><%= vo.getBtitle() %></a>
							<td><%= vo.getBdate() %></td>
							<td><%= vo.getBrec() %></td>
							<td><%= vo.getBhits() %></td>
						</tr>
						<% } %>
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