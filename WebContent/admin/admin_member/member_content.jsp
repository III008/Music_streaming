<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.music.vo.*, com.music.dao.*, java.util.*" %>
<%
	String id = request.getParameter("id");
	MusicMemberDAO dao = new MusicMemberDAO();
	MusicMemberVO vo = dao.getContent(id);

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
		<jsp:include page="../../manager_header.jsp" />
		
		<!-- content -->
		<div class="content_admin_member">
			<section class="section_1">
				<div>
					<h1>회원 관리</h1>				
					<table class="admin_member_content">
						<tr>
							<th>아이디</th>
							<td><%= vo.getId() %></td>
							<th>성명</th>
							<td><%= vo.getName() %></td>
							<th>닉네임</th>
							<td><%= vo.getNickname() %></td>
						</tr>
						<tr>
							<td colspan="2", rowspan="3">
								<% if(vo.getBsfile() != null) { %>
									<img src="http://localhost:9000/Music_streaming/upload/<%=vo.getBsfile()%>" width=90%>
								<% }else { %>
									<img src="http://localhost:9000/Music_streaming/images/mypage_user.png" width=90%>
								<% } %>
							</td>
							<th>휴대폰 번호</th>
							<td><%= vo.getCp() %></td>
							<th>가입 일자</th>
							<td><%= vo.getMdate() %></td>
						</tr>
						<tr>
							<th>E-mail</th>
							<td colspan="3"><%= vo.getEmail() %></td>
						</tr>
						<tr>
							<th>음악 취향</th>
							<td colspan="3"><%= vo.getGenre_list() %></td>
						</tr>
						<tr>
							<td colspan="6">
								<a href="member_list.jsp"><button type="button" class="btn_style">목록으로</button></a>
							</td>
						</tr>
					</table>
				</div>
			</section>		
		</div>
		
		<!-- footer -->
		<jsp:include page="../../footer.jsp" />
	</body>
</html>