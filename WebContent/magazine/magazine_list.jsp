<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.music.vo.*, com.music.dao.*, java.util.*"%>
	<%
	String mid = request.getParameter("mid");
	MusicMagazineDAO dao = new MusicMagazineDAO();
	ArrayList<MusicMagazineVO> list = dao.getList();
	dao.getUpdateHits(mid);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://localhost:9000/Music_streaming/css/music_streaming.css">
<style>

</style>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<div class="content_menu">

		<div class="magazine_head">
		
			<h2>SIST MAGAZINE</h2>
	<!-- 		<a  href="#">기</a>
			<a  href="#">능</a>
			<a  href="#">미</a>
			<a  href="#">정</a> -->
			
				<section><a href="http://localhost:9000/Music_streaming/magazine/magazine_content.jsp">
					<img src="http://localhost:9000/Music_streaming/images/magazine_example.png" class="head_img"></a>
					
				<h2>	<a href="http://localhost:9000/Music_streaming/magazine/magazine_content.jsp">헤드 타이틀제목이 들어갈 자리</a></h2>
					<p><a href="http://localhost:9000/Music_streaming/magazine/magazine_content.jsp">
					아직 한 달 남짓한 시간이 남았지만, 2020년 역시 힙합의 해라고 해도 과언이 아니지 않을까?
					 신인을 비롯한 수많은 힙합 아티스트들이 빌보드 HOT 차트 상위권을 거쳐가며 인기를 끌었기 때문이다. 
					 그런데 최근 힙합을 잘 챙겨 듣지 않은 이들에게는 신인의 이름이 낯설 수도 있다.
					  올해가 가기 전 이름을 알아 두면 좋을 일곱 명의 래퍼를 확인해보자. - 힙합엘이</a></p>
				</section>
		</div>

		<section class="magazine_list">
			<ul>
			
			<% for(MusicMagazineVO vo : list){ %>
				<li class="list_item"><a href="http://localhost:9000/Music_streaming/magazine/magazine_content.jsp">
				 <img	src="http://localhost:9000/Music_streaming/images/magazine_example.png">
				</a>
					<div class="info">
						<a href="magazine_content.jsp?mid=<%=vo.getMid()%>"><%=vo.getMtitle() %></a>
					</div> <span><%=vo.getMdate() %></span></li>
					<% } %>
					
				
			</ul>
		</section>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>