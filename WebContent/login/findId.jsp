<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.music.dao.*"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
table.find_menu td {
	width: 260px;
}

table.find_menu td>a {
	text-decoration: none;
	color: #333;
	display: inline-block;
	width: 100%;
	padding: 10px 0;
	font-size: 17px;
	font-weight: bold;
	background-color: rgb(231, 231, 231);
	text-align: center;
}

table.find_menu td>a:hover {
	color: white;
	background-color: rgb(255, 0, 80);
}

div {
	display: inline-block;
	padding: 10px 0 20px 0;
	font-size: 15px;
}

input {
	height: 30px;
	text-indent: 5px;
	font-size: 15px;
}

button {
	font-size: 14px;
	font-weight: 500;
	width: 80px;
	height: 35px;
	border: 1px solid white;
	padding-bottom: 5px;
}

table.a {
	border-bottom: 1px solid black;
	padding-top: 20px;
}

table.a td {
	padding: 0 5px;
}
</style>
<script
	src="http://localhost:9000/Music_streaming/js/jquery-3.5.1.min.js"></script>
<script>
	$(document).ready(function() {

		function member_id(email) {
			$.ajax({
				url : "member_id_ajax_proc.jsp?email=" + email,
				success : function(result) {
					//alert(result);

					var jdata = JSON.parse(result);

					var output = '<table class="a">';

					output += '<tr><th>아이디</th>';
					output += '<th>가입일자</th></tr>';

					output += '<tr>';
					output += '<td>' + jdata.id + '</td>';
					output += '<td>' + jdata.mdate + '</td>';
					output += '</tr></table>'
					$("#idSearch").after(output);

				}//success
			})//ajax
		}//member_id

		$("#idSearch").click(function() {
			if ($("#email").val() == "") {
				alert("이메일을 입력해주세요");
				$("#email").focus();
				return false;
			} else {
				var email = $("#email").val();
				member_id(email);
			}
		})
	});
</script>
</head>
<body>
	<table class="find_menu">
		<tr>
			<td><a href="findId.jsp">아이디 찾기</a></td>
			<td><a href="findPass.jsp">비밀번호 찾기</a></td>
		</tr>
	</table>
	<div>
		<span>이메일</span> <input type="text" id="email" name="email"
			placeholder="가입 시 등록한 이메일">
		<button type="button" id="idSearch">검색</button>
	</div>
</body>
</html>