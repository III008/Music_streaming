package com.music.dao;

import com.music.vo.MusicMemberVO;

public class MusicMemberDAO extends DBConn {
	/**
	 * insert 회원가입
	 */
	public boolean getInsert(MusicMemberVO vo) {
		boolean result = false;
		
		try {
			String sql = " insert into musicmember values(?,?,?,?,?,?,?,?,?,sysdate)";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getBfile());
			pstmt.setString(2, vo.getName());
			pstmt.setString(3, vo.getId());
			pstmt.setString(4, vo.getPass());
			pstmt.setString(5, vo.getEmail());
			pstmt.setString(6, vo.getEmail_agr());
			pstmt.setString(7, vo.getCp());
			pstmt.setString(8, vo.getSms_agr());
			pstmt.setString(9, vo.getGenre_list());

			
			int val = pstmt.executeUpdate();
			
			if(val != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
