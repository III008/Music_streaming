<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="com.music.dao.*,com.music.vo.*,java.util.*,com.google.gson.*"
    %>

<%
	ArrayList del_list =request.getParameter("del_list");	

	String nid = request.getParameter("nid");
	MusicNoticeDAO dao = new MusicNoticeDAO();
	boolean result = dao.getDelete(nid);
	boolean result_chk = dao.getDelete_chk(del_list);
	/* System.out.println("데이터 성공"); 해당 페이지까지 넘어옴 */
	/*System.out.println(del_list); notice_list페이지의 del_list 값 넘어옴  */
	/*근데 여기서 del_list의 값을 배열list로 가져와야하는가 아니면 해당 문자열로 가져와야하는가*/
	
	/*체크박스를 통하여 다중 삭제를 진행할 경우*/
	if(result_chk){
		System.out.println("체크박스 다중삭제 성공");
	}else{
		System.out.println("체크박스 다중삭제 실패");
	}
	
	/*해당 개별 삭제를 할 경우*/
	if(result){
		response.sendRedirect("notice_list.jsp");
	}else{
		response.sendRedirect("../../manager_index.jsp");
	}
%> 