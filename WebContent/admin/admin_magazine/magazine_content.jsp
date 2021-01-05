<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.music.dao.*, com.music.vo.*"%>
<%
	String mid = request.getParameter("mid");
MusicMagazineDAO dao = new MusicMagazineDAO();
MusicMagazineVO vo = dao.getContent(mid);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>magazine_content</title>
<link rel="stylesheet"
	href="http://localhost:9000/Music_streaming/css/music_streaming.css">
</head>
<body>
	<!-- header -->
	<jsp:include page="../../manager_header.jsp"></jsp:include>

	<!-- content -->
	<div class="content_notice">
		<section class="section_1">
			<div>
				<table class="notice_content">
					<tr>
						<td colspan="7"><a href="magazine_list.jsp?mid=<%=mid%>"><button
									type="button" class="btn_style">목록으로</button></a> <a
							href="magazine_update.jsp?mid=<%=vo.getMid()%>"><button
									type="button" class="btn_style">수정하기</button></a> <a
							href="magazine_delete.jsp?mid=<%=vo.getMid()%>"><button
									type="button" class="btn_style">삭제하기</button></a></td>
					</tr>
					</table>
					<div class="content_title">
						<h1><%=vo.getMtitle()%></h1>
						<p><%=vo.getMsummary()%></p>
					</div>

					<div class="magazine_content">
						<div class="magazine_subheading">
							<h2><%=vo.getMsubtitle()%></h2>
						</div>

						<section>
							<%if (vo.getMsfile() != null) {%>
							<img
								src="http://localhost:9000/Music_streaming/upload/<%=vo.getMsfile()%>"
								width="50%">
							<%}%>
							<p><%=vo.getMcontent()%></p>
						</section>

					</div>
			</div>
		</section>

		<section class="section_2"></section>
	</div>

	<!-- footer -->
	<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>