<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.music.vo.*, com.music.dao.*, java.util.*"%>
<%
	MusicChartDAO dao = new MusicChartDAO(); 
	/* ArrayList<MusicChartVO> list2 = dao.getList2();  */
	
	//1. 선택한 페이지값
	String rpage = request.getParameter("rpage");
				
	//2-1. 페이지값에 따라서 start, end count 구하기
	//1페이지(1~10), 2페이지(11~20) ...
	int start = 0;
	int end = 0;
	int pageSize = 5; //한 페이지당 출력되는 row
	int pageCount = 1; //전체 페이지 수 : 전체 row / 한 페이지당 출력되는 row
	int dbCount = dao.getListCount(); //DB연동 후 전체로우수 출력
	int reqPage = 1; //요청페이지
				
	//2-2. 전체페이지 수 구하기
	if(dbCount % pageSize == 0) {
		pageCount = dbCount/pageSize;
	}else {
		pageCount = dbCount/pageSize + 1;
	}
				
	//2-3. start, end 값 구하기
	if(rpage != null) {
		reqPage = Integer.parseInt(rpage);
		start = (reqPage-1) * pageSize+1;
		end = reqPage*pageSize;
	}else {
		start = reqPage;
		end = pageSize;
	}
			
	ArrayList<MusicChartVO> list2 = dao.getList2(start, end); 
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/am-pagination.css"></link>
<script src="http://localhost:9000/Music_streaming/js/jquery-3.5.1.min.js"></script>
<script src="http://localhost:9000/Music_streaming/js/am-pagination.js"></script> <!-- 제이쿼리 라이브러리 -->
<script>
$(document).ready(function(){
	
	//페이지 번호 및 링크
	var pager = jQuery("#ampaginationsm").pagination({
		maxSize : 5,
		totals : <%= dbCount %>,
		page : <%= reqPage %>,
		pageSize : <%= pageSize %>,
		
		lastText : '&raquo;&raquo', /* 공백주기 */
		firstText : '&laquo;&laquo',
		prevText : '&laquo',
		nextText : '&raquo',
		
		btnSize : 'sm'
	});
	
	//
	jQuery("#ampaginationsm").on('am.pagination.change',function(e){
		$(location).attr('href','http://localhost:9000/Music_streaming/admin/music/music_list.jsp?rpage='+e.page);  
		//location.href('이동페이지');
	});
	
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
						<% int row = (Integer.parseInt(rpage)-1)*5 + (i+1); %>
						<td><input type="checkbox" name="chk" id="<%= row %>"></td>
						<td><%= list2.get(i).getRno() %></td>
						<td><img id="music_image"
							src="http://localhost:9000/Music_streaming/upload/<%= list2.get(i).getMusic_simage() %>"></td>
						<td><a href="music_info.jsp?mid=<%= list2.get(i).getMid() %>"><%= list2.get(i).getSong() %></a></td>
						<td><%= list2.get(i).getArtist() %></td>
						<td><%= list2.get(i).getMhits() %></td>
						<td><%= list2.get(i).getMdate() %></td>
					</tr>
					<% } %>
					<tr>
						<td colspan="7"><div id="ampaginationsm"></div></td>
					</tr>
				</table>
			</div>
		</section>
	</div>

	<!-- footer -->
	<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>