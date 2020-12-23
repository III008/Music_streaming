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
<title>magazine_update</title>
<link rel="stylesheet"
	href="http://localhost:9000/Music_streaming/css/music_streaming.css">
<script
	src="http://localhost:9000/Music_streaming/js/jquery-3.5.1.min.js"></script>
<script src="http://localhost:9000/Music_streaming/js/join.js"></script>
<script>
	$(document).ready(function() {
		//파일선택
		$("input[type=file]").on('change', function() {
			if (window.FileReader) {
				var fileName = $(this)[0].files[0].name;
				$("#fname").text("").text(fileName);
			}
		});
	});
</script>
</head>
<body>
	<!-- header -->
	<jsp:include page="../../manager_header.jsp"></jsp:include>

	<!-- content -->
	<div class="content_board">
		<section class="section_1">
			<div>
				<h1>매거진 관리</h1>
				<form name="magazineUpdateForm" action="magazineUpdateProc.jsp"
					method="post" class="board_update" enctype="multipart/form-data">
					<input type="hidden" name="mid" value="<%=vo.getMid()%>">
					<ul>
						<li><label>제 목</label> <input type="text" name="mtitle"
							value="<%=vo.getMtitle()%>"></li>
						<li><label>요 약</label> <input type="text" name="msummary"
							value="<%=vo.getMsummary() %>">
						</li>
						<li><label>소제목</label> <input type="text" name="msubtitle"
							value="<%=vo.getMsubtitle()%>">
						<li><label>내 용</label> <textarea name="mcontent"><%=vo.getMcontent()%></textarea>
						</li>
						<li><label>파일첨부</label> <%if (vo.getMfile() != null) {%> <input
							type="file" name="mfile"><span id="fname"><%=vo.getMfile()%></span>
							<%} else { %> <input type="file" name="mfile"><span
							id="fname">선택된 파일 없음</span> <%} %></li>
						<li>
							<button type="submit" class="btn_style">수정완료</button>
							<button type="reset" class="btn_style_2">취소</button> <a
							href="magazine_content.jsp?mid=<%=mid%>"><button
									type="button" class="btn_style_2">이전페이지</button></a> <a
							href="magazine_list.jsp"><button type="button"
									class="btn_style">목록으로</button></a>
						</li>
					</ul>
				</form>
			</div>
		</section>
	</div>

	<!-- footer -->
	s
	<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>