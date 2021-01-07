<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String id = request.getParameter("id");
%> 
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원정보</title>
		<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
		<script src="http://localhost:9000/Music_streaming/js/jquery-3.5.1.min.js"></script>
	</head>
	<body class="mypage_update">
		<!-- header -->
		<jsp:include page="../header.jsp"></jsp:include>
		
		<!-- content -->
		<div class="content">
		<section class="section1">
		<h1><div>마이페이지</div></h1>
			<ul class="nav">
			  	<li><a href="http://localhost:9000/Music_streaming/mypage/mypage_home.jsp?id=<%= id %>">홈</a></li>
			  	<li class="dropdown">
			    <a href="javascript:void(0)" class="dropbtn">보관함</a>
				    <div class="dropdown-content">
				      <a href="http://localhost:9000/Music_streaming/mypage/mypage_musiclist.jsp?id=<%= id %>">음악</a>
				    </div>
				<li><a href="http://localhost:9000/Music_streaming/mypage/mypage_update.jsp?id=<%= id %>">내정보 수정</a></li>
			</ul>
		</section>
		
			<div class="content_board">
				<section class="section_1">
					<div>
						<form class="mypage_delete">
							<h3>정말로 삭제 하시겠습니까?</h3>
							<img src="http://localhost:9000/Music_streaming/images/delete.png">
							<div>
								<a href="mypage_deleteProc.jsp?id=<%=id%>"><button type="button" class="btn_style">삭제 완료</button></a>
								<a href="mypage_update.jsp?id=<%=id%>"><button type="button" class="btn_style_2">이전페이지</button></a>
							</div>
						</form>
					</div>
				</section>
	 		</div>
 		</div>
		
		<!-- footer -->
		<jsp:include page="../footer.jsp"></jsp:include>
	</body>
</html>