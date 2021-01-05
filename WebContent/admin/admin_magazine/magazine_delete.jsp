<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.music.vo.*"%>
<%	SessionVO svo = (SessionVO)session.getAttribute("svo");
	//svo 객체 != null ==>> 로그인 성공!!
	//svo 객체 == null ==>> 로그인 하지 않은 상태
	if(svo != null){
%>
<% 
	String mid = request.getParameter("mid");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board_delete</title>
<link rel="stylesheet"
	href="http://localhost:9000/Music_streaming/css/music_streaming.css">
</head>
<body>
	<!-- header -->
	<jsp:include page="../../manager_header.jsp"></jsp:include>

	<!-- content -->
	<div class="content_board">
		<section class="section_1">
			<div>
				<h1>매거진</h1>
				<form class="board_delete">
					<h3>정말로 삭제 하시겠습니까?</h3>
					<img src="http://localhost:9000/Music_streaming/images/delete.png">
					<div>
						<a href="magazineDeleteProc.jsp?mid=<%=mid%>"><button
								type="button" class="btn_style">삭제 완료</button></a> <a
							href="magazine_content.jsp?mid=<%=mid%>"><button
								type="button" class="btn_style_2">이전페이지</button></a> <a
							href="magazine_list.jsp"><button type="button"
								class="btn_style">목록으로</button></a>
					</div>
				</form>
			</div>
		</section>
	</div>

	<!-- footer -->
	<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>
<% }else{ %>
<script>
	alert("접근불가합니다.");
</script>
<% } %>