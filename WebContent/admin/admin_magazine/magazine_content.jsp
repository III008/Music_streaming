<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="com.music.dao.*, com.music.vo.*"
    %>
<%
	String mid = request.getParameter("mid");
	MusicMagazineDAO dao = new MusicMagazineDAO();
	MusicMagazineVO vo = dao.getContent(mid);
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
					<h1>매거진</h1>
					<table class="notice_content">
						<tr>
							<td colspan="7">
								<a href="magazine_list.jsp?mid=<%=mid%>"><button type="button" class="btn_style">목록으로</button></a>
								<a href="magazine_update.jsp?mid=<%=vo.getMid()%>"><button type="button" class="btn_style">수정하기</button></a>
								<a href="magazine_delete.jsp?mid=<%=vo.getMid()%>"><button type="button" class="btn_style">삭제하기</button></a>
							</td>
						</tr>
						<tr>
							<th colspan="6"><%= vo.getMtitle() %></th>
						</tr>
						<tr>
							<td>Admin</td>
						<!-- 	<td>추천</td>
							<td>0</td> -->
							<td>조회</td>
							<td><%= vo.getMhits() %></td>
							<td>등록일</td>
							<td><%= vo.getMdate() %></td>
						</tr>
						<tr>
							<td colspan="7">
								<p>
									<%= vo.getMcontent().replace("\r\n", "<br>")%><br>
									<% if(vo.getMsfile() != null){ %>
									<img src="http://localhost:9000/Music_streaming/upload/<%=vo.getMsfile()%>"width="50%"  >
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