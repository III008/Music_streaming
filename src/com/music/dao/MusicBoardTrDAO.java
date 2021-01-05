package com.music.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.music.vo.MusicBoardTrVO;

public class MusicBoardTrDAO extends DBConn {
	/**
	 * 전체 리스트 카운트
	 */
	public int getListCount() {
		int result = 0;
		
		try {
			String sql = " SELECT COUNT(*) FROM MUSICBOARD_TR";
			
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
	public boolean getDelete(String tr_bid) {
		boolean result = false;
		
		try {
			String sql = " DELETE FROM MUSICBOARD_TR WHERE TR_BID=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, tr_bid);
			
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
	public boolean getUpdateNofile(MusicBoardTrVO vo) {
		boolean result = false;
		
		try {
			String sql = " UPDATE MUSICBOARD_TR SET TR_BTITLE=?, TR_BCONTENT=? WHERE TR_BID=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getTr_btitle());
			pstmt.setString(2, vo.getTr_bcontent());
			pstmt.setString(3, vo.getTr_bid());
			
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
	public boolean getUpdate(MusicBoardTrVO vo) {
		boolean result = false;
		
		try {
			String sql = " UPDATE MUSICBOARD_TR SET TR_BTITLE=?, TR_BCONTENT=?, TR_BFILE=?, TR_BSFILE=? WHERE TR_BID=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getTr_btitle());
			pstmt.setString(2, vo.getTr_bcontent());
			pstmt.setString(3, vo.getTr_bfile());
			pstmt.setString(4, vo.getTr_bsfile());
			pstmt.setString(5, vo.getTr_bid());
			
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
	public void getUpdateHits(String tr_bid) {
		try {
			String sql = " UPDATE MUSICBOARD_TR SET TR_BHITS = TR_BHITS+1 WHERE TR_BID=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, tr_bid);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	/**
	 * Select 상세 내용
	 */
	public MusicBoardTrVO getContent(String tr_bid) {
		MusicBoardTrVO vo = new MusicBoardTrVO();
		
		try {
			String sql = " select tr_bid, tr_btitle, tr_bcontent, tr_bfile, tr_bsfile, to_char(tr_bdate, 'yyyy.mm.dd'), tr_brec, tr_bhits"
					+ " from musicboard_tr where tr_bid=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, tr_bid);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setTr_bid(rs.getString(1));
				vo.setTr_btitle(rs.getString(2));
				vo.setTr_bcontent(rs.getString(3));
				vo.setTr_bfile(rs.getString(4));
				vo.setTr_bsfile(rs.getString(5));
				vo.setTr_bdate(rs.getString(6));
				vo.setTr_brec(rs.getInt(7));
				vo.setTr_bhits(rs.getInt(8));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	
	/**
	 * Select 전체 리스트
	 */
	public ArrayList<MusicBoardTrVO> getList(int start, int end){
		ArrayList<MusicBoardTrVO> list = new ArrayList<MusicBoardTrVO>();
		
		try {
			String sql = " SELECT * FROM (SELECT ROWNUM RNO, TR_BID, TR_BTITLE, TO_CHAR(TR_BDATE,'yyyy.mm.dd'), TR_BREC, TR_BHITS"
						+ " FROM (SELECT * FROM MUSICBOARD_TR ORDER BY TR_BDATE DESC))"
						+ " WHERE RNO BETWEEN ? AND ?";
			
			getPreparedStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				MusicBoardTrVO vo = new MusicBoardTrVO();
				vo.setRno(rs.getInt(1));
				vo.setTr_bid(rs.getString(2));
				vo.setTr_btitle(rs.getString(3));
				vo.setTr_bdate(rs.getString(4));
				vo.setTr_brec(rs.getInt(5));
				vo.setTr_bhits(rs.getInt(6));
				
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
	public ArrayList<MusicBoardTrVO> getList(){
		ArrayList<MusicBoardTrVO> list = new ArrayList<MusicBoardTrVO>();
		
		try {
			String sql = " select rownum rno, tr_bid, tr_btitle, to_char(tr_bdate, 'yyyy.mm.dd'), tr_brec, tr_bhits"
					+ " from (select * from musicboard_tr order by tr_bdate desc)";
			
			getPreparedStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				MusicBoardTrVO vo = new MusicBoardTrVO();
				vo.setRno(rs.getInt(1));
				vo.setTr_bid(rs.getString(2));
				vo.setTr_btitle(rs.getString(3));
				vo.setTr_bdate(rs.getString(4));
				vo.setTr_brec(rs.getInt(5));
				vo.setTr_bhits(rs.getInt(6));
				
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
	public boolean getInsert(MusicBoardTrVO vo) {
		boolean result = false;
		
		try {
			String sql = " insert into musicboard_tr values('b_'||sequ_musicboard_tr.nextval,?,?,?,?,sysdate,0,0)";
			System.out.println("sql-->" + sql);
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getTr_btitle());
			pstmt.setString(2, vo.getTr_bcontent());
			pstmt.setString(3, vo.getTr_bfile());
			pstmt.setString(4, vo.getTr_bsfile());
			
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
	public boolean getRpInsert(MusicBoardTrVO vo, String id, String tr_bid) {
		boolean result = false;
		
		try {
			String sql = " INSERT INTO MUSICREPLY_TR VALUES('comm_'||SEQU_RPID_TR.nextval,?,SYSDATE,?,?)";
			
			getPreparedStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, vo.getRp_write());
			pstmt.setString(3, tr_bid);
			
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
	public ArrayList<MusicBoardTrVO> getRp_List(String tr_bid){
		ArrayList<MusicBoardTrVO> list = new ArrayList<MusicBoardTrVO>();
		
		try {
			String sql = " SELECT RP_ID, ID, RP_DATE, RP_WRITE, TR_BID FROM MUSICREPLY_TR WHERE TR_BID=? ORDER BY RP_DATE";
			
			getPreparedStatement(sql);
			pstmt.setString(1, tr_bid);
			
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				MusicBoardTrVO vo = new MusicBoardTrVO();
				vo.setRp_id(rs.getString(1));
				vo.setId(rs.getString(2));
				vo.setRp_date(rs.getString(3));
				vo.setRp_write(rs.getString(4));
				vo.setTr_bid(rs.getString(5));
				
				list.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
