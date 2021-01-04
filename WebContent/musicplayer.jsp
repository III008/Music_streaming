<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.music.dao.*, com.music.vo.*, java.util.*"%>
<!DOCTYPE html>
<html lang="en-US" dir="ltr" id="9lessons-demo">
<head>
<title>Music</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<link rel="stylesheet" type="text/css" href="css/normalize.css" />
<link rel="stylesheet" type="text/css" href="css/theme-2.css" />
<!-- JS FILE's  -->
<script src="js/jquery.js"></script>
<script src="js/jquery.audioControls.min.js"></script>
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
		
		$("#playlist").click(function(){
		    $("#playListContainer").toggle();
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
								<li
									data-src="https://s3.amazonaws.com/9lessonslabs/songs/Everything+But+Mine.mp3">
									<a href="#"> VVS (Feat. JUSTHIS) (Prod. GroovyRoom) </a>
								</li>
								<li
									data-src="https://s3.amazonaws.com/9lessonslabs/songs/Linkin+Park+-+Numb.mp3">
									<a href="#"> 밤하늘의 별을(2020) </a>
								</li>
								<li
									data-src="https://s3.amazonaws.com/9lessonslabs/songs/love-the-way-you-lie-rihanna-feat-eminem.mp3">
									<a href="#">  내일이 오면 (Feat. 기리보이, BIG Naughty (서동현)) </a>
								</li>
								<li
									data-src="http://localhost:9000/Music_streaming/upload/현아 (4minute)-04-어디부터 어디까지 (With 양요섭).mp3">
									<a href="#"> Dynamite </a>
								</li>
								<li
									data-src="https://s3.amazonaws.com/9lessonslabs/songs/when-i-was-your-man-bruno-mars.mp3">
									<a href="#"> 잠이 오질 않네요 </a>
								</li>
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
