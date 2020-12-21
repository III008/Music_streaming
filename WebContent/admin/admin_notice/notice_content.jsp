<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="com.music.dao.*, com.music.vo.*"
    %>
<%
	String nid = request.getParameter("nid");
	MusicNoticeDAO dao = new MusicNoticeDAO();
	MusicNoticeVO vo = dao.getContent(nid);
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
		<jsp:include page="../../manager_header.jsp"></jsp:include>
		
		<!-- content -->
		<div class="content_notice">
			<section class="section_1">
				<div>
					<h1>공지사항</h1>
					<table class="notice_content">
						<tr>
							<td colspan="7">
								<a href="notice_list.jsp?nid=<%=nid%>"><button type="button" class="btn_style">목록으로</button></a>
								<a href="notice_update.jsp?nid=<%=vo.getNid()%>"><button type="button" class="btn_style">수정하기</button></a>
								<a href="notice_delete.jsp?nid=<%=vo.getNid()%>"><button type="button" class="btn_style">삭제하기</button></a>
							</td>
						</tr>
						<tr>
							<th colspan="6"><%= vo.getNtitle() %></th>
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
			
			<section class="section_2">
	
			</section>
 		</div>
		
		<!-- footer -->
		<jsp:include page="../../footer.jsp"></jsp:include>
	</body>
</html>