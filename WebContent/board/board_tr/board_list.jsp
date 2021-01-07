<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.music.vo.*, com.music.dao.*, java.util.*" %>
<%
	MusicBoardTrDAO dao = new MusicBoardTrDAO();

	//1. 선택한 페이지값
	String rpage = request.getParameter("rpage");
	
	//2-1. 페이지값에 따라서 start, end count 구하기
	//1페이지(1~10), 2페이지(11~20) ...
	int start = 0;
	int end = 0;
	int pageSize = 5; //한 페이지당 출력되는 row
	int pageCount = 1; //전체 페이지 수  : 전체 리스트 row /한 페이지당 출력되는 row
	int dbCount = dao.getListCount(); //DB연동 후 전체로우수 출력
	int reqPage = 1; //요청페이지
	
	//2-2. 전체페이지 수 구하기 - 화면출력
	if(dbCount % pageSize == 0){
		pageCount = dbCount/pageSize;		
	}else{
		pageCount = dbCount/pageSize +1;
	}
	
	//2-3. start, end 값 구하기
	if(rpage != null){
		reqPage = Integer.parseInt(rpage);
		start = (reqPage-1) * pageSize +1 ;
		end = reqPage*pageSize;	
	}else{
		start = reqPage;
		end = pageSize;
	}

	ArrayList<MusicBoardTrVO> list = dao.getList(start, end);
%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시판</title>
		<link rel="stylesheet" href = "http://localhost:9000/Music_streaming/css/music_streaming.css">
		<link rel="stylesheet" href = "http://localhost:9000/Music_streaming/css/am-pagination.css">
		<script src="http://localhost:9000/Music_streaming/js/jquery-3.5.1.min.js"></script>
		<script src="http://localhost:9000/Music_streaming/js/am-pagination.js"></script>
		<script>
			$(document).ready(function(){
				//페이지 번호 및 링크 		
				var pager = jQuery("#ampaginationsm").pagination({
					maxSize : 5,			
					totals : <%=dbCount%>,
					page : <%=reqPage%>,
					pageSize : <%=pageSize%>,
					
					lastText : '&raquo;&raquo;',
					firstText : '&laquo;&laquo',
					prevTest : '&laquo;',
					nextTest : '&raquo;',
					
					btnSize : 'sm' 			
				}); 
				
				jQuery("#ampaginationsm").on('am.pagination.change',function(e){
					$(location).attr('href','http://localhost:9000/Music_streaming/board/board_tr/board_list.jsp?rpage='+e.page);  
					//location.href('이동페이지');
				});
			});
		</script>
	</head>
	<body>
		<!-- header -->
		<jsp:include page="../../header.jsp"></jsp:include>
		
		<!-- player -->
		<jsp:include page="../../musicplayer.jsp" />
		
		<!-- content -->
		<div class="content_board">
			<section class="section_1">
				<div>
					<h1>게시판 - 트롯</h1>
					<table class="board">
						<tr>
							<td colspan="5">
								<a href="board_write.jsp">
									<button type="button" class="btn_style">글쓰기</button>
								</a>  
							</td>
						</tr>
						<tr>
							<th>no</th>
							<th>제목</th>
							<th>등록일</th>
							<th>추천</th>
							<th>조회수</th>
						</tr>
						
						<% for(MusicBoardTrVO vo : list){ %>
						<tr>
							<td><%= vo.getRno() %></td>
							<td><a href="board_content.jsp?tr_bid=<%=vo.getTr_bid()%>"><%= vo.getTr_btitle() %></a></td>
							<td><%= vo.getTr_bdate() %></td>
							<td><%= vo.getTr_brec() %></td>
							<td><%= vo.getTr_bhits() %></td>
						</tr>
						<% } %>
						<tr>
							<td colspan="5"><div id="ampaginationsm"></div></td>
						</tr>
					</table>
				</div>
			</section>
		</div>
		
		<!-- footer -->
		<jsp:include page="../../footer.jsp"></jsp:include>
	</body>
</html>