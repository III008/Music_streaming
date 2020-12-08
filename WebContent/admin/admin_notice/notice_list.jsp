<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<!-- <link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css"> -->
	
	<style>
	table.board, table.notice, table.ad_notice{
		border-top:1px solid black;
		border-bottom:1px solid black;
		border-collapse:collapse;
	}
	table.board td, table.notice td,table.ad_notice td {
		border-top:1px solid rgb(213,213,213);
	}
	div.content_notice h1 {
		margin-bottom:55px;
	}
	table.board th, table.board td,
	table.notice th, table.notice td,
	table.ad_notice th,table.ad_notice td {
		padding:12px 0; 
		color:black;
		font-size:17px;
	}
	table.board td>a, table.notice td>a, table.ad_notice td>a {
		color:black;
	}
	table.board th, table.notice th,table.ad_notice th {
		background-color:rgb(213,213,213);
	}
	table.board tr td:nth-child(1), table.board tr td:nth-child(3),
	table.board tr td:nth-child(4),	table.notice tr td:nth-child(1),
	table.notice tr td:nth-child(3), table.notice tr td:nth-child(4),
	table.ad_notice tr td:nth-child(1),table.ad_notice tr td:nth-child(2),
	table.ad_notice tr td:nth-child(4),table.ad_notice tr td:nth-child(5) {
		text-align:center;
	}
	table.board tr td:nth-child(2) a,
	table.notice tr td:nth-child(2) a,
	table.ad_notice tr td:nth-child(3) a {
		text-decoration:none;
	}
	table.board tr:first-child td
	table.ad_notice tr:first-child td {
		text-align:right;
		padding:0 15px 10px 0;
		border:1px solid white;
		border-bottom:1px solid black;
	}
	table.board tr:first-child td a>button,
	table.ad_notice tr :first-child td a>button {
		font-size:13px;
		border-radius:2px;
		width:100px;	padding:5px 0;
		margin-top:10px;
	}
	table.board tr:last-child td,
	table.notice tr:last-child td,
	table.ad_notice tr td:last-child td {
		border:1px solid white;
		border-top:1px solid black;
		padding:15px 0 100px 0;
	}
	table.board tr:hover, table.notice tr:hover,
	table.ad_notice tr:hober {
		background-color:rgb(231,231,231);
	}
	table.board tr td:nth-child(2):hover,
	table.notice tr td:nth-child(2):hover,
	table.ad_notice tr td:nth-child(3):hober  {
		text-decoration:underline;
	}
	table.board tr:first-child:hover,
	table.board tr:last-child:hover, 
	table.notice tr:last-child:hover {
		background-color:white;
		text-decoration:none;
	}
	table.board tr td:first-child, table.board tr td:last-child,
	table.notice tr td:first-child, table.notice tr td:last-child,
	table.ad_notice tr td:first-child,table.ad_notice tr td:last-child {
		width:140px;
	}
	table.board tr td:nth-child(3), table.notice tr td:nth-child(3),
	table.ad_notice tr td:nth-child(4) {
		width:200px;
	}
	
	</style>
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
	<body>
		<!-- header -->
		<jsp:include page="../../manager_header.jsp"></jsp:include>
		
		<!-- content -->
		<div class="content_board">
			<section class="section_1">
				<div>
					<h1>공지사항 관리</h1>
					<table class="ad_notice">
						<tr>
							<td colspan="5">
								<input type="checkbox" id="all" onchange="allCheck()">전체선택
								<a href="notice_write.jsp" id="test">
									<button type="button" class="btn_style" >공지사항 등록</button>
								</a>
									<button type="button" class="btn_style" onclick="chk_delete()">공지사항 삭제</button>
							</td>
						</tr>
						<tr>
						<th>선택</th>
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
							<td colspan="5"> << 1 2 3 4 5 6 7 8 9 10 >> </td>
						</tr>
					</table>
				</div>
			</section>
		</div>
		
		<!-- footer -->
		<jsp:include page="../../footer.jsp"></jsp:include>
	</body>
</html>