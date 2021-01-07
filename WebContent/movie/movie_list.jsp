<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import = "com.music.dao.*,com.music.vo.*, java.util.*"%>
	
	<%
	String vid = request.getParameter("vid");
	MusicVideoDAO dao = new MusicVideoDAO();
	ArrayList<MusicVideoVO> list2 = dao.getHotList();
	dao.getUpdateHits(vid);
	
	String rpage = request.getParameter("rpage");
	
	int start = 0;
	int end = 0;
	int pageSize = 20; 
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
	
	ArrayList<MusicVideoVO> list = dao.getList(start, end);
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
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
					$(location).attr('href','http://localhost:9000/Music_streaming/movie/movie_list.jsp?rpage='+e.page);  
					//location.href('이동페이지');
				});
			});
		</script>

</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp" />
	<!-- player -->
	<jsp:include page="../musicplayer.jsp" />

	<div class="movie_list">
		<section class="section1">
			<div>
				<div>뮤직비디오</div>
			</div>
			<hr>
			<div class="hot_movie">
				<div>인기 뮤비</div>
				<ul class="hot_movie_list">
				<% for (MusicVideoVO vo: list2){  %>
					<li><a href="movie_content.jsp?vid=<%= vo.getVid() %>&vartist=<%=vo.getVartist()%>"><img src="http://localhost:9000/Music_streaming/upload/<%= vo.getVsfile1() %>"></a>
						<dl>
							<dt><%= vo.getVtitle() %></dt>
							<dt><%=vo.getVartist() %></dt>
						</dl></li>
						<%} %>
				</ul>
			</div>
		</section>

		<section class="section2">
			<div class="entire_movie">
				<div>전체 영상</div>
				<ul class="entire_movie_list">
					<div class = "A">
					<%for (MusicVideoVO vo :list){ %>
					<li><a href="movie_content.jsp?vid=<%=vo.getVid()  %>&vartist=<%=vo.getVartist()%>"><img src="http://localhost:9000/Music_streaming/upload/<%= vo.getVsfile1() %>"></a>
						<dl>
							<dt><%=vo.getVtitle() %></dt>
							<dt><%=vo.getVartist() %></dt>
							<dt>조회<%= vo.getVhits() %></dt>
						</dl>
					</li>
						<%} %>
						</div>
						<div class = "B">
						</div>
				</ul>
				<div  id="ampaginationsm"></div>
			</div>
		</section>
	</div>

	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>