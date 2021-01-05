package com.music.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.music.vo.MusicBoardDcVO;

public class MusicBoardDcDAO extends DBConn {
	/**
	 * 전체 리스트 카운트
	 */
	public int getListCount() {
		int result = 0;
		
		try {
			String sql = " SELECT COUNT(*) FROM MUSICBOARD_DC";
			
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
	public boolean getDelete(String dc_bid) {
		boolean result = false;
		
		try {
			String sql = " DELETE FROM MUSICBOARD_DC WHERE DC_BID=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, dc_bid);
			
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
	public boolean getUpdateNofile(MusicBoardDcVO vo) {
		boolean result = false;
		
		try {
			String sql = " UPDATE MUSICBOARD_DC SET DC_BTITLE=?, DC_BCONTENT=? WHERE DC_BID=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getDc_btitle());
			pstmt.setString(2, vo.getDc_bcontent());
			pstmt.setString(3, vo.getDc_bid());
			
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
	public boolean getUpdate(MusicBoardDcVO vo) {
		boolean result = false;
		
		try {
			String sql = " UPDATE MUSICBOARD_DC SET DC_BTITLE=?, DC_BCONTENT=?, DC_BFILE=?, DC_BSFILE=? WHERE DC_BID=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getDc_btitle());
			pstmt.setString(2, vo.getDc_bcontent());
			pstmt.setString(3, vo.getDc_bfile());
			pstmt.setString(4, vo.getDc_bsfile());
			pstmt.setString(5, vo.getDc_bid());
			
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
	public void getUpdateHits(String dc_bid) {
		try {
			String sql = " UPDATE MUSICBOARD_DC SET DC_BHITS=DC_BHITS+1 WHERE DC_BID=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, dc_bid);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	/**
	 * Select 상세 내용
	 */
	public MusicBoardDcVO getContent(String dc_bid) {
		MusicBoardDcVO vo = new MusicBoardDcVO();
		
		try {
			String sql = " select dc_bid, dc_btitle, dc_bcontent, dc_bfile, dc_bsfile, to_char(dc_bdate, 'yyyy.mm.dd'), dc_brec, dc_bhits"
					+ " from musicboard_dc where dc_bid=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, dc_bid);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setDc_bid(rs.getString(1));
				vo.setDc_btitle(rs.getString(2));
				vo.setDc_bcontent(rs.getString(3));
				vo.setDc_bfile(rs.getString(4));
				vo.setDc_bsfile(rs.getString(5));
				vo.setDc_bdate(rs.getString(6));
				vo.setDc_brec(rs.getInt(7));
				vo.setDc_bhits(rs.getInt(8));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	
	/**
	 * Select 전체 리스트
	 */
	public ArrayList<MusicBoardDcVO> getList(int start, int end){
		ArrayList<MusicBoardDcVO> list = new ArrayList<MusicBoardDcVO>();
		
		try {
			String sql = " SELECT * FROM (SELECT ROWNUM RNO, DC_BID, DC_BTITLE, TO_CHAR(DC_BDATE,'yyyy.mm.dd'), DC_BREC, DC_BHITS"
						+ " FROM (SELECT * FROM MUSICBOARD_DC ORDER BY DC_BDATE DESC))"
						+ " WHERE RNO BETWEEN ? AND ?";
			
			getPreparedStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				MusicBoardDcVO vo = new MusicBoardDcVO();
				vo.setRno(rs.getInt(1));
				vo.setDc_bid(rs.getString(2));
				vo.setDc_btitle(rs.getString(3));
				vo.setDc_bdate(rs.getString(4));
				vo.setDc_brec(rs.getInt(5));
				vo.setDc_bhits(rs.getInt(6));
				
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
	public ArrayList<MusicBoardDcVO> getList(){
		ArrayList<MusicBoardDcVO> list = new ArrayList<MusicBoardDcVO>();
		
		try {
			String sql = " select rownum rno, dc_bid, dc_btitle, to_char(dc_bdate, 'yyyy.mm.dd'), dc_brec, dc_bhits"
					+ " from (select * from musicboard_dc order by dc_bdate desc)";
			
			getPreparedStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				MusicBoardDcVO vo = new MusicBoardDcVO();
				vo.setRno(rs.getInt(1));
				vo.setDc_bid(rs.getString(2));
				vo.setDc_btitle(rs.getString(3));
				vo.setDc_bdate(rs.getString(4));
				vo.setDc_brec(rs.getInt(5));
				vo.setDc_bhits(rs.getInt(6));
				
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
	public boolean getInsert(MusicBoardDcVO vo) {
		boolean result = false;
		
		try {
			String sql = " insert into musicboard_dc values('b_'||sequ_musicboard_dc.nextval,?,?,?,?,sysdate,0,0)";
			System.out.println("sql-->" + sql);
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getDc_btitle());
			pstmt.setString(2, vo.getDc_bcontent());
			pstmt.setString(3, vo.getDc_bfile());
			pstmt.setString(4, vo.getDc_bsfile());
			
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
	public boolean getRpInsert(MusicBoardDcVO vo, String id, String dc_bid) {
		boolean result = false;
		
		try {
			String sql = " INSERT INTO MUSICREPLY_DC VALUES('comm_'||SEQU_RPID_DC.nextval,?,SYSDATE,?,?)";
			
			getPreparedStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, vo.getRp_write());
			pstmt.setString(3, dc_bid);
			
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
	public ArrayList<MusicBoardDcVO> getRp_List(String dc_bid){
		ArrayList<MusicBoardDcVO> list = new ArrayList<MusicBoardDcVO>();
		
		try {
			String sql = " SELECT RP_ID, ID, RP_DATE, RP_WRITE, DC_BID FROM MUSICREPLY_DC WHERE DC_BID=? ORDER BY RP_DATE";
			
			getPreparedStatement(sql);
			pstmt.setString(1, dc_bid);
			
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				MusicBoardDcVO vo = new MusicBoardDcVO();
				vo.setRp_id(rs.getString(1));
				vo.setId(rs.getString(2));
				vo.setRp_date(rs.getString(3));
				vo.setRp_write(rs.getString(4));
				vo.setDc_bid(rs.getString(5));
				
				list.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	
}//class
