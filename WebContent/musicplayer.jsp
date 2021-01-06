<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.music.dao.*, com.music.vo.*, java.util.*"%>

<% 
	SessionVO svo = (SessionVO)session.getAttribute("svo");

	if(svo != null){
		MusicMemberDAO dao = new MusicMemberDAO();
		String id = dao.getId(svo.getName());
		
		MusicPlaylistDAO dao1 = new MusicPlaylistDAO();
		ArrayList<MusicPlaylistVO> list = dao1.getMusiclist(id);
%>

<!DOCTYPE html>
<html lang="en-US" dir="ltr" id="9lessons-demo">
<head>
<title>Music</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<link rel="stylesheet" type="text/css" href="http://localhost:9000/Music_streaming/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="http://localhost:9000/Music_streaming/css/theme-2.css" />
<!-- JS FILE's  -->
<!-- <script src="http://localhost:9000/Music_streaming/js/jquery.js"></script> -->
<script src="http://localhost:9000/Music_streaming/js/jquery.audioControls.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		
		$("#playListContainer").audioControls({
			autoPlay : false,
			timer : 'increment',
			onAudioChange : function(response) {
				$('.songPlay').text(response.title + ' ...');
			},
			onumeChange : function(vol) {
				var obj = $('.volume');
				if (vol <= 0) {
					obj.attr('class', 'volume mute');
				} else if (vol <= 33) {
					obj.attr('class', 'volume volume1');
				} else if (vol > 33 && vol <= 66) {
					obj.attr('class', 'volume volume2');
				} else if (vol > 66) {
					obj.attr('class', 'volume volume3');
				} else {
					obj.attr('class', 'volume volume1');
				}
			}
		});
		
		$("#playListContainer").hide();
		$("#playlist").click(function(){
		    $("#playListContainer").height(400);
		    $("#playListContainer").toggle(1000);
		});
	});
</script>

</head>
<body>
	<div class="mainContainer">
		<table style="width: 1000%">
			<tr>
				<td valign="top">
					<div class="containerPlayer">
						<div id="listContainer" class="playlistContainer">
							<ul id="playListContainer">
							<% if(list != null) { %>
							<% for(MusicPlaylistVO vo : list) { %>
								<li
									data-src="http://localhost:9000/Music_streaming/upload/<%= vo.getMusic_sfile() %>">
									<a href="#"><%= vo.getSong() %></a>
									<br><a href="#"><%= vo.getArtist() %></a>
								</li>
							<% } %>
							<% } %>
							</ul>
						</div>
						<div id="playerContainer">
							<div id="controlContainer">

								<ul class="controls">
									<li><a href="#" class="shuffle shuffleActive"
										data-attr="shuffled"></a></li>
									<li><a href="#" class="left" data-attr="prevAudio"></a></li>
									<li><a href="#" class="play" data-attr="playPauseAudio"></a>
									</li>
									<li><a href="#" class="right" data-attr="nextAudio"></a></li>
									<li><a href="#" class="repeat" data-attr="repeatSong"></a>
									<li><a href="#" id="playlist">재생목록</a>
									</li>
								</ul>
								<div class="audioDetails">
									<span class="songPlay"></span> <span data-attr="timer"
										class="audioTime"></span>
								</div>
								<div class="progress">
									<div data-attr="seekableTrack" class="seekableTrack"></div>
									<div class="updateProgress"></div>
								</div>

							</div>

							<div class="volumeControl">
								<div class="volume volume1"></div>
								<input class="bar" data-attr="rangeVolume" type="range" min="0"
									max="1" step="0.1" value="0.7" />
							</div>
						</div>
					</div>
				</td>
			</tr>
		</table>

	</div>
</body>
</html>
<% } %>