package com.music.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.music.vo.MusicBoardVO;

public class MusicBoardDAO extends DBConn {
	/**
	 * Select 전체 리스트
	 */
	public ArrayList<MusicBoardVO> getList(){
		ArrayList<MusicBoardVO> list = new ArrayList<MusicBoardVO>();
		
		try {
			String sql = " select rownum rno, bid, btitle, "
					+ " to_char(bdate, 'yyyy.mm.dd'), brec, bhits"
					+ " from (select * from musicboard order by bdate desc)";
			
			getPreparedStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				MusicBoardVO vo = new MusicBoardVO();
				vo.setRno(rs.getInt(1));
				vo.setBid(rs.getString(2));
				vo.setBtitle(rs.getString(3));
				vo.setBdate(rs.getString(4));
				vo.setBrec(rs.getInt(5));
				vo.setBhits(rs.getInt(6));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	/**
	 * Insert 글쓰기
	 */
	public boolean getInsert(MusicBoardVO vo) {
		boolean result = false;
		
		try {
			String sql = " insert into musicboard"
					+ " values('b_'||sequ_musicboard.nextval,?,?,?,?,sysdate,0,0)";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getBtitle());
			pstmt.setString(2, vo.getBcontent());
			pstmt.setString(3, vo.getBfile());
			pstmt.setString(4, vo.getBsfile());
			
			int val = pstmt.executeUpdate();
			
			if(val != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	
	
	
	
	
}
