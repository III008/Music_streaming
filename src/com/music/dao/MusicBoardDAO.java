package com.music.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.music.vo.MusicBoardVO;

public class MusicBoardDAO extends DBConn {
	/**
	 * 전체 리스트 카운트
	 */
	public int getListCount() {
		int result = 0;
		
		try {
			String sql = " SELECT COUNT(*) FROM MUSICBOARD";
			
			getPreparedStatement(sql);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) result = rs.getInt(1);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	/**
	 * Delete 게시글 삭제
	 */
	public boolean getDelete(String bid) {
		boolean result = false;
		
		try {
			String sql = " DELETE FROM MUSICBOARD WHERE BID=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, bid);
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	/**
	 * Update 게시글 내용 업데이트
	 */
	public boolean getUpdateNofile(MusicBoardVO vo) {
		boolean result = false;
		
		try {
			String sql = " UPDATE MUSICBOARD SET BTITLE=?, BCONTENT=? WHERE BID=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getBtitle());
			pstmt.setString(2, vo.getBcontent());
			pstmt.setString(3, vo.getBid());
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}


	/**
	 * Update 게시글 내용 업데이트 - 새로운 파일을 선택한 경우
	 */
	public boolean getUpdate(MusicBoardVO vo) {
		boolean result = false;
		
		try {
			String sql = " UPDATE MUSICBOARD SET BTITLE=?, BCONTENT=?, BFILE=?, BSFILE=? WHERE BID=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getBtitle());
			pstmt.setString(2, vo.getBcontent());
			pstmt.setString(3, vo.getBfile());
			pstmt.setString(4, vo.getBsfile());
			pstmt.setString(5, vo.getBid());
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	/**
	 * Update 조회수
	 */
	public void getUpdateHits(String bid) {
		try {
			String sql = " UPDATE MUSICBOARD SET BHITS=BHITS+1 WHERE BID=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, bid);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	/**
	 * Select 상세 내용
	 */
	public MusicBoardVO getContent(String bid) {
		MusicBoardVO vo = new MusicBoardVO();
		
		try {
			String sql = " select bid, btitle, bcontent, bfile, bsfile, to_char(bdate, 'yyyy.mm.dd'), brec, bhits"
					+ " from musicboard where bid=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, bid);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setBid(rs.getString(1));
				vo.setBtitle(rs.getString(2));
				vo.setBcontent(rs.getString(3));
				vo.setBfile(rs.getString(4));
				vo.setBsfile(rs.getString(5));
				vo.setBdate(rs.getString(6));
				vo.setBrec(rs.getInt(7));
				vo.setBhits(rs.getInt(8));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	
	/**
	 * Select 전체 리스트
	 */
	public ArrayList<MusicBoardVO> getList(int start, int end){
		ArrayList<MusicBoardVO> list = new ArrayList<MusicBoardVO>();
		
		try {
			String sql = " select * from (select rownum rno, bid, btitle, "
					+ " to_char(bdate, 'yyyy.mm.dd'), brec, bhits"
					+ " from (select * from musicboard order by bdate desc))"
					+ " where rno between ? and ?";
			
			getPreparedStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			
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
}//class
