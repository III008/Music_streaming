<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.music.vo.*, com.music.dao.*" %>
<%
	String bid = request.getParameter("bid");
	MusicBoardDAO dao = new MusicBoardDAO();
	MusicBoardVO vo = dao.getContent(bid);
%> 

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>board_write</title>
		<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
		<script src="http://localhost:9000/Music_streaming/js/jquery-3.5.1.min.js"></script>
		<script src="http://localhost:9000/Music_streaming/js/join.js"></script>
		<style>
			span#fname {
				/* border:1px solid red; */
				display:inline-block;
				width:150px;
				margin-left:-575px; 
				font-size:12px;
				background-color:white;
				padding:2px 0 0 2px;
			}
		</style>
		<script>
			$(document).ready(function(){
				//파일선택
				$("input[type=file]").on('change',function(){
					if(window.FileReader){
						var fileName = $(this)[0].files[0].name;
						$("#fname").text("").text(fileName);
					}
				});
			});
		</script>
	</head>
	<body>
		<!-- header -->
		<jsp:include page="../header.jsp"></jsp:include>
		
		<!-- content -->
		<div class="content_board">
			<section class="section_1">
				<div>
					<h1>게시판</h1>
					<form name="boardUpdateForm" action="boardUpdateProc.jsp" method="post"
						class="board_update" enctype="multipart/form-data">
						<input type="hidden" name="bid" value="<%=bid%>">
						<ul>
							<li>
								<label>제 목</label>
								<input type="text" name="btitle" value="<%=vo.getBtitle()%>">
							</li>
							<li>
								<label>내 용</label>
								<textarea name="bcontent"><%= vo.getBcontent() %></textarea>
							</li>
							<li>
								<label>파일첨부</label>
								<% if(vo.getBd_file() != null){ %>
								<input type="file" name="bd_file"><span id="fname"><%=vo.getBd_file() %></span>
								<% }else{ %>
								<input type="file" name="bd_file"><span id="fname">선택된 파일 없음</span>
								<% } %>
							</li>
							<li>
								<button type="submit" class="btn_style">수정완료</button>
								<button type="reset" class="btn_style_2">취소</button>
								<a href="board_content.jsp?bid=<%=bid%>"><button type="button" class="btn_style_2">이전페이지</button></a>
								<a href="board_list.jsp"><button type="button" class="btn_style">목록으로</button></a>
							</li>
						</ul>
					</form>
				</div>
			</section>
 		</div>
		
		<!-- footer -->s
		<jsp:include page="../footer.jsp"></jsp:include>
	</body>
</html>