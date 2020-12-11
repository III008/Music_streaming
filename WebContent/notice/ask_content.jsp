<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>notice_content</title>
		<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
	</head>
	<body>
		<!-- header -->
		<jsp:include page="../header.jsp"></jsp:include>
		
		<!-- content -->
		<div class="content_notice">
			<section class="section_1">
				<div>
					<h1>게시판</h1>
					<table class="notice_content">
						<tr>
							<td colspan="7">
								<a href="notice_list.jsp"><button type="button" class="btn_style">목록으로</button></a>
							</td>
						</tr>
						<tr>
							<th colspan="7">비밀번호를 변경하려면 어떻게 해야 하나요?</th>
						</tr>
						<tr>
							<td>관리자</td>
							<td>추천</td>
							<td>0</td>
							<td>조회</td>
							<td>70</td>
							<td>등록일</td>
							<td>20.12.01</td>
						</tr>
						<tr>
							<td colspan="7">
								<p> <br>아이디/비밀번호를 사용 중인 회원 비밀번호 변경은<br>
								마이페이지 > 내 정보 수정에서 할 수 있습니다.<br>
								비밀번호 변경 시 다른 기기에 자동로그인되어 있는 경우, 자동으로 로그아웃됩니다.<br>
								단, 로그아웃이 적용되는데 일정 시간이 소유될 수 있습니다.<br>
								</p>
							</td>
						</tr>
					</table>
				</div>
			</section>
			
			<section class="section_2">
				<div>
					<table class="notice_content_title">
						<tr>
							<td colspan="2">댓글</td>
						</tr>
					</table>
					<table class="notice_content_reg">
						<tr>
							<td><textarea placeholder="관리자만 댓글을 입력할 수 있습니다."></textarea></td>
							<td><button type="button" class="btn_style">등록</button></td>
						</tr>
					</table>
				</div>
			</section>
 		</div>
		
		<!-- footer -->
		<jsp:include page="../footer.jsp"></jsp:include>
	</body>
</html>