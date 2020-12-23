<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	 import = "com.music.vo.*, com.music.dao.*, java.util.*"%>
	 <%
	 String vid = request.getParameter("vid");
	 String vartist = request.getParameter("vartist");
	 String rpage = request.getParameter("rpage");
	 MusicVideoDAO dao = new MusicVideoDAO();
	 MusicVideoVO vo = dao.getContent(vid);
	 dao.getUpdateHits(vid);
	 ArrayList<MusicVideoVO> samelist = dao.getSameContent(vartist,vid);
	 
	 int start = 0;
		int end = 0;
		int pageSize = 5; 
		int pageCount = 1; 
		int dbCount = dao.getHotListCount(vartist, vid);
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
				
				jQuery("#ampaginationsm").on('am.pagination.change',function(a){
					$(location).attr('href','http://localhost:9000/Music_streaming/movie/movie_content.jsp?rpage='+a.page);  
				});
			});
		</script>
</head>
<body>
	<!-- header -->
	<jsp:include page="../header.jsp" />


	<div class="movie_info">
		<section class="section1">
			<div>영상 정보</div>
			<div>
			<%= vo.getVcontent() %>
			</div>
			<div class="movie_detail">
				<div>
					<div><%=vo.getVtitle() %></div>
					
					<div>조회수 : <%=vo.getVhits() %></div>
				</div>
				<div><%=vo.getVdate() %></div>
				<div>
					<div>
						<img
							src="http://localhost:9000/Music_streaming/upload/<%=vo.getVsfile2() %>">
						<span><%=vo.getVartist() %></span>
					</div>
				</div>
				<div><%= vo.getVintro() %></div>
			</div>
			<div class="same_artist">같은 아티스트의 뮤직비디오</div>
			<div>
				<ul class="recommend_movie_list">
				<%for(MusicVideoVO vo2 : samelist){ %>
					<li><a href="movie_content.jsp?vid=<%=vo2.getVid()%>&vartist=<%=vo2.getVartist()%>">
					<img src="http://localhost:9000/Music_streaming/upload/<%= vo2.getVsfile1() %>"></a>
						<dl>
							<dt><%=vo2.getVartist() %></dt>
							<dt><%=vo2.getVtitle() %></dt>
						</dl></li>
						<%} %>
				</ul>
			<div  id="ampaginationsm"></div>
			</div>
		</section>

	</div>
	<!-- footer -->
	<jsp:include page="../footer.jsp" />
</body>
</html>