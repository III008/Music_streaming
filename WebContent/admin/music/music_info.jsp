<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
</head>
<body>
	<!-- header -->
	<jsp:include page="../../manager_header.jsp" />
	<div class="content_board">
		<section class="section_1">
			<div>
				<h1>노래 관리</h1>
				<table class="admin_music_info">
					<tr>
						<td><a href="music_list.jsp"><button type="button"
									class="btn_style">목록으로</button></a></td>
						<td><a href="music_update.jsp"><button type="button"
									class="btn_style">수정</button></a> <a href="music_delete.jsp"><button
									type="button" class="btn_style_2">삭제</button></a></td>
					</tr>
					<tr>
						<th>DYNAMITE</th>
					</tr>
					<tr>
						<td>방탄소년단</td>
						<td>2020.11.22</td>
					</tr>
					<tr>
						<td colspan="7">
							<div>
								<textarea cols="50" rows="20">
								Cos ah ah I’m in the stars tonight
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
So I’mma light it up like dynamite, woah</textarea>
							</div>
						</td>

					</tr>
				</table>
			</div>
		</section>
	</div>

	<!-- footer -->
	<jsp:include page="../../footer.jsp" />
</body>
</html>