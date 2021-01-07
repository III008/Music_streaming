<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.music.vo.*, com.music.dao.*, java.util.*"%>
<%
	MusicNoticeDAO dao = new MusicNoticeDAO();
/* 	ArrayList<MusicNoticeVO> list = dao.getList(); */
	
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

		ArrayList<MusicNoticeVO> list = dao.getList(start, end);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="http://localhost:9000/Music_streaming/css/music_streaming.css">
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
					$(location).attr('href','http://localhost:9000/Music_streaming/notice/notice_list.jsp?rpage='+e.page);  
					//location.href('이동페이지');
					
				});
			});
		</script>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp"></jsp:include>
	<!-- player -->
	<jsp:include page="../musicplayer.jsp" />

	<!-- content -->
	<div class="content_notice">
		<section class="section_1">
			<div>
				<h1>공지사항</h1>
				<table class="notice">
					<tr>
						<th>no</th>
						<th>제목</th>
						<th>등록일</th>
						<th>조회수</th>
					</tr>

					<% for(MusicNoticeVO vo : list){ %>
					<tr>
						<td><%=vo.getRno() %></td>
						<td><a href="notice_content.jsp?nid=<%=vo.getNid()%>"><%=vo.getNtitle() %></a></td>
						<td><%=vo.getNdate() %></td>
						<td><%=vo.getNhits() %></td>
					</tr>
						<% } %>
					<tr>
						<td colspan="4"><div id="ampaginationsm"></div></td>
					</tr>
				</table>
			</div>
		</section>
	</div>

	<!-- footer -->
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>