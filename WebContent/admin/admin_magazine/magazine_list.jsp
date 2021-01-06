<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.music.vo.*, com.music.dao.*, java.util.*"%>
<%
	SessionVO svo = (SessionVO)session.getAttribute("svo");

	//svo 객체 != null ==>> 로그인 성공!!
	//svo 객체 == null ==>> 로그인 하지 않은 상태
	if(svo != null){
%>
<%
	MusicMagazineDAO dao = new MusicMagazineDAO();
	String mid = request.getParameter("mid");
	
	String rpage = request.getParameter("rpage");
	
	int start = 0;
	int end = 0;
	int pageSize = 5; 
	int pageCount = 1; 
	int dbCount = dao.getListCount(); 
	int reqPage = 1; 
	
	if(dbCount % pageSize == 0){
		pageCount = dbCount/pageSize;		
	}else{
		pageCount = dbCount/pageSize +1;
	}
	
	if(rpage != null){
		reqPage = Integer.parseInt(rpage);
		start = (reqPage-1) * pageSize +1 ;
		end = reqPage*pageSize;	
	}else{
		start = reqPage;
		end = pageSize;
	}
	ArrayList<MusicMagazineVO> list = dao.getList(start, end);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://localhost:9000/Music_streaming/css/music_streaming.css">
	<link rel="stylesheet"
	href="http://localhost:9000/Music_streaming/css/am-pagination.css">
<script
	src="http://localhost:9000/Music_streaming/js/jquery-3.5.1.min.js"></script>
<script src="http://localhost:9000/Music_streaming/js/am-pagination.js"></script>

<script>
$(document).ready(function(){
	
	/** 전체선택 **/
	$("#all").change(function(){
		$("#all:checked").length == 0
		if($(this).is(":checked")){
			//선택 - 하위 checkbox 선택
			$("input[name='chk']").prop("checked",true);
		}else{
			//해제 - 하위 checkbox 해제
			$("input[name='chk']").prop("checked",false);
		}	
	});
	/**전체선택후 개별선택시 전체선택 체크해제**/
	$("input[name='chk']").click(function(){
		  $("#all").prop("checked", false);
		 });
	
	/** 삭제 버튼 클릭 : 클릭된 체크박스의 id 값을 리턴 **/
	$("#btnDelete").click(function(){
		  var del_list =""; 	//문자열로 받았을 경우
		 /* var del_list = [];	//배열 list로 받았을 경우  */
		 $("input[name='chk']:checked").each(function(i){
			del_list.push($(this).val());
		});
		 
			alert(del_list); 	//삭제 버튼 클릭시 공지사항 NID출력
		/* 	var objParams ={
					
			}; */
			
		//ajax를 이용하여 서버로 전송 후 삭제 진행
		$.ajax({
			/* alert("성공");   ajax까지는 넘어옴*/
			url:"magazineDeleteProc.jsp?del_list="+del_list,
			sucees:function(result){
				 if(result == 1) {     
					 alert("삭제 성공");
				/* location.href = "/shop/cartList"; */
		      } else {
		       		alert("삭제 실패");
		      }
			}
			
				
		})//ajax 
		
	});//btnDelete
	
	
	/*페이징 처리*/
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
			$(location).attr('href','http://localhost:9000/Music_streaming/admin/admin_magazine/magazine_list.jsp?rpage='+e.page);  

		});
		
	});//ready
</script>
</head>
<body class="ad_magazine_list">
	<!-- header -->
	<jsp:include page="../../manager_header.jsp"></jsp:include>
	<!-- content -->
	<div>
		<section class="section_1">
			<div>
				<h1>매거진 관리</h1>
				<table class="ad_notice">
					<!--태그 공지사항과 동일함 -->
					<tr>
						<td colspan="5"><a href="magazineDeleteProc.jsp?mid=<%=mid%>"><button
									type="button" class="btn_style">매거진 삭제</button></a> <a
							href="magazine_write.jsp">
								<button type="button" class="btn_style" id="insert">매거진
									작성</button>
						</a></td>
					</tr>
					<tr>
						<th><input type="checkbox" id="all" onchange="allCheck()">전체선택</th>
						<th>번호</th>
						<th>제목</th>
						<th>등록일</th>
						<th>조회수</th>
					</tr>
					<% for (MusicMagazineVO vo : list) { %>
					<tr>
						<td><input type="checkbox" name="chk" id="<%=mid%>"></td>
						<!-- 번호 바꿔야해ㅑ  -->
						<td><%= vo.getRno() %></td>
						<td><a href="magazine_content.jsp?mid=<%=vo.getMid()%>"><%= vo.getMtitle() %></a></td>
						<td><%= vo.getMdate() %></td>
						<td><%= vo.getMhits() %></td>
					</tr>
					<%} %>
					<tr>
						<td colspan="5"><div id="ampaginationsm"></div></td>
					</tr>
				</table>
			</div>
		</section>
	</div>

	<!-- footer -->
	<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>
<% }else{ %>
<script>
	alert("접근불가합니다.");
</script>
<% } %>