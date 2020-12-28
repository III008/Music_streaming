<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.music.vo.*, com.music.dao.*"%>
<%
	String bid = request.getParameter("bid");
	MusicBoardDAO dao = new MusicBoardDAO();
	MusicBoardVO vo = dao.getContent(bid);
	/* ArrayList<MusicBoardVO> rplist = dao.getRp_List(bid); */
	dao.getUpdateHits(bid);
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>board_content</title>
		<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
		<!-- <script src="http://localhost:9000/Music_streaming/js/jquery-3.5.1.min.js"></script> -->
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
									<% if(vo.getBd_sfile() != null) { %>
									<img src="http://localhost:9000/Music_streaming/upload/<%=vo.getBd_sfile()%>" width=50%>
									<% } %>
								</p>
							</td>
						</tr>
					</table>
				</div>
			</section>
			
			<%-- <section class="section_2">
				<div>
					<table class="board_content_title">
						<tr>
							<td>댓글</td>
						</tr>
					</table>
				</div>
				<form name="boardReplyForm" action="boardReplyProc.jsp" method="post" class="reply_write">
					<input type="hidden" name="id" value="<%= "test1234" %>"> <!-- 예시 -->
					<input type="hidden" name="bid" value="<%= vo.getBid() %>">
					<table class="board_content_reg">
						<tr>
							<td><textarea placeholder="댓글을 입력해주세요."></textarea></td>
							<td><button type="button" class="btn_style">등록</button></td>
						</tr>
					</table>
				</form>
			</section>
			
			<section class="section_3">
				<% for(MusicBoardVO bvo : rplist) %>
				<table class="board_content_rp">
						<tr>
							<td><img src="http://localhost:9000/Music_streaming/images/member_rp.png"></td>
							<td><div id="id"><a><%= bvo.getId() %></a></div></td>
							<td><div id="date"><label><%= bvo.getRp_date() %></label></div></td>
						</tr>
						<tr>
							<td colspan="3"><div id="rp_write"><label><%= bvo.getRp_write() %></label></div></td>
						</tr>
					</table>
			</section> --%>
 		</div>
		
		<!-- footer -->
		<jsp:include page="../footer.jsp"></jsp:include>
	</body>
</html>