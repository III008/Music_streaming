<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.music.dao.*, com.music.vo.*"%>
<%
	String nid = request.getParameter("nid");
	MusicNoticeDAO dao = new MusicNoticeDAO();
	MusicNoticeVO vo = dao.getContent(nid);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board_write</title>
<link rel="stylesheet"
	href="http://localhost:9000/Music_streaming/css/music_streaming.css">
<script
	src="http://localhost:9000/Music_streaming/js/jquery-3.5.1.min.js"></script>
<script src="http://localhost:9000/Music_streaming/js/join.js"></script>

<script>
	$(document).ready(function(){
		//파일선택
		$("input[type=file]").on('change',function(){
			if(window.FileReader){
				var fileName = $(this)[0].files[0].name;
				$("#fname").text("").text(fileName);
			}
		});
	});
</script>
</head>
<body>
	<!-- header -->
	<jsp:include page="../../manager_header.jsp" />

	<!-- content -->
	<div class="content_board">
		<section class="section_1">
			<div>
				<h1>공지사항</h1>
				<form name="noticeUpdateForm" action="noticeUpdateProc.jsp"
					method="post" class="board_update" enctype="multipart/form-data">
					<input type="hidden" name="nid" value="<%=vo.getNid()%>">
					<ul>
						<li><label>제 목</label> <input type="text" name="ntitle"
							value="<%= vo.getNtitle() %>"></li>
						<li><label>내 용</label> <textarea name="ncontent"><%=vo.getNcontent() %></textarea>
						</li>
						<li><label>파일첨부</label>
						<% if(vo.getNfile() != null){ %>
						 <input type="file" name="nfile"><span id="fname"><%=vo.getNfile() %></span>
						<% }else{ %>
						<input type="file" name="bfile"><span id="fname">선택된 파일 없음</span>
							<% } %>
						</li>
						<li>
							<button type="submit" class="btn_style">수정완료</button>
							<button type="reset" class="btn_style_2">취소</button> <a
							href="notice_content.jsp?nid=<%=nid%>"><button type="button"
									class="btn_style_2">이전페이지</button></a> <a href="notice_list.jsp"><button
									type="button" class="btn_style">목록으로</button></a>
						</li>
					</ul>
				</form>
			</div>
		</section>
	</div>

	<!-- footer -->
	s
	<jsp:include page="../../footer.jsp" />
</body>
</html>