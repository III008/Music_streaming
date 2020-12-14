<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
	
	<style>
	/**
	로그인, 회원가입, 게시판, 공지사항 등 공통 스타일 정의
*/
	.btn_style {
		background-color:rgb(255,0,80);
		border:1px solid rgb(255,0,80);
		font-family:"나눔바른고딕";
		font-size:14px; font-weight:500;
		color:white; width:25%; height:35px;
	}
	.btn_style_2 {
		background-color:rgb(213,213,213);
		border:1px solid rgb(213,213,213);
		font-family:"나눔바른고딕";
		font-size:14px; font-weight:500;
		width:25%; height:35px;
	}

/**
	게시판 리스트, 공지사항 리스트
*/	
	table.ad_notice {
		border-top:1px solid black;
		border-bottom:1px solid black;
		border-collapse:collapse;
	}
	table.ad_notice td{
		border-top:1px solid rgb(213,213,213);
	}
	
	table.ad_notice th, table.ad_notice td {
		padding:12px 0; 
		color:black;
		font-size:17px;
	}
	table.ad_notice td>a{
		color:black;
	}
	table.ad_notice th{
		background-color:rgb(213,213,213);
	}
	
	table.ad_notice tr td:nth-child(1),table.ad_notice tr td:nth-child(2),
	table.ad_notice tr td:nth-child(4),table.ad_notice tr td:nth-child(5){
		text-align:center;
	}
	table.ad_notice tr td:nth-child(3) a {
		text-decoration:none;
	}
	table.ad_notice tr:first-child td  {
		text-align:right;
		padding:0 15px 10px 0;
		border:1px solid white;
		border-bottom:1px solid black;
	}
	table.ad_notice tr:first-child td a {
		font-size:13px;
		border-radius:2px;
		width:100px;	padding:5px 0;
		margin-top:10px;
	}
	table.ad_notice tr:last-child td {
		border:1px solid white;
		border-top:1px solid black;
		padding:15px 0 100px 0;
	}
	table.ad_notice tr:hover{
		background-color:rgb(231,231,231);
	}
	table.ad_notice tr td:nth-child(2):hover  {
		text-decoration:underline;
	}
	table.ad_notice tr:first-child:hover,
	table.ad_notice tr:last-child:hover, 
	table.ad_notice tr:last-child:hover {
		background-color:white;
		text-decoration:none;
	}
	table.ad_notice tr td:first-child,table.ad_notice tr td:last-child{
		width:140px;
	}
	table.ad_notice tr td:nth-child(3){
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
<body class="ad_notice_list">
	<!-- header -->
	<jsp:include page="../../manager_header.jsp"></jsp:include>
	<!-- content -->
	<div>
		<section class="section_1">
			<div>
				<h1>매거진 관리</h1>
				<table class="ad_notice">
					<tr>
						<td colspan="5">
							<button type="button" class="btn_style" id="delete" onclick="chk_delete()">매거진 삭제</button>
						<a href="magazine_write.jsp" >
								<button type="button" class="btn_style" id="insert">매거진 등록</button>
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
						<td><a href="magazine_content.jsp">매거진1</a>
						<td>2020.12.05</td>
						<td>70</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="02"></td>
						<td>2</td>
						<td><a href="#">매거진2</a>
						<td>2020.12.05</td>
						<td>70</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="03"></td>
						<td>3</td>
						<td><a href="#">매거진3</a>
						<td>2020.12.05</td>
						<td>70</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="04"></td>
						<td>4</td>
						<td><a href="#">매거진4</a>
						<td>2020.12.05</td>
						<td>70</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="05"></td>
						<td>5</td>
						<td><a href="#">매거진5</a>
						<td>2020.12.05</td>
						<td>70</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="06"></td>
						<td>6</td>
						<td><a href="#">매거진6</a>
						<td>2020.12.05</td>
						<td>70</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="07"></td>
						<td>7</td>
						<td><a href="#">매거진7</a>
						<td>2020.12.05</td>
						<td>70</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="08"></td>
						<td>8</td>
						<td><a href="#">매거진8</a>
						<td>2020.12.05</td>
						<td>70</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="09"></td>
						<td>9</td>
						<td><a href="#">매거진9</a>
						<td>2020.12.05</td>
						<td>70</td>
					</tr>
					<tr>
						<td><input type="checkbox" name="chk" id="10"></td>
						<td>10</td>
						<td><a href="#">매거진10</a>
						<td>2020.12.05</td>
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