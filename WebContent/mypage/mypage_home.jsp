<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.music.vo.*, com.music.dao.*, java.util.*"%>
<%
	//id 임의로
	String id = "test1234";
	MusicMemberDAO dao = new MusicMemberDAO();
	MusicMemberVO vo = dao.getInfo(id); 
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
</head>
<body class="mypage_home">
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
				      <a href="http://localhost:9000/Music_streaming/mypage/mypage_movielist.jsp?id=<%= id %>">뮤비</a>
				    </div>
				<li><a href="http://localhost:9000/Music_streaming/mypage/mypage_update.jsp?id=<%= id %>">내정보 수정</a></li>
			  	</li>
			</ul>
		</section>
		<section class="section2">
			<div>
				<% if(vo.getBsfile() != null){ %> 
					<img src="http://localhost:9000/Music_streaming/images/<%= vo.getBsfile() %>">
				<% }else { %>
					<img src="http://localhost:9000/Music_streaming/images/mypage_user.png">
				<% } %>
			</div>	
			<div>
				<table>
					<tr>
						<td><div class="vertical"></div></td>
						<td>좋아요 곡 수</td>
						<td><a href="http://localhost:9000/Music_streaming/mypage/mypage_musiclist.jsp?id=<%= id %>">10</a></td>
					</tr>
					<tr>
						<td><div class="vertical"></div></td>
						<td>좋아요 뮤비 수</td>
						<td><a href="http://localhost:9000/Music_streaming/mypage/mypage_movielist.jsp?id=<%= id %>">5</a></td>
					</tr>
				</table>
			</div>
			<div>
				<table>
					<tr>
						<td><div class="vertical"></div></td>
						<td>음악취향</td>
						<td><%= vo.getGenre_list() %></td>
					</tr>
				</table>
			</div>
		</section>
		<section class="section3">
			<div>
				<table>
					<tr>
						<td><div class="vertical"></div></td>
						<td>이름</td>
						<td><%= vo.getName() %></td>
					</tr>
					<tr>
						<td><div class="vertical"></div></td>
						<td>닉네임</td>
						<td><%= vo.getNickname() %></td>
					</tr>
					<tr>
						<td><div class="vertical"></div></td>
						<td>아이디</td>
						<td><%= vo.getId() %></td>
					</tr>
					<tr>
						<td><div class="vertical"></div></td>
						<td>이메일</td>
						<td><%= vo.getEmail() %></td>
					</tr>
					<tr>
						<td><div class="vertical"></div></td>
						<td>전화번호</td>
						<td><%= vo.getCp() %></td>
					</tr>
				</table>
			</div>
		</section>
	</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>