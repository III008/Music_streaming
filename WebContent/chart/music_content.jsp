<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.music.dao.*, com.music.vo.*, java.util.*"%>
<% 
	SessionVO svo = (SessionVO)session.getAttribute("svo");
	
	String id = "";
	//svo 객체 != null ===> 로그인 성공!!
	//svo 객체 == null ===> 로그인 하지 않은 상태
	if(svo != null){

		MusicMemberDAO dao = new MusicMemberDAO();
		id = dao.getId(svo.getName());
	}
%>


<% 
	String mid = request.getParameter("mid");
	MusicChartDAO dao = new MusicChartDAO();
	MusicChartVO vo = dao.getContent(mid);  
	
	ArrayList<MusicChartVO> commlist = dao.getComm_List(mid);
	ArrayList<MusicChartVO> list = dao.getSameArtist(vo.getArtist()); 
	
	MypageLikeDAO dao1 = new MypageLikeDAO();
	int likeResult = dao1.likeResult(mid,id);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
<script src="http://localhost:9000/Music_streaming/js/jquery-3.5.1.min.js"></script>
<script>
	$(document).ready(function(){
		//좋아요 반영 되어있을 때
		if(<%= likeResult %>){
			$("#btnLike").addClass('btn_like');
		}
		
		$("#btnLike").click(function(){
				
			  if($(this).hasClass('btn_like')){
				  //좋아요 취소
				  $(this).removeClass('btn_like');
				  
				  //ajax를 활용한 서버 연동
				  $.ajax({
					  url:"music_content_unlike.jsp?mid=<%= mid %>&id=<%= id %>",
					  success:function(result){
						  alert("좋아요 취소되었습니다");
						  location.reload();
						  }
					});
			  }else{
				  //좋아요를 눌렀을 때
				  $(this).addClass('btn_like');
				  
				  //ajax를 활용한 서버 연동
					$.ajax({
						url:"music_content_like.jsp?mid=<%= mid %>&id=<%= id %>",
						success:function(result){
							alert("좋아요 반영되었습니다");
							location.reload();
							$(this).addClass('btn_like');
						}
					});
			   }
			
			});
		
		$("#playMusic").click(function(){
			//ajax를 활용한 서버 연동
			  $.ajax({
				  url:"music_content_play.jsp?mid=<%= mid %>&id=<%= id %>",
				  success:function(result){
					  alert(result);
					  location.reload();
					  $("#playListContainer").audioControls({
							autoPlay : true
					  });
				  }
				});
		});
		
	});
	
</script>
</head>
<body class="music_content">
	<!-- header -->
	<jsp:include page="../header.jsp"/>
	
	<!-- player -->
	<jsp:include page="../musicplayer.jsp" />
	
	<!-- content -->
	<div class="content">
		
		<section class="section1">
			<div>
				<table class="music_content">
					<tr>
						<td rowspan="2" id="music_image"><img src="http://localhost:9000/Music_streaming/upload/<%= vo.getMusic_simage() %>"></td>
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
							<button type="button" class="btn_style" id="playMusic">재생</button>
							<button type="button" class="btn_unlike" id="btnLike">
  								<span class="img_emoti">좋아요</span>
							</button>
							<a id="mhits"><%= vo.getMhits() %></a>
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
			<div>
				<h3>같은 아티스트의 음악</h3>
			</div>
			<div>
				<table class="sameArtist">
					<% if(list.size() != 0) { %>
						<% for(int i=0; i<list.size(); i++){ %>
						<% if(list.get(i).getMid() != mid) { %>
						<tr id="list">
							<td><img id="music_image"
								src="http://localhost:9000/Music_streaming/upload/<%= list.get(i).getMusic_simage() %>"></td>
							<td><a href="../chart/music_content.jsp?mid=<%= list.get(i).getMid() %>"><%= list.get(i).getSong() %></a></td>
							<td><%= list.get(i).getArtist() %></td>
							<td><%= list.get(i).getLyricist() %></td>
							<td><%= list.get(i).getComposer() %></td>
						</tr>
						<% } %>
						<% } %>
					<% } %>
				</table>
			</div>
		</section>
		<section class="section3">
			<div>
				<h3>댓글</h3>
			</div>
			<form name="commentWriteForm" action="commentWriteProc.jsp" method="post" class="comment_write">
			<div>
				<input type="hidden" name="id" value="<%= id %>"> <!-- 예시 -->
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
					<% MusicMemberDAO dao_member = new MusicMemberDAO();
					String nickname = dao_member.getNickname(vo1.getId()); %>
					<table class="comment_list">
						<tr>
							<td colspan="2"><div id="nickname"><a><%= nickname %> (<%= vo1.getId() %>)</a></div></td>
						</tr>
						<tr>
				 			<td colspan="2"><div id="date"><label><%= vo1.getComm_date() %></label></div></td>
						</tr>
						<tr>
							<td colspan="2"><div id="comment_write"><label><%= vo1.getComment_write() %></label></div></td>
						</tr>
						<tr>
							<!-- <td><div id="reply"><a href="#">답글</a></div></td> -->
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