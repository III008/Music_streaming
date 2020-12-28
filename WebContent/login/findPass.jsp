<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
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
button{
		font-size:14px;
		font-weight:500;
		border:1px solid white;
		padding:30px 15px;
		
		
}
input{
height:30px;
text-indent:5px;
font-size:15px;

}
table#find_pass span{
padding-right:7px;
font-size:15px;
}
</style>
<script
	src="http://localhost:9000/Music_streaming/js/jquery-3.5.1.min.js"></script>
<script>
	$(document).ready(function() {

		function member_pass(id, email) {
			$.ajax({
				url : "member_pass_ajax_proc.jsp?id=" + id + "&email=" + email,
				success : function(result) {
					alert(result);

					var jdata = JSON.parse(result);

					var output = '<table id="a">';

					output += '<tr><th>비밀번호</th></tr>';

					output += '<tr>';
					output += '<td>' + jdata.pass + '</td>';
					output += '</tr></table>'
					$("#find_pass").after(output);

				}//success
			})//ajax
		}//member_id

		$("#passSearch").click(function() {
			if ($("#id").val() == "") {
				alert("아이디를 입력해주세요");
				$("#id").focus();
			} 
			else if ($("#email").val() == "") {
				alert("이메일을 입력해주세요");
				$("#email").focus();
			} else {
				var id = $("#id").val();
				var email = $("#email").val();
				member_pass(id, email);
			}
		})
	});
</script>
</head>
<body>
	<table class="find_menu">
		<tr>
			<td><a href="findId.jsp">아이디찾기</a></td>
			<td><a href="findPass.jsp">비밀번호 찾기</a></td>
		</tr>
	</table>


	<table id = "find_pass">
		<tr>
			<td><span>아이디</span><input type="text" id="id" name="id" placeholder="아이디"></td>
			<td rowspan="2"><button type="button" id="passSearch">검색</button></td>
		</tr>
		<tr>
			<td><span>이메일</span><input type="text" id="email" name="email" placeholder= "가입 시 등록한 이메일"></td>
		</tr>
	</table>


</body>
</html>