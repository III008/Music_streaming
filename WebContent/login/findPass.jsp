<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<style>


	table.find_menu td {
		width:260px;
	}
	table.find_menu td>a {
		text-decoration:none;
		color:#333;
		display:inline-block;
		width:100%;
		padding:10px 0;
		font-size:17px;
		font-weight:bold;
		background-color:rgb(231, 231, 231);
		text-align:center;
	}
	table.find_menu td>a:hover {
		color:white;
		background-color:rgb(255, 0, 80);
	}

</style>	
</head>
<body>
					<table class = "find_menu">
					<tr>
						<td><a href="findId.jsp">아이디찾기</a></td>
						<td><a href="findPass.jsp">비밀번호 찾기</a></td>
					</tr>
				</table>
				<span>가입시 등록 한 이메일 : </span>
				<input type = "text" placeholder ="vibe@naver.com">
				<input type = "text" placeholder ="vibe@naver.com">
				<button type ="button">검색</button>
					

</body>
</html>