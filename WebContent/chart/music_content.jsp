<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<style>
	div.content {
		width:95%;
		display: inline-block;
		text-align:center;
		padding:50px 0;
	}
	div.content>section.section1, 
	div.content>section.section2, 
	div.content>section.section3,
	div.content>section.section4 {
		margin:auto;
		text-align: center;
	}
	div.sticky_bar.on {
		visibility:visible;
	}
	div.sticky_bar {
		width:106.5%;
		visibility:hidden;
		display:inline-block;
		position: -webkit-sticky;
  		position: sticky;
  		top: 0;
  		padding: 5px;
  		background-color: #cae8ca;
  		border: 2px solid #4CAF50;
	}
	div section.section1 table,
	div section.section1 table td,
	div section.section3 table,
	div section.section3 table td,
	div section.section4 table,
	div section.section4 table td {
		border-collapse:collapse;
	}
	div section.section1 table td,
	div section.section3 table td,
	div section.section4 table td {
		padding:10px 8px;
	}
	div section.section1 table {
		display:inline-block;
		width:65%;
		text-align:left;
		border-bottom:1px solid lightgray;
		padding-bottom:10px;
	}
	div section.section1 table td#music_image img {
		width:300px; height:300px;
	}
	div section.section1 table td#music_image {
		text-align:right;
	}
	div section.section1 table td#song_info>div,
	div section.section1 table td#bar {
		text-align:left;
		padding-bottom:5px;
	}
	div section.section1 table td#song_info>div#title {
		font-size:50px;
		font-weight:900;
		padding-bottom:50px;
	}
	div section.section1 table td#song_info>div#artist {
		font-size:25px;
		font-weight:700;
		padding-bottom:20px;
	}
	div section.section1 table td#song_info>div#compose {
		font-size:20px;
		color:gray;
		padding-bottom:10px;
	}
	div section.section2>div>h3 {
		/* display:inline-block; */
		display:inline-block;
		width:65%;
		text-align:left;
		font-size:23px;
		font-weight:800;
		padding:10px 0;
		/* margin:30px 0 30px -905px; */
	}
	div section.section3>div>h3 {
		display:inline-block;
		width:65%;
		text-align:left;
		font-size:23px;
		font-weight:800;
		padding-bottom:5px;
		/* margin:0 0 5px -1215px; */
	}
	div section.section2 div p.lyrics {
		display:inline-block;
		width:65%;
		text-align:left;
		/* height: 220px;
    	overflow: hidden; */
    	font-size: 20px;
	    line-height: 22px;
	    color: #999;
	    white-space: pre-wrap;
	}
	div section.section3 table,
	div section.section4 table {
		display:inline-block;
		width:65%;
		border-bottom:1px solid lightgray;
	}
	div section.section3 table td {
		width:100%;
		padding:10px 20px;
		text-align:center;
	}
	div section.section3 table td#comment textarea {
		border:2px solid black;
		border-radius:8px;
		padding:10px 10px;
		font-size:15px;
		width:100%; height:80px;
		resize:none;
	}
	div section.section4 table {
		text-align:left;
	}
	div section.section4 table td {
		width:100%;
	}
	div section.section4 table tr div#like {
		text-align:right;
	}
	div section.section4 table tr div#id a {
		font-size:20px;
		font-weight:900;
	}
	div section.section4 table tr div#date label,
	div section.section4 table tr div#reply a {
		font-size:15px;
		color:gray;
		text-decoration:none;
	}
	div section.section4 table tr div#comment_write label {
		font-size:18px;
	}
	body.music_content .btn_style {
		background-color:rgb(255,17,80);
		border:rgb(255,17,80);
		border-radius:4px;
		font-family:"맑은고딕";
		font-size:17px;
		font-weight:700;
		color:white;
		width:120px; height:50px;
		padding:8px 0;
	}
	body.music_content .btn_style2 {
		background-color:white;
		border:1px solid white;
		font-family:"맑은고딕";
		font-size:25px;
		font-weight:700;
		width:50px; height:50px;
		padding:0;
		cursor:pointer;
	}
	.btn_like {
	  	position: relative;
	 /*  margin: 100px auto; */
	 /*  display: block; */
	 	margin:2px 10px;
	  	width: 50px;
	  	height: 50px;
	  	border: 1px solid #e8e8e8;
	  	border-radius: 44px;
	  	font-family: notokr-bold,sans-serif;
	  	font-size: 14px;
	  	line-height: 16px;
	  	background-color: #fff;
	  	color: #DD5D54;
	  	box-shadow: 0 2px 2px 0 rgba(0,0,0,0.03);
	  	transition: border .2s ease-out,box-shadow .1s ease-out,background-color .4s ease-out;
	  	cursor: pointer;
	}

	.btn_like:hover {
	  border: 1px solid rgba(228,89,89,0.3);
	  background-color: rgba(228,89,89,0.02);
	  box-shadow: 0 2px 4px 0 rgba(228,89,89,0.2);
	}
	
	.btn_unlike .img_emoti {
	    background-position: -30px -120px;
	}
	
	.img_emoti {
	    display: inline-block;
	    overflow: hidden;
	    font-size: 0;
	    line-height: 0;
	    background: url(https://mk.kakaocdn.net/dn/emoticon/static/images/webstore/img_emoti.png?v=20180410) no-repeat;
	    text-indent: -9999px;
	    vertical-align: top;
	    width: 20px;
	    height: 17px;
	    margin-top: 1px;
	    background-position: 0px -120px;
	    text-indent: 0;
	}
	
	.btn_like .ani_heart_m {
	    margin: -63px 0 0 -63px;
	}
</style>
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
						<td rowspan="2" id="music_image"><img src="http://localhost:9000/Music_streaming/images/mchart1_top1.jpg"></td>
						<td id="song_info">
							<div id="title"><label>Dynamite</label></div>
							<div id="artist"><a>방탄소년단</a></div>
							<div id="compose"><label>작사 David Stewart, Jessica Agombar</label></div>
							<div id="compose"><label>작곡 David Stewart, Jessica Agombar</label>
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
		<div aria-hidden="true" class="sticky_bar on"></div>
		<section class="section2">
			<div>
				<h3>가사</h3>
			</div>
			<div>
				<p class="lyrics">Cos ah ah I’m in the stars tonight
So watch me bring the fire and set the night alight
 
Shoes on get up in the morn
Cup of milk let’s rock and roll
King Kong kick the drum rolling on like a rolling stone
Sing song when I’m walking home
Jump up to the top LeBron
Ding dong call me on my phone
Ice tea and a game of ping pong
 
This is getting heavy 
Can you hear the bass boom, I’m ready
Life is sweet as honey
Yeah this beat cha ching like money
Disco overload I’m into that I’m good to go 
I'm diamond you know I glow up
Hey, so let’s go
 
Cos ah ah I’m in the stars tonight
So watch me bring the fire and set the night alight
Shining through the city with a little funk and soul
So I’mma light it up like dynamite, woah
 
Bring a friend join the crowd
Whoever wanna come along 
Word up talk the talk just move like we off the wall
Day or night the sky’s alight
So we dance to the break of dawn
Ladies and gentlemen, I got the medicine so you should keep ya eyes on the ball, huh
 
This is getting heavy 
Can you hear the bass boom, I’m ready
Life is sweet as honey
Yeah this beat cha ching like money
Disco overload I’m into that I’m good to go 
I'm diamond you know I glow up
Let’s go
 
Cos ah ah I’m in the stars tonight
So watch me bring the fire and set the night alight
Shining through the city with a little funk and soul
So I’mma light it up like dynamite, woah
 
Dynnnnnanana, life is dynamite
Dynnnnnanana, life is dynamite
Shining through the city with a little funk and soul
So I’mma light it up like dynamite, woah
 
Dynnnnnanana eh
Dynnnnnanana eh
Dynnnnnanana eh
Light it up like dynamite
 
Dynnnnnanana eh
Dynnnnnanana eh
Dynnnnnanana eh
Light it up like dynamite
 
Cos ah ah I’m in the stars tonight
So watch me bring the fire and set the night alight
Shining through the city with a little funk and soul
So I’mma light it up like dynamite
 
Cos ah ah I’m in the stars tonight
So watch me bring the fire and set the night alight
Shining through the city with a little funk and soul
So I’mma light it up like dynamite, woah
 
Dynnnnnanana, life is dynamite
Dynnnnnanana, life is dynamite
Shining through the city with a little funk and soul
So I’mma light it up like dynamite, woah
 

				</p>
			</div>
		</section>
		<section class="section3">
			<div>
				<h3>댓글</h3>
			</div>
			<div>
				<table class="comment">
					<tr>
						<td colspan="4" id="comment"><textarea></textarea></td>
						<td id="write_button"><button type="button" class="btn_style">등록</button></td>
					</tr>
				</table>
			</div>
		</section>
		<section class="section4">
				<div>
					<table class="comment_list">
						<tr>
							<td colspan="2"><div id="id"><a>rose****(rose****)</a></div></td>
						</tr>
						<tr>
							<td colspan="2"><div id="date"><label>2020-11-08 21:39</label></div></td>
						</tr>
						<tr>
							<td colspan="2"><div id="comment_write"><label>너무 좋아요💜💜💜</label></div></td>
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
				</div>
				<div>
					<table class="comment_list">
						<tr>
							<td colspan="2"><div id="id"><a>아롱별(dbtk****))</a></div></td>
						</tr>
						<tr>
							<td colspan="2"><div id="date"><label>2020-11-07 12:29</label></div></td>
						</tr>
						<tr>
							<td colspan="2"><div id="comment_write"><label>와우</label></div></td>
						</tr>
						<tr>
							<td><div id="reply"><a href="#">답글</a></div></td>
							<td>
							<div id="like">
								<button type="button" class="btn_like">
  								<span class="img_emoti">좋아요</span>
								</button>
							</div>
							</td>
						</tr>
					</table>
				</div>
				<div>
					<table class="comment_list">
						<tr>
							<td colspan="2"><div id="id"><a>메롱소녀(hoog****)</a></div></td>
						</tr>
						<tr>
							<td colspan="2"><div id="date"><label>2020-11-03 23:38</label></div></td>
						</tr>
						<tr>
							<td colspan="2"><div id="comment_write"><label>너무좋다</label></div></td>
						</tr>
						<tr>
							<td><div id="reply"><a href="#">답글</a></div></td>
							<td>
							<div id="like">
								<button type="button" class="btn_like">
  								<span class="img_emoti">좋아요</span>
								</button>
							</div>
							</td>
						</tr>
					</table>
				</div>
				<div>
					<table class="comment_list">
						<tr>
							<td colspan="2"><div id="id"><a>더벤티진평점(oe52****)</a></div></td>
						</tr>
						<tr>
							<td colspan="2"><div id="date"><label>2020-10-25 15:18</label></div></td>
						</tr>
						<tr>
							<td colspan="2"><div id="comment_write"><label>와우</label></div></td>
						</tr>
						<tr>
							<td><div id="reply"><a href="#">답글</a></div></td>
							<td>
							<div id="like">
								<button type="button" class="btn_like">
  								<span class="img_emoti">좋아요</span>
								</button>
							</div>
							</td>
						</tr>
					</table>
				</div>
				<div>
					<table class="comment_list">
						<tr>
							<td colspan="2"><div id="id"><a>쉘부르(shel****)</a></div></td>
						</tr>
						<tr>
							<td colspan="2"><div id="date"><label>2020-10-15 16:56</label></div></td>
						</tr>
						<tr>
							<td colspan="2"><div id="comment_write"><label>너무 좋아요! 앞으로도 쭉쭉 일등하기를..</label></div></td>
						</tr>
						<tr>
							<td><div id="reply"><a href="#">답글</a></div></td>
							<td>
							<div id="like">
								<button type="button" class="btn_like">
  								<span class="img_emoti">좋아요</span>
								</button>
							</div>
							</td>
						</tr>
					</table>
				</div>
		</section>
	</div>
	
	<!-- footer -->
	<jsp:include page="../footer.jsp"/>
</body>
</html>