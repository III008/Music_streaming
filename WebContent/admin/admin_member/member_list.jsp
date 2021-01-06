<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.music.vo.*, com.music.dao.*, java.util.*" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원관리 리스트</title>
		<link rel="stylesheet" href = "http://localhost:9000/Music_streaming/css/music_streaming.css">
		<link rel="stylesheet" href = "http://localhost:9000/Music_streaming/css/am-pagination.css">
		<script src="http://localhost:9000/Music_streaming/js/jquery-3.5.1.min.js"></script>
		<script src="http://localhost:9000/Music_streaming/js/am-pagination.js"></script>
		<script>
			$(document).ready(function(){
				/** 페이지 로딩 시 회원 전체 리스트 출력 **/
				member_list("total","");		
				
				/** Ajax를 활용한 회원전체 리스트 출력 **/
				function member_list(sname,svalue){
					$.ajax({
						url:"member_list_proc.jsp?sname="+sname+"&svalue="+svalue,
						success:function(result){
							//alert(result);
							var jdata = JSON.parse(result);
							
							//결과를 출력
							var output = '<table class="admin_member_list">';
							output += '<tr><th>번호</th>';
							output += '<th>아이디</th>';
							output += '<th>성명</th>';
							output += '<th>닉네임</th>';
							output += '<th>휴대폰번호</th>';
							output += '<th>가입일자</th></tr>';
							
							for(var i in jdata.jlist){ 
								output += '<tr>';
								output += '<td>'+ jdata.jlist[i].rno + '</td>';
								output += '<td><a href="member_content.jsp?id='+jdata.jlist[i].id+'">'+jdata.jlist[i].id+'</a></td>';
								output += '<td>'+jdata.jlist[i].name+'</td>';
								output += '<td>'+jdata.jlist[i].nickname+'</td>';
								output += '<td>'+jdata.jlist[i].cp+'</td>';
								output += '<td>'+jdata.jlist[i].mdate+'</td>';
								output += '</tr>'
							} 
							
							output += '<tr><td colspan="6"><div id="ampaginationsm"></div></td>';
							output += '</tr></table>';
							
							$("table").remove();
							$(".search").after(output);
							
							page(jdata.dbcount, jdata.reqpage, jdata.pagesize);  //페이지 출력
						}//success
					});//ajax
				}//member_list
				
				
				/** 검색 버튼 이벤트 처리 **/
				$("#btnSearch").click(function(){
					if($("#sname").val() !="total" && $("#svalue").val() == ""){
						alert("검색할 데이터를 입력해 주세요");
						$("#svalue").focus();
						return false;
					}else{
						var sname = $("#sname").val();
						var svalue = $("#svalue").val();
						
						member_list(sname, svalue);
					}
				});
				
				
				/** 페이징 처리 함수 **/
				function page(dbcount, reqpage, pagesize){
					var pager = jQuery("#ampaginationsm").pagination({
						maxSize : 5,			
						totals : dbcount,
						page : reqpage,
						pageSize : pagesize,
						
						lastText : '&raquo;&raquo;',
						firstText : '&laquo;&laquo',
						prevTest : '&laquo;',
						nextTest : '&raquo;',
						
						btnSize : 'sm' 			
					}); 
				
					jQuery("#ampaginationsm").on('am.pagination.change',function(e){
						$(location).attr('href','http://localhost:9000/Music_streaming/admin/admin_member/member_list.jsp?rpage='+e.page);  
					});
				}//page
			});//ready
		</script>
	</head>
	<body>
		<!-- header -->
		<jsp:include page="../../manager_header.jsp" />
		
		<!-- content -->
		<div class="content_admin_member">
			<section class="section_1">
				<div>
					<h1>회원 관리</h1>
					<div class="search">
						<select id="sname">
							<option value="total">전체</option>
							<option value="id">아이디</option>
							<option value="name">성명</option>
							<option value="cp">핸드폰번호</option>
							<option value="nickname">닉네임</option>
						</select>
						<input type="text" id="svalue">
						<button type="button" id="btnSearch">검색</button>
					</div>
				</div>
			</section>		
		</div>
		
		<!-- footer -->
		<jsp:include page="../../footer.jsp" />
	</body>
</html>

