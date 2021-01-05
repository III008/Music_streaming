<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="com.music.vo.*, com.music.dao.*, java.util.*"%>
<% 
	SessionVO svo = (SessionVO)session.getAttribute("svo");
	
	String id = "";
	//svo 객체 != null ===> 로그인 성공!!
	//svo 객체 == null ===> 로그인 하지 않은 상태
	if(svo != null){
		MusicMemberDAO dao = new MusicMemberDAO();
		id = dao.getId(svo.getName());
	}
%>
<%
	String rb_bid = request.getParameter("rb_bid");
	MusicBoardRbDAO dao = new MusicBoardRbDAO();
	MusicBoardRbVO vo = dao.getContent(rb_bid);
	
	ArrayList<MusicBoardRbVO> rplist = dao.getRp_List(rb_bid);
	dao.getUpdateHits(rb_bid);
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시판</title>
		<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
		<script src="http://localhost:9000/Music_streaming/js/jquery-3.5.1.min.js"></script>
	</head>
	<body>
		<!-- header -->
		<jsp:include page="../../header.jsp"></jsp:include>
		
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
								<a href="board_update.jsp?rb_bid=<%=rb_bid%>"><button type="button" class="btn_style">수정</button></a>
								<a href="board_delete.jsp?rb_bid=<%=rb_bid%>"><button type="button" class="btn_style_2">삭제</button></a>
							</td>
						</tr>
						<tr>
							<th colspan="7"><%= vo.getRb_btitle() %></th>
						</tr>
						<tr>
							<td>닉네임</td>
							<td>추천</td>
							<td><%= vo.getRb_brec() %></td>
							<td>조회</td>
							<td><%= vo.getRb_bhits() %></td>
							<td>등록일</td>
							<td><%= vo.getRb_bdate() %></td>
						</tr>
						<tr>
							<td colspan="7">
								<p>
									<%= vo.getRb_bcontent() /* .replace("\r\n", "<br>") */ %><br>
									<% if(vo.getRb_bsfile() != null) { %>
									<img src="http://localhost:9000/Music_streaming/upload/<%=vo.getRb_bsfile()%>" width=50%>
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
				</div>
				<form name="boardReplyForm" action="boardReplyProc.jsp" method="post" class="reply_write">
					<input type="hidden" name="id" value="<%= id %>"> <!-- 예시 -->
					<input type="hidden" name="rb_bid" value="<%= vo.getRb_bid() %>">
					<table class="board_content_reg">
						<tr>
							<td id="reply"><textarea placeholder="댓글을 입력해주세요." name="rp_write"></textarea></td>
							<td id="write_button"><button type="submit" class="btn_style">등록</button></td>
						</tr>
					</table>
				</form>
			</section>
			
			<section class="section_3">
				<div>
					<% for(MusicBoardRbVO vo1 : rplist) { %>
					<% MusicMemberDAO dao_member = new MusicMemberDAO();
					String nickname = dao_member.getNickname(vo1.getId()); %>
					<table class="board_content_rp">
						<tr>
							<td><img src="http://localhost:9000/Music_streaming/images/member_rp.png"></td>
							<td><div id="id"><a><%= nickname %> (<%= vo1.getId() %>)</a></div></td>
							<td><div id="date"><label><%= vo1.getRp_date() %></label></div></td>
						</tr>
						<tr>
							<td colspan="3"><div id="rp_write"><label><%= vo1.getRp_write() %></label></div></td>
						</tr>
					</table>
					<% } %>
				</div>
			</section>
 		</div>
		
		<!-- footer -->
		<jsp:include page="../../footer.jsp"></jsp:include>
	</body>
</html>