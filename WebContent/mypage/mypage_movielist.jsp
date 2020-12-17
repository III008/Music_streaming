<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String id = request.getParameter("id"); %>
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
	
	$("#btnPlay").click(function(){
		var del_list ="";
		
		$("input[name='chk']:checked").each(function(index){
			del_list += $(this).attr("id") + ",";
		});
		
		alert(del_list);
		//ajax를 이용하여 서버로 전송 후 삭제 진행
	});
	
	$("#btnCancle").click(function(){
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
<body>
<body class="mypage_movielist">
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
			<div class="section2_header"><label>뮤비 보관함</label></div>
				<table class="like">
					<tr>
						<td colspan="6">
							<button type="button" class="btn_style" id="btnPlay">재생</button>
							<button type="button" class="btn_style" id="btnCancle"> 좋아요 취소</button>
						</td>
					</tr>
					<tr>
						<th><input type="checkbox" id="all"></th>
						<th>no</th>
						<th></th>
						<th>곡명</th>
						<th>아티스트</th>
						<th>좋아요</th>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="01"></td>
						<td>1</td>
						<td><img src="http://localhost:9000/Music_streaming/images/entire_movie1.PNG"></td>
						<td>MAGO</td>
						<td>여자친구 (GFRIEND)</td>
						<td></td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="02"></td>
						<td>2</td>
						<td><img src="http://localhost:9000/Music_streaming/images/entire_movie2.PNG"></td>
						<td>DON'T TOUCH ME</td>
						<td>환불원정대</td>
						<td></td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="03"></td>
						<td>3</td>
						<td><img src="http://localhost:9000/Music_streaming/images/entire_movie3.PNG"></td>
						<td>AYA</td>
						<td>마마무(Mamamamoo)</td>
						<td></td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="04"></td>
						<td>4</td>
						<td><img src="http://localhost:9000/Music_streaming/images/entire_movie4.PNG"></td>
						<td>딩가딩가 (Dingga)</td>
						<td>마마무(Mamamamoo)</td>
						<td></td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="05"></td>
						<td>5</td>
						<td><img src="http://localhost:9000/Music_streaming/images/entire_movie5.PNG"></td>
						<td>I CAN’T STOP ME</td>
						<td>TWICE (트와이스)</td>
						<td></td>
						</tr>
				</table>
		</section>
	</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>