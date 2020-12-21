<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.music.vo.*, com.music.dao.*"%>
<%
	String bid = request.getParameter("bid");
	MusicBoardDAO dao = new MusicBoardDAO();
	MusicBoardVO vo = dao.getContent(bid);
	dao.getUpdateHits(bid);
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>board_content</title>
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
					<table class="board_content">
						<input type="hidden" name="id" value="<%= "test1234" %>">
						<tr>
							<td colspan="4">
								<a href="board_list.jsp"><button type="button" class="btn_style">목록으로</button></a>
							</td>
							<td colspan="3">
								<a href="board_update.jsp?bid=<%=bid%>"><button type="button" class="btn_style">수정</button></a>
								<a href="board_delete.jsp?bid=<%=bid%>"><button type="button" class="btn_style_2">삭제</button></a>
							</td>
						</tr>
						<tr>
							<th colspan="7"><%= vo.getBtitle() %></th>
						</tr>
						<tr>
							<td>닉네임</td>
							<td>추천</td>
							<td><%= vo.getBrec() %></td>
							<td>조회</td>
							<td><%= vo.getBhits() %></td>
							<td>등록일</td>
							<td><%= vo.getBdate() %></td>
						</tr>
						<tr>
							<td colspan="7">
								<p>
									<%= vo.getBcontent().replace("\r\n", "<br>") %><br>
									<% if(vo.getBsfile() != null) { %>
									<img src="http://localhost:9000/Music_streaming/upload/<%=vo.getBsfile()%>" width=50%>
									<% } %>
								</p>
							</td>
						</tr>
					</table>
				</div>
			</section>
			
			<section class="section_2">
				<div>
					<table class="board_content_title">
						<tr>
							<td>댓글</td>
						</tr>
					</table>
					<table class="board_content_rp">
						<tr>
							<td><img src="http://localhost:9000/Music_streaming/images/member_rp.png"></td>
							<td>닉네임</td>
							<td>날짜</td>
						</tr>
						<tr>
							<td colspan="3">댓글 내용</td>
						</tr>
					</table>
					<table class="board_content_reg">
						<tr>
							<td><textarea placeholder="댓글을 입력해주세요."></textarea></td>
							<td><button type="button" class="btn_style">등록</button></td>
						</tr>
					</table>
				</div>
			</section>
 		</div>
		
		<!-- footer -->
		<jsp:include page="../footer.jsp"></jsp:include>
	</body>
</html>