<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.music.vo.*, com.music.dao.*, java.util.*"%>
<% 
	SessionVO svo = (SessionVO)session.getAttribute("svo");

	//svo 객체 != null ===> 로그인 성공!!
	//svo 객체 == null ===> 로그인 하지 않은 상태
	if(svo != null){
%>

<%
	MusicMemberDAO dao = new MusicMemberDAO();
	String id = dao.getId(svo.getName());
%>

<%
	MypageLikeDAO dao1 = new MypageLikeDAO();

	//1. 선택한 페이지값
	String rpage = request.getParameter("rpage");
				
	//2-1. 페이지값에 따라서 start, end count 구하기
	//1페이지(1~10), 2페이지(11~20) ...
	int start = 0;
	int end = 0;
	int pageSize = 5; //한 페이지당 출력되는 row
	int pageCount = 1; //전체 페이지 수 : 전체 row / 한 페이지당 출력되는 row
	int dbCount = dao1.getListCount(id); //DB연동 후 전체로우수 출력
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
	
	ArrayList<MypageLikeVO> list = dao1.getList(start, end, id);
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
		$(location).attr('href','http://localhost:9000/Music_streaming/mypage/mypage_musiclist.jsp?rpage='+e.page);  
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
	
	$("#btnPlay").click(function(){
		var play_list ="";
		var id = '<%= id %>';
		
		$("input[name='chk']:checked").each(function(index){
			play_list += $(this).attr("id") + ",";
		});
		
		alert(play_list);
		//ajax를 이용하여 서버로 전송 후 삭제 진행
		$.ajax({
			  url:"music_play_chk.jsp?rownum="+play_list+"&id="+id,
			  success:function(result){
				  alert("재생목록 추가완료");
				  location.reload();
			  }
			});
	});
	
	$("#btnCancle").click(function(){
		var del_list ="";
		
		$("input[name='chk']:checked").each(function(index){
			del_list += $(this).attr("id") + ",";
		});
		
		alert(del_list);
		//ajax를 이용하여 서버로 전송 후 삭제 진행
		$.ajax({
			  url:"music_likeCancle_chk.jsp?rownum="+del_list+"&id="+<%= id %>+"&start="+<%= String.valueOf(start) %>+"&end="+<%= String.valueOf(end) %>,
			  success:function(result){
				  alert("음악 좋아요 취소");
				  location.reload();
			  }
			});
	});
	
	$('button').click(function(){
		  if($(this).hasClass('btn_like')){
		    $(this).removeClass('btn_like');
		    $(this).addClass('btn_unlike');
		  }
		  else{
		    $(this).addClass('btn_like');
		  }
		});
	
});//ready
</script>
</head>
<body>
<body class="mypage_musiclist">
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
				      <%-- <a href="http://localhost:9000/Music_streaming/mypage/mypage_movielist.jsp?id=<%= id %>">뮤비</a> --%>
				    </div>
				<li><a href="http://localhost:9000/Music_streaming/mypage/mypage_update.jsp?id=<%= id %>">내정보 수정</a></li>
			  	</li>
			</ul>
		</section>
		<section class="section2">
			<div class="section2_header"><label>음악 보관함</label></div>
				<table class="like">
					<tr>
						<td colspan="5">
							<button type="button" class="btn_style" id="btnPlay">재생</button>
							<button type="button" class="btn_style" id="btnCancle">좋아요 취소</button>
						</td>
					</tr>
					<tr>
						<th><input type="checkbox" id="all"></th>
						<th>no</th>
						<th></th>
						<th>곡명</th>
						<th>아티스트</th>
						
					</tr>
					<% if(list.size() != 0) { %>
						<% for(int i=0; i<list.size(); i++){ %>
						<tr id="list">
							<% int row=(reqPage-1)*5+(i+1); %>
							<td><input type="checkbox" name="chk" id="<%= row %>"></td>
							<td><%= row %></td>
							<td><img id="music_image"
								src="http://localhost:9000/Music_streaming/upload/<%= list.get(i).getMusic_simage() %>"></td>
							<td><a href="../chart/music_content.jsp?mid=<%= list.get(i).getMid() %>"><%= list.get(i).getSong() %></a></td>
							<td><%= list.get(i).getArtist() %></td>
						</tr>
						<% } %>
					<% } %>
					<tr>
						<td colspan="5"><div id="ampaginationsm"></div></td>
					</tr>
				</table>
		</section>
	</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>
<% }else { %>
<script>
	alert("로그인을 진행하셔야 접근이 가능합니다.");
</script>
<% } %>