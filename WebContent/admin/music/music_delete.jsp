 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	
<%  
	String mid = request.getParameter("mid");
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
		<jsp:include page="../../manager_header.jsp"></jsp:include>

	<!-- content -->
		<div class="content_board">
			<section class="section_1">
				<div>
					<h1>노래 삭제</h1>
					<form class="admin_music_delete">
						<h3>정말로 삭제 하시겠습니까?</h3>
						<img src="http://localhost:9000/Music_streaming/images/delete.png">
						<div>
							<a href="musicDeleteProc.jsp?mid=<%= mid %>"><button type="button" class="btn_style">삭제 완료</button></a>
							<a href="music_info.jsp?mid=<%= mid %>"><button type="button" class="btn_style_2">이전페이지</button></a>
							<a href="music_list.jsp"><button type="button" class="btn_style">목록으로</button></a>
						</div>
					</form>
				</div>
			</section>
 		</div>
	<!-- footer -->
		<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>