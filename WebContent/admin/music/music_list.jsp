<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.music.vo.*, com.music.dao.*, java.util.*"%>
<%
	MusicChartDAO dao = new MusicChartDAO(); 
	ArrayList<MusicChartVO> list2 = dao.getList2(); 
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
<script src="http://localhost:9000/MyWeb/js/jquery-3.5.1.min.js"></script>
<script>
$(document).ready(function(){
	/** 전체선택 **/
	$("#all").change(function(){
		//$("all:checked").length == 0
		if($(this).is(":checked")){
			//선택 - 하위 checkbox 선택
			$("input[name='chk']").prop("checked",true);
		}else {
			//해제 - 하위 checkbox 해제
			$("input[name='chk']").prop("checked",false);
		}
	});
	
	
	$("#btnDelete").click(function(){
		var del_list ="";
		
		$("input[name='chk']:checked").each(function(index){
			del_list += $(this).attr("id") + ",";
		});
		
		alert(del_list);
		//ajax를 이용하여 서버로 전송 후 삭제 진행
	});
});//ready
</script>
</head>

<body class="music_list">
	<!-- header -->
	<jsp:include page="../../manager_header.jsp"></jsp:include>

	<!-- content -->
	<div class="content_notice">
		<section class="section_1">
			<div>
				<h1>음악 관리</h1>
				<div class="d1"></div>
				<table class="ad_notice">
					<tr>
						<td colspan="7">
						<a href="music_register.jsp"><button type="button" class="btn_style">등록</button></a>
						<button type="button" class="btn_style" id="btnDelete">삭제</button>
						</td>
					</tr>

					<tr>
						<th><input type="checkbox" id="all"></th>
						<th>번호</th>
						<th>앨범커버</th>
						<th>음악제목</th>
						<th>가수</th>
						<th>좋아요 수</th>
						<th>등록일</th>
					</tr>
					<% for(int i=0; i<list2.size(); i++){ %>
					<tr id="list">
						<td><input type="checkbox" name="chk" id="<%= (i+1) %>"></td>
						<td><%= list2.get(i).getRno() %></td>
						<td><img id="music_image"
							src="http://localhost:9000/Music_streaming/images/<%= list2.get(i).getMusic_simage() %>"></td>
						<td><a href="music_info.jsp?mid=<%= list2.get(i).getMid() %>"><%= list2.get(i).getSong() %></a></td>
						<td><%= list2.get(i).getArtist() %></td>
						<td><%= list2.get(i).getMhits() %></td>
						<td><%= list2.get(i).getMdate() %></td>
					</tr>
					<% } %>
					<tr>
						<td colspan="7"><< 1 2 3 4 5 6 7 8 9 10 >></td>
					</tr>
				</table>
			</div>
		</section>
	</div>

	<!-- footer -->
	<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>