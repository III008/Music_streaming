<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
<style>
/*컨텐츠 타이틀 css*/
	div.content_title{
	margin:0 0 100px 0;
	padding:50px 200px 100px 200px;
	text-align:center;
	background-color:black;
	}
	div.content_title>h1{
		color:white;
		padding:0 0 20px 0;
	}
	div.content_title>p{
		margin:0 15%;
		color:lightgray;
	}
	
	/*컨텐츠 css*/
	div.magazine_content{
		margin:auto;
		
	}
	div.magazine_content>div.magazine_subheading{
	width: 1300px;
	 margin:auto; 
	 border:1px solid gray;
	}
	div.magazine_content>div.magazine_subheading>h2{
	text-align:left;
	}
	div.magazine_content>section{
	width: 1300px;
	display: block;
	margin: auto;
	border: 1px solid gray;
	border-top:none;
	padding:40px 0 0 0 ;
	}
	div.magazine_content>section>img{
		display:block;
		margin:auto;
		width:900px;
		height:1200px;
		border-radius:8px;
		border:2px solid #333;
	}
	div.magazine_content>section>p{
		display:block;
		margin:auto;
		width:900px;
		padding-top:50px;
		padding-bottom:100px;
		border-radius:8px;

	}

</style>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>

<div class="content_title">
<h1>CHROMEO 핼러윈 파티 현장 스케치</h1>
<p>핼러윈 데이를 몇 시간 앞둔 지난 10월 30일. 일렉트로닉 펑크 듀오 Chromeo의 Quarantine Casanova (The Seoul Remixes) 발매를 기념하기 위해
 앨범에 참여한 한국 프로듀서와 디제이들이 NOW. 스튜디오에 모여들었다. 이날 공연의 헤드라이너 Chromeo는 그들의 작업실에서 함께 했고, 리믹스 앨범 라인업에
  이름을 올린 한국의 아티스트들은 저마다 색깔이 뚜렷한 믹스 셋을 가지고 ‘언택트’ 핼러윈 파티를 즐겼다. – 글 주현욱</p>
</div>

<div class="magazine_content">
	<div class="magazine_subheading">
		<h2>Chromeo 앨범 릴리즈 파티,<br>Quarantine Casanova (The Seoul Remixes)</h2>
	</div>
	
	<section>
		<img src="http://localhost:9000/Music_streaming/images/magazine_example2.jpg">
		<p>Q.Chromeo는 Conan에게 어떤 아티스트일까요?
				Conan: Chromeo는 제가 음악 생활을 하는 데 있어서 제게 큰 영향을 미쳤던 아티스트 중에 하나에요. ‘빅 네임’ 아티스트잖아요. 
				그런데 메이저 음악만 하는 게 아니고 본인들만의 색을 확실하게 어필하는 음악을 해나가고 있기 때문에 ‘리스펙트’하게 되는 것 같아요. 리믹스 트랙에 참여하게 돼서 영광스러워요.

				Q.감회가 남다를 것 같아요. 공연은 만족스러웠는지 궁금해요.
					Conan: 오늘 NOW.에서 어디에서도 틀지 않은 따끈따끈한 제 리믹스 트랙을 틀어본 거잖아요. 생각보다 시간이 빨리 가서 아쉬워요. 
					사실 더 틀고 싶었는데…(웃음). 첫 곡으로 리믹스 트랙 이후 셋을 전혀 안 짰거든요. ‘느끼는 대로 틀어보자’가 제 플랜이었어요. 그런 의미에서 만족스러워요.</p>
	</section>
	
</div>
<jsp:include page="../footer.jsp" />
</body>
</html>




