<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music.css">
<style>
	div.magazine_content{
		margin:auto;
	}
	div.magazine_content>section{
	
		border:2px solid blue;
	}

	div.magazine_content>section>img{
		width:500px;
		height:500px;
		border:2px solid red;
		
	}

</style>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
<div class="magazine_content">
	<section>
		<img src="http://localhost:9000/Music_streaming/images/magazine_example2.jpg">
	
	
	</section>
</div>
<jsp:include page="../footer.jsp" />
</body>
</html>