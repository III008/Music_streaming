<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- header -->
	<!-- include는 상대경로만 됨 -->
	<jsp:include page="header.jsp"></jsp:include>

	<!--content-->
	<div class ="content">
		<section class="section1">
			<div>
				<h1>캐러셀 추가</h1>
			</div>
		</section>
		<section class="section2">
				<div>
				<img src="http://localhost:9000/MyCGV/images/h3_movie_selection.gif">
			</div>
			<div>
				<iframe width="560" height="388" src="https://www.youtube.com/embed/6wf_L9-klsE" 
				frameborder="0" 
				allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
				allowfullscreen></iframe>
				<img src="http://localhost:9000/MyCGV/images/1109_240x388.jpg">
			</div>
		</section>
		<section class="section3">
			<div>
				<img src="http://localhost:9000/MyCGV/images/h3_event.gif">
			</div>
			<article>
				<img src="http://localhost:9000/MyCGV/images/15893602293300.jpg">
				<img src="http://localhost:9000/MyCGV/images/15832984008920.jpg">
				<img src="http://localhost:9000/MyCGV/images/15827922236270.jpg">
				<img src="http://localhost:9000/MyCGV/images/15856157808830.jpg">
			</article>
			<article>
				<img src="http://localhost:9000/MyCGV/images/main_moviecollage.jpg">
				<img src="http://localhost:9000/MyCGV/images/16039359082420.png">
				<img src="http://localhost:9000/MyCGV/images/200928_226x259.jpg">
			</article>
		</section>
	</div>

	
	<!--footer -->
	<jsp:include page="footer.jsp" />
</body>
</html>