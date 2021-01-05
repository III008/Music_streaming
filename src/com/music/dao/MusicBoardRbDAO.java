package com.music.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.music.vo.MusicBoardRbVO;
import com.music.vo.MusicBoardRhVO;

public class MusicBoardRbDAO extends DBConn {
	/**
	 * 전체 리스트 카운트
	 */
	public int getListCount() {
		int result = 0;
		
		try {
			String sql = " SELECT COUNT(*) FROM MUSICBOARD_RB";
			
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
	public boolean getDelete(String rb_bid) {
		boolean result = false;
		
		try {
			String sql = " DELETE FROM MUSICBOARD_RB WHERE RB_BID=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, rb_bid);
			
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
	public boolean getUpdateNofile(MusicBoardRbVO vo) {
		boolean result = false;
		
		try {
			String sql = " UPDATE MUSICBOARD_RB SET RB_BTITLE=?, RB_BCONTENT=? WHERE RB_BID=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getRb_btitle());
			pstmt.setString(2, vo.getRb_bcontent());
			pstmt.setString(3, vo.getRb_bid());
			
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
	public boolean getUpdate(MusicBoardRbVO vo) {
		boolean result = false;
		
		try {
			String sql = " UPDATE MUSICBOARD_RB SET RB_BTITLE=?, RB_BCONTENT=?, RB_BFILE=?, RB_BSFILE=? WHERE RB_BID=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getRb_btitle());
			pstmt.setString(2, vo.getRb_bcontent());
			pstmt.setString(3, vo.getRb_bfile());
			pstmt.setString(4, vo.getRb_bsfile());
			pstmt.setString(5, vo.getRb_bid());
			
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
	public void getUpdateHits(String rb_bid) {
		try {
			String sql = " UPDATE MUSICBOARD_RB SET RB_BHITS=RB_BHITS+1 WHERE RB_BID=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, rb_bid);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	/**
	 * Select 상세 내용
	 */
	public MusicBoardRbVO getContent(String rb_bid) {
		MusicBoardRbVO vo = new MusicBoardRbVO();
		
		try {
			String sql = " select rb_bid, rb_btitle, rb_bcontent, rb_bfile, rb_bsfile, to_char(rb_bdate, 'yyyy.mm.dd'), rb_brec, rb_bhits"
					+ " from musicboard_rb where rb_bid=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, rb_bid);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setRb_bid(rs.getString(1));
				vo.setRb_btitle(rs.getString(2));
				vo.setRb_bcontent(rs.getString(3));
				vo.setRb_bfile(rs.getString(4));
				vo.setRb_bsfile(rs.getString(5));
				vo.setRb_bdate(rs.getString(6));
				vo.setRb_brec(rs.getInt(7));
				vo.setRb_bhits(rs.getInt(8));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	
	/**
	 * Select 전체 리스트
	 */
	public ArrayList<MusicBoardRbVO> getList(int start, int end){
		ArrayList<MusicBoardRbVO> list = new ArrayList<MusicBoardRbVO>();
		
		try {
			String sql = " SELECT * FROM (SELECT ROWNUM RNO, RB_BID, RB_BTITLE, TO_CHAR(RB_BDATE,'yyyy.mm.dd'), RB_BREC, RB_BHITS"
						+ " FROM (SELECT * FROM MUSICBOARD_RB ORDER BY RB_BDATE DESC))"
						+ " WHERE RNO BETWEEN ? AND ?";
			
			getPreparedStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				MusicBoardRbVO vo = new MusicBoardRbVO();
				vo.setRno(rs.getInt(1));
				vo.setRb_bid(rs.getString(2));
				vo.setRb_btitle(rs.getString(3));
				vo.setRb_bdate(rs.getString(4));
				vo.setRb_brec(rs.getInt(5));
				vo.setRb_bhits(rs.getInt(6));
				
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
	public ArrayList<MusicBoardRbVO> getList(){
		ArrayList<MusicBoardRbVO> list = new ArrayList<MusicBoardRbVO>();
		
		try {
			String sql = " select rownum rno, rb_bid, rb_btitle, to_char(rb_bdate, 'yyyy.mm.dd'), rb_brec, rb_bhits"
					+ " from (select * from musicboard_rb order by rb_bdate desc)";
			
			getPreparedStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				MusicBoardRbVO vo = new MusicBoardRbVO();
				vo.setRno(rs.getInt(1));
				vo.setRb_bid(rs.getString(2));
				vo.setRb_btitle(rs.getString(3));
				vo.setRb_bdate(rs.getString(4));
				vo.setRb_brec(rs.getInt(5));
				vo.setRb_bhits(rs.getInt(6));
				
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
	public boolean getInsert(MusicBoardRbVO vo) {
		boolean result = false;
		
		try {
			String sql = " insert into musicboard_rb values('b_'||sequ_musicboard_rb.nextval,?,?,?,?,sysdate,0,0)";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getRb_btitle());
			pstmt.setString(2, vo.getRb_bcontent());
			pstmt.setString(3, vo.getRb_bfile());
			pstmt.setString(4, vo.getRb_bsfile());
			
			int val = pstmt.executeUpdate();
			
			if(val != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	/**
	 * Insert 댓글 등록
	 */
	public boolean getRpInsert(MusicBoardRbVO vo, String id, String rb_bid) {
		boolean result = false;
		
		try {
			String sql = " INSERT INTO MUSICREPLY_RB VALUES('comm_'||SEQU_RPID_RB.nextval,?,SYSDATE,?,?)";
			
			getPreparedStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, vo.getRp_write());
			pstmt.setString(3, rb_bid);
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	/**
	 * List : 댓글 리스트
	 */
	public ArrayList<MusicBoardRbVO> getRp_List(String rb_bid){
		ArrayList<MusicBoardRbVO> list = new ArrayList<MusicBoardRbVO>();
		
		try {
			String sql = " SELECT RP_ID, ID, RP_DATE, RP_WRITE, RB_BID FROM MUSICREPLY_RB WHERE RB_BID=? ORDER BY RP_DATE";
			
			getPreparedStatement(sql);
			pstmt.setString(1, rb_bid);
			
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				MusicBoardRbVO vo = new MusicBoardRbVO();
				vo.setRp_id(rs.getString(1));
				vo.setId(rs.getString(2));
				vo.setRp_date(rs.getString(3));
				vo.setRp_write(rs.getString(4));
				vo.setRb_bid(rs.getString(5));
				
				list.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
