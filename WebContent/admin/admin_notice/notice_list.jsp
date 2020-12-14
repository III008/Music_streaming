<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
				del_list += chk_list[i].getAttribute("id")+",";
			}
		}
		alert(del_list);
	}
</script>
</head>
<body class="ad_notice_list">
	<!-- header -->
	<jsp:include page="../../manager_header.jsp"></jsp:include>
	<!-- content -->
	<div>
		<section class="section_1">
			<div>
				<h1>공지사항 관리</h1>
				<table class="ad_notice">
					<tr>
						<td colspan="5">
							<button type="button" class="btn_style" id="delete" onclick="chk_delete()">공지사항 삭제</button>
						<a href="notice_write.jsp" >
								<button type="button" class="btn_style" id="insert">공지사항 등록</button>
						</a>
					</td>
					</tr>
					<tr>
						<th><input type="checkbox" id="all" onchange="allCheck()">전체선택</th>
						<th>번호</th>
						<th>제목</th>
						<th>등록일</th>
						<th>조회수</th>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="01"></td>
						<td>1</td>
						<td><a href="notice_content.jsp">공지사항1</a>
						<td>2020.11.22</td>
						<td>70</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="02"></td>
						<td>2</td>
						<td><a href="#">공지사항2</a>
						<td>2020.11.22</td>
						<td>70</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="03"></td>
						<td>3</td>
						<td><a href="#">공지사항3</a>
						<td>2020.11.22</td>
						<td>70</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="04"></td>
						<td>4</td>
						<td><a href="#">공지사항4</a>
						<td>2020.11.22</td>
						<td>70</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="05"></td>
						<td>5</td>
						<td><a href="#">공지사항5</a>
						<td>2020.11.22</td>
						<td>70</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="06"></td>
						<td>6</td>
						<td><a href="#">공지사항6</a>
						<td>2020.11.22</td>
						<td>70</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="07"></td>
						<td>7</td>
						<td><a href="#">공지사항7</a>
						<td>2020.11.22</td>
						<td>70</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="08"></td>
						<td>8</td>
						<td><a href="#">공지사항8</a>
						<td>2020.11.22</td>
						<td>70</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="09"></td>
						<td>9</td>
						<td><a href="#">공지사항9</a>
						<td>2020.11.22</td>
						<td>70</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="10"></td>
						<td>10</td>
						<td><a href="#">공지사항10</a>
						<td>2020.11.22</td>
						<td>70</td>
					</tr>
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