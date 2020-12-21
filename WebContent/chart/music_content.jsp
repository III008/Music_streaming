<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.music.dao.*, com.music.vo.*, java.util.*"%>
<% 
	String mid = request.getParameter("mid");
	MusicChartDAO dao = new MusicChartDAO();
	MusicChartVO vo = dao.getContent(mid);  
	ArrayList<MusicChartVO> commlist = dao.getComm_List(mid);  
	/* dao.getUpdateHits(mid);  */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
<script src="http://localhost:9000/MyWeb/js/jquery-3.5.1.min.js"></script>
<script>
	$(document).ready(function(){
		
		$('button').click(function(){
			  if($(this).hasClass('btn_unlike')){
			    $(this).removeClass('btn_unlike');
			  }
			  else{
			    $(this).addClass('btn_unlike');
			  }
			});
	});
</script>
</head>
<body class="music_content">
	<!-- header -->
	<jsp:include page="../header.jsp"/>
	
	<!-- content -->
	<div class="content">
		
		<section class="section1">
			<div>
				<table class="music_content">
					<tr>
						<td rowspan="2" id="music_image"><img src="http://localhost:9000/Music_streaming/images/<%= vo.getMusic_image() %>"></td>
						<td id="song_info">
							<div id="song"><label><%= vo.getSong() %></label></div>
							<div id="artist"><a><%= vo.getArtist() %></a></div>
							<div id="lyricist"><label>작사 <%= vo.getLyricist() %></label></div>
							<div id="composer"><label>작곡 <%= vo.getComposer() %></label>
							</div>
						</td>
					</tr>
					<tr>
						<td id="bar">
							<button type="button" class="btn_style">재생</button>
							<button type="button" class="btn_style">MP3 구매</button>
							<button type="button" class="btn_like">
  								<span class="img_emoti">좋아요</span>
							</button>
							<button type="button" class="btn_style2">···</button>
						</td>
					</tr>
				</table>
			</div>
		</section>
		<!-- <div aria-hidden="true" class="sticky_bar on"></div> -->
		<section class="section2">
			<div>
				<h3>가사</h3>
			</div>
			<div>
				<p class="lyrics"><%= vo.getLyrics() %>
				
				</p>
			</div>
		</section>
		<section class="section3">
			<div>
				<h3>댓글</h3>
			</div>
			<form name="commentWriteForm" action="commentWriteProc.jsp" method="post" class="comment_write">
			<div>
				<input type="hidden" name="id" value="<%= "test1234" %>"> <!-- 예시 -->
				<input type="hidden" name="mid" value="<%= vo.getMid() %>">
				<table class="comment">
					<tr>
						<td colspan="4" id="comment"><textarea name="comment_write"></textarea></td>
						<td id="write_button"><button type="submit" class="btn_style">등록</button></td>
					</tr>
				</table>
			</div>
			</form>
		</section>
		<section class="section4">
				<div>
					<% for(MusicChartVO vo1 : commlist) {%>
					<table class="comment_list">
						<tr>
							<td colspan="2"><div id="id"><a><%= vo1.getId() %></a></div></td>
						</tr>
						<tr>
				 			<td colspan="2"><div id="date"><label><%= vo1.getComm_date() %></label></div></td>
						</tr>
						<tr>
							<td colspan="2"><div id="comment_write"><label><%= vo1.getComment_write() %></label></div></td>
						</tr>
						<tr>
							<td><div id="reply"><a href="#">답글</a></div></td>
							<td>
							<div id="like">
								<button type="button" class="btn_like">
  								<span class="img_emoti">좋아요</span>
								</button>
							</div>
						</tr>
					</table>
					<% } %>
				</div>
				
		</section>
	</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp"/>
</body>
</html>