<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.music.vo.*, com.music.dao.*, java.util.*"%>
<%
	MusicMagazineDAO dao = new MusicMagazineDAO();
	/* ArrayList<MusicMagazineVO> list = dao.getList(); */
	ArrayList<MusicMagazineVO> list1 = dao.getList1(); 
	
	String rpage = request.getParameter("rpage");

	int start = 0;
	int end = 0;
	int pageSize = 9; 
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
					$(location).attr('href','http://localhost:9000/Music_streaming/magazine/magazine_list.jsp?rpage='+e.page);  
					//location.href('이동페이지');
				});
			});
		</script>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<!-- player -->
	<jsp:include page="../musicplayer.jsp" />
	
	<div class="content_menu">

		<div class="magazine_head">

			<h2>SIST MAGAZINE</h2>

			<section>
			<% for (MusicMagazineVO vo : list1) { %>
			<a href="magazine_content.jsp?mid=<%=vo.getMid()%>"><img src="http://localhost:9000/Music_streaming/upload/<%=vo.getMsfile()%>" class="head_img"></a>	
				<h2>
					<a href="magazine_content.jsp?mid=<%=vo.getMid()%>"><%=vo.getMtitle()%></a>
				</h2>
				<p>
					<a href="magazine_content.jsp?mid=<%=vo.getMid()%>"><%=vo.getMsummary()%></a>
				</p>
				<%} %>
			</section>
		</div>

		<section class="magazine_list">
			<ul>
				<%
					for (MusicMagazineVO vo : list) {
				%>
				<li class="list_item">
				<a href="magazine_content.jsp?mid=<%=vo.getMid()%>"><img src="http://localhost:9000/Music_streaming/upload/<%=vo.getMsfile()%>"></a>
					<div class="info">
						<a href="magazine_content.jsp?mid=<%=vo.getMid()%>"><%=vo.getMtitle()%></a>
					</div> <span><%=vo.getMdate()%></span></li>
				<%
					}
				%>
			</ul>
		</section>
		<div id="ampaginationsm" class="page_num"></div>
	</div>
	<jsp:include page="../footer.jsp" />
</body>
</html>