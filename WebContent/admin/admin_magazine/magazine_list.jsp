<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.music.vo.*, com.music.dao.*, java.util.ArrayList"%>
<%
	SessionVO svo = (SessionVO)session.getAttribute("svo");

	//svo 객체 != null ==>> 로그인 성공!!
	//svo 객체 == null ==>> 로그인 하지 않은 상태
	if(svo != null){
%>
<%
	MusicMagazineDAO dao = new MusicMagazineDAO();
	ArrayList<MusicMagazineVO> list = dao.getList();
	String mid = request.getParameter("mid");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://localhost:9000/Music_streaming/css/music_streaming.css">

<script>
	function allCheck(){
		var all =document.getElementById("all");
		var chk_list = document.getElementsByName("chk");

		if(all.checked){
			for(var i=0; i<chk_list.length; i++){
				chk_list[i].checked = true;
			}
		}else{
			for(var i=0; i<chk_list.length; i++){
				chk_list[i].checked = false;
			}
		}
	}
	
	function chk_delete(){
		var chk_list = document.getElementsByName("chk");
		var del_list="";
		
		for(var i in chk_list){
			if(chk_list[i].checked){
				del_list += chk_list[i].getAttribute(<%=mid%>)+",";
			}
		}
		alert(del_list);
	}
</script>
</head>
<body class="ad_magazine_list">
	<!-- header -->
	<jsp:include page="../../manager_header.jsp"></jsp:include>
	<!-- content -->
	<div>
		<section class="section_1">
			<div>
				<h1>매거진 관리</h1>
				<table class="ad_notice">
					<!--태그 공지사항과 동일함 -->
					<tr>
						<td colspan="5"><a href="magazineDeleteProc.jsp?mid=<%=mid%>"><button
									type="button" class="btn_style">매거진 삭제</button></a> <a
							href="magazine_write.jsp">
								<button type="button" class="btn_style" id="insert">매거진
									작성</button>
						</a></td>
					</tr>
					<tr>
						<th><input type="checkbox" id="all" onchange="allCheck()">전체선택</th>
						<th>번호</th>
						<th>제목</th>
						<th>등록일</th>
						<th>조회수</th>
					</tr>

					<% for (MusicMagazineVO vo : list) { %>
					<tr>
						<td><input type="checkbox" name="chk" id="<%=mid%>"></td>
						<!-- 번호 바꿔야해ㅑ  -->
						<td><%= vo.getRno() %></td>
						<td><a href="magazine_content.jsp?mid=<%=vo.getMid()%>"><%= vo.getMtitle() %></a></td>
						<td><%= vo.getMdate() %></td>
						<td><%= vo.getMhits() %></td>
					</tr>
					<%} %>

					<tr>
						<td colspan="5"><< 1 2 3 4 5 6 7 8 9 10 >></td>
					</tr>
				</table>
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