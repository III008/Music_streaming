<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<body class="mypage_musiclist">
	<!-- header -->
	<jsp:include page="../header.jsp"></jsp:include>
	
	<!-- content -->
	<div class="content">
		<section class="section1">
		<h1><div>마이페이지</div></h1>
			<ul class="nav">
			  	<li><a href="http://localhost:9000/Music_streaming/mypage/mypage_home.jsp">홈</a></li>
			  	<li class="dropdown">
			    <a href="javascript:void(0)" class="dropbtn">보관함</a>
				    <div class="dropdown-content">
				      <a href="http://localhost:9000/Music_streaming/mypage/mypage_musiclist.jsp">음악</a>
				      <a href="http://localhost:9000/Music_streaming/mypage/mypage_movielist.jsp">뮤비</a>
				    </div>
				<li><a href="http://localhost:9000/Music_streaming/mypage/mypage_update.jsp">내정보 수정</a></li>
			  	</li>
			</ul>
		</section>
		<section class="section2">
			<div class="section2_header"><label>음악 보관함</label></div>
				<table class="like">
					<tr>
						<td colspan="8">
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
						<th>앨범</th>
						<th>좋아요</th>
						<th>뮤비</th>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="01"></td>
						<td>1</td>
						<td><img src="http://localhost:9000/Music_streaming/images/mypage_like_1.jpg"></td>
						<td>Life Goes On</td>
						<td>방탄소년단</td>
						<td>BE</td>
						<td>
							<button type="button" class="btn_style2" id="unlike">🤍</button>
							<button type="button" class="btn_style2" id="like">💗</button>
						</td>
						<td><img src="http://localhost:9000/Music_streaming/images/mypage_movie.png"></td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="02"></td>
						<td>2</td>
						<td><img src="http://localhost:9000/Music_streaming/images/mypage_like_2.jpg"></td>
						<td>VVS (Feat. JUSTHIS) (Prod. GroovyRoom)</td>
						<td>미란이, 먼치맨, 쿤디판다(Khundi Panda), 머쉬베놈(MUSHVENOM)</td>
						<td>쇼미더머니 9 Episode 1</td>
						<td></td>
						<td><img src="http://localhost:9000/Music_streaming/images/mypage_movie.png"></td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="03"></td>
						<td>3</td>
						<td><img src="http://localhost:9000/Music_streaming/images/mypage_like_3.jpg"></td>
						<td><a href="http://localhost:9000/Music_streaming/chart/music_content.jsp">Dynamite</a></td>
						<td>방탄소년단</td>
						<td>Dynamite (DayTime Version)</td>
						<td></td>
						<td><img src="http://localhost:9000/Music_streaming/images/mypage_movie.png"></td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="04"></td>
						<td>4</td>
						<td><img src="http://localhost:9000/Music_streaming/images/mypage_like_4.jpg"></td>
						<td>잠이 오질 않네요</td>
						<td>장범준</td>
						<td>잠이 오질 않네요</td>
						<td></td>
						<td><img src="http://localhost:9000/Music_streaming/images/mypage_movie.png"></td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="05"></td>
						<td>5</td>
						<td><img src="http://localhost:9000/Music_streaming/images/mypage_like_5.jpg"></td>
						<td>Lovesick Girls</td>
						<td>BLACKPINK</td>
						<td>THE ALBUM</td>
						<td></td>
						<td><img src="http://localhost:9000/Music_streaming/images/mypage_movie.png"></td>
						</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="06"></td>
						<td>6</td>
						<td><img src="http://localhost:9000/Music_streaming/images/mypage_like_6.jpg"></td>
						<td>힘든 건 사랑이 아니다</td>
						<td>임창정</td>
						<td>힘든 건 사랑이 아니다</td>
						<td></td>
						<td><img src="http://localhost:9000/Music_streaming/images/mypage_movie.png"></td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="07"></td>
						<td>7</td>
						<td><img src="http://localhost:9000/Music_streaming/images/mypage_like_7.jpg"></td>
						<td>취기를 빌려 (취향저격 그녀 X 산들)</td>
						<td>산들</td>
						<td>취기를 빌려 (취향저격 그녀 X 산들)</td>
						<td></td>
						<td><img src="http://localhost:9000/Music_streaming/images/mypage_movie.png"></td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="08"></td>
						<td>8</td>
						<td><img src="http://localhost:9000/Music_streaming/images/mypage_like_8.jpg"></td>
						<td>밤하늘의 별을 (2020)</td>
						<td>경서</td>
						<td>밤하늘의 별을 (2020)</td>
						<td></td>
						<td><img src="http://localhost:9000/Music_streaming/images/mypage_movie.png"></td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="09"></td>
						<td>9</td>
						<td><img src="http://localhost:9000/Music_streaming/images/mypage_like_9.jpg"></td>
						<td>Freak (Prod. Slom)</td>
						<td>릴보이(lIlBOI), 원슈타인, Chillin Homie, 스카이민혁(Skyminhyuk)</td>
						<td>쇼미더머니 9 Episode 1</td>
						<td></td>
						<td><img src="http://localhost:9000/Music_streaming/images/mypage_movie.png"></td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="10"></td>
						<td>10</td>
						<td><img src="http://localhost:9000/Music_streaming/images/mypage_like_10.jpg"></td>
						<td>딩가딩가 (Dingga)</td>
						<td>마마무(Mamamoo)</td>
						<td>딩가딩가 (Dingga)</td>
						<td></td>
						<td><img src="http://localhost:9000/Music_streaming/images/mypage_movie.png"></td>
					</tr>
				</table>
		</section>
	</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>