<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.music.vo.*, com.music.dao.*"%>
<%
	String nid = request.getParameter("nid");
	MusicNoticeDAO dao = new MusicNoticeDAO();
	MusicNoticeVO vo = dao.getContent(nid);
	dao.getUpdateHits(nid);
%>     
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>notice_content</title>
		<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
	</head>
	<body>
		<!-- header -->
		<jsp:include page="../header.jsp"></jsp:include>
		
		<!-- content -->
		<div class="content_notice">
			<section class="section_1">
				<div>
					<h1>게시판</h1>
					<table class="notice_content">
						<tr>
							<td colspan="7">
								<a href="notice_list.jsp"><button type="button" class="btn_style">목록으로</button></a>
							</td>
						</tr>
						<tr>
							<th colspan="7"><%= vo.getNtitle() %></th>
						</tr>
						<tr>
							<td>Admin</td>
						<!-- 	<td>추천</td>
							<td>0</td> -->
							<td>조회</td>
							<td><%= vo.getNhits() %></td>
							<td>등록일</td>
							<td><%= vo.getNdate() %></td>
						</tr>
						<tr>
							<td colspan="7">
								<p>
									<%= vo.getNcontent().replace("\r\n", "<br>")  %><br>
									<% if(vo.getNsfile() != null){ %>
									<img src="http://localhost:9000/Music_streaming/upload/<%=vo.getNsfile()%>"width="50%"  >
							 		<% } %>
								</p>
							</td>
						</tr>
					</table>
				</div>
			</section>
			
	<!-- 		<section class="section_2">
				<div>
					<table class="notice_content_title">
						<tr>
							<td colspan="2">댓글</td>
						</tr>
					</table>
					<table class="notice_content_reg">
						<tr>
							<td><textarea placeholder="관리자만 댓글을 입력할 수 있습니다."></textarea></td>
							<td><button type="button" class="btn_style">등록</button></td>
						</tr>
					</table>
				</div>
			</section>
 		</div> -->
		
		<!-- footer -->
		<jsp:include page="../footer.jsp"></jsp:include>
	</body>
</html>