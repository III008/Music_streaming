<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.music.vo.*, com.music.dao.*, java.util.*" %>
<%
	MusicMemberDAO dao = new MusicMemberDAO();

	//1. 선택한 페이지값
	String rpage = request.getParameter("rpage");
	
	//2-1. 페이지값에 따라서 start, end count 구하기
	//1페이지(1~10), 2페이지(11~20) ...
	int start = 0;
	int end = 0;
	int pageSize = 5; //한 페이지당 출력되는 row
	int pageCount = 1; //전체 페이지 수  : 전체 리스트 row /한 페이지당 출력되는 row
	int dbCount = dao.getListCount(); //DB연동 후 전체로우수 출력
	int reqPage = 1; //요청페이지
	
	//2-2. 전체페이지 수 구하기 - 화면출력
	if(dbCount % pageSize == 0){
		pageCount = dbCount/pageSize;		
	}else{
		pageCount = dbCount/pageSize +1;
	}
	
	//2-3. start, end 값 구하기
	if(rpage != null){
		reqPage = Integer.parseInt(rpage);
		start = (reqPage-1) * pageSize +1 ;
		end = reqPage*pageSize;	
	}else{
		start = reqPage;
		end = pageSize;
	}
	
	ArrayList<MusicMemberVO> list = dao.getList(start, end);
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" href = "http://localhost:9000/Music_streaming/css/music_streaming.css">
		<link rel="stylesheet" href = "http://localhost:9000/Music_streaming/css/am-pagination.css">
		<script src="http://localhost:9000/Music_streaming/js/jquery-3.5.1.min.js"></script>
		<script src="http://localhost:9000/Music_streaming/js/am-pagination.js"></script>
		<script>
			$(document).ready(function(){
				//페이지 번호 및 링크 		
				var pager = jQuery("#ampaginationsm").pagination({
					maxSize : 5,			
					totals:<%=dbCount%>,
					page : <%=reqPage%>,
					pageSize : <%=pageSize%>,
							
					lastText : '&raquo;&raquo;',
					firstText : '&laquo;&laquo',
					prevTest : '&laquo;',
					nextTest : '&raquo;',
					
					btnSize : 'sm' 			
				}); 
				
				jQuery("#ampaginationsm").on('am.pagination.change',function(e){
					$(location).attr('href','http://localhost:9000/Music_streaming/admin/admin_member/member_list.jsp?rpage='+e.page);  
					//location.href('이동페이지');
				});
			});
		</script>
		<script>
			$(document).ready(function(){
				/** body 로딩 후 맨 처음 전체 리스트 호출 기능 **/
				ajax_list("total", null);
				
				/** 검색 기능 **/
				$("#btnSearch").click(function(){
					if($("#sname").val() == "") {
						alert("검색할 데이터를 입력해주세요.");
						$("#sanme").focus();
						return false;
					}else {
						var sitem = $("#select_item").val();
						var sname = $("#sname").val();
						
						ajax_list(sitem, sname);
					}
				});//btnSearch
				
				
				/** 리스트 출력 함수 **/
				function ajax_list(sitem, sname){
					$.ajax({
						url:"11_emplist_check_search.jsp?sitem="+sitem+"&sname="+sname,
						success:function(){ 
							//JSON 형식으로 parsing
							var jdata = JSON.parse(result);
							
							//2-1. DHTML을 이용하여 테이블 생성 및 출력
							var output="<table border=1>";
							output += "<tr><th>번호</th><th>사원번호</th><th>사원명</th><th>입사일자</th></tr>"
							
							for(var i in jdata.jlist) {
								output += "<tr>";
								output += "<td>"+ jdata.jlist[i].rno + "</td>";
								output += "<td>"+ jdata.jlist[i].empno + "</td>";
								output += "<td>"+ jdata.jlist[i].ename + "</td>";
								output += "<td>"+ jdata.jlist[i].hiredate + "</td>";
								output += "</tr>";
							}
							output += "</table>";
							$("table").remove();
							$("#btnSearch").after(output);
						}//success
					});//ajax
				}//ajax_list
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
					<select id="select_item">
						<option value="total">전체</option>
						<option value="id">아이디</option>
						<option value="name">성명</option>
						<option value="nickname">닉네임</option>
						<option value="hp">휴대폰 번호 </option>
					</select>
					<input type="text" id="sname">
					<button type="button" id="btnSearch">검색</button>
					
					<table class="admin_member_list">
						<tr>
							<th>번호</th>
							<th>아이디</th>
							<th>성명</th>
							<th>닉네임</th>
							<th>휴대폰 번호</th>
							<th>가입 일자</th>
						</tr>
						<% for(MusicMemberVO vo : list){ %>
						<tr>
							<td><%= vo.getRno() %></td>
							<td><a href="member_content.jsp?id=<%= vo.getId() %>"><%= vo.getId() %></a></td>
							<td><%= vo.getName() %></td>
							<td><%= vo.getNickname() %></td>
							<td><%= vo.getCp() %></td>
							<td><%= vo.getMdate() %></td>						
						</tr>
						<% } %>
						<tr>
							<td colspan="6"><div id="ampaginationsm"></div></td>
						</tr>
					</table>
				</div>
			</section>		
		</div>
		
		<!-- footer -->
		<jsp:include page="../../footer.jsp" />
	</body>
</html>