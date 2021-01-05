package com.music.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.music.vo.MusicBoardDcVO;
import com.music.vo.MusicBoardRhVO;


public class MusicBoardRhDAO extends DBConn {
	/**
	 * 전체 리스트 카운트
	 */
	public int getListCount() {
		int result = 0;
		
		try {
			String sql = " SELECT COUNT(*) FROM MUSICBOARD_RH";
			
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
	public boolean getDelete(String rh_bid) {
		boolean result = false;
		
		try {
			String sql = " DELETE FROM MUSICBOARD_RH WHERE RH_BID=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, rh_bid);
			
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
	public boolean getUpdateNofile(MusicBoardRhVO vo) {
		boolean result = false;
		
		try {
			String sql = " UPDATE MUSICBOARD_RH SET RH_BTITLE=?, RH_BCONTENT=? WHERE RH_BID=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getRh_btitle());
			pstmt.setString(2, vo.getRh_bcontent());
			pstmt.setString(3, vo.getRh_bid());
			
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
	public boolean getUpdate(MusicBoardRhVO vo) {
		boolean result = false;
		
		try {
			String sql = " UPDATE MUSICBOARD_RH SET RH_BTITLE=?, RH_BCONTENT=?, RH_BFILE=?, RH_BSFILE=? WHERE RH_BID=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getRh_btitle());
			pstmt.setString(2, vo.getRh_bcontent());
			pstmt.setString(3, vo.getRh_bfile());
			pstmt.setString(4, vo.getRh_bsfile());
			pstmt.setString(5, vo.getRh_bid());
			
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
	public void getUpdateHits(String rh_bid) {
		try {
			String sql = " UPDATE MUSICBOARD_RH SET RH_BHITS=RH_BHITS+1 WHERE RH_BID=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, rh_bid);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	/**
	 * Select 상세 내용
	 */
	public MusicBoardRhVO getContent(String rh_bid) {
		MusicBoardRhVO vo = new MusicBoardRhVO();
		
		try {
			String sql = " select rh_bid, rh_btitle, rh_bcontent, rh_bfile, rh_bsfile, to_char(rh_bdate, 'yyyy.mm.dd'), rh_brec, rh_bhits"
					+ " from musicboard_rh where rh_bid=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, rh_bid);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setRh_bid(rs.getString(1));
				vo.setRh_btitle(rs.getString(2));
				vo.setRh_bcontent(rs.getString(3));
				vo.setRh_bfile(rs.getString(4));
				vo.setRh_bsfile(rs.getString(5));
				vo.setRh_bdate(rs.getString(6));
				vo.setRh_brec(rs.getInt(7));
				vo.setRh_bhits(rs.getInt(8));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	
	/**
	 * Select 전체 리스트
	 */
	public ArrayList<MusicBoardRhVO> getList(int start, int end){
		ArrayList<MusicBoardRhVO> list = new ArrayList<MusicBoardRhVO>();
		
		try {
			String sql = " SELECT * FROM (SELECT ROWNUM RNO, RH_BID, RH_BTITLE, TO_CHAR(RH_BDATE,'yyyy.mm.dd'), RH_BREC, RH_BHITS"
						+ " FROM (SELECT * FROM MUSICBOARD_RH ORDER BY RH_BDATE DESC))"
						+ " WHERE RNO BETWEEN ? AND ?";
			
			getPreparedStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				MusicBoardRhVO vo = new MusicBoardRhVO();
				vo.setRno(rs.getInt(1));
				vo.setRh_bid(rs.getString(2));
				vo.setRh_btitle(rs.getString(3));
				vo.setRh_bdate(rs.getString(4));
				vo.setRh_brec(rs.getInt(5));
				vo.setRh_bhits(rs.getInt(6));
				
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
	public ArrayList<MusicBoardRhVO> getList(){
		ArrayList<MusicBoardRhVO> list = new ArrayList<MusicBoardRhVO>();
		
		try {
			String sql = " select rownum rno, rh_bid, rh_btitle, to_char(rh_bdate, 'yyyy.mm.dd'), rh_brec, rh_bhits"
					+ " from (select * from musicboard_rh order by rh_bdate desc)";
			
			getPreparedStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				MusicBoardRhVO vo = new MusicBoardRhVO();
				vo.setRno(rs.getInt(1));
				vo.setRh_bid(rs.getString(2));
				vo.setRh_btitle(rs.getString(3));
				vo.setRh_bdate(rs.getString(4));
				vo.setRh_brec(rs.getInt(5));
				vo.setRh_bhits(rs.getInt(6));
				
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
	public boolean getInsert(MusicBoardRhVO vo) {
		boolean result = false;
		
		try {
			String sql = " insert into musicboard_rh values('b_'||sequ_musicboard_rh.nextval,?,?,?,?,sysdate,0,0)";
			System.out.println("sql-->" + sql);
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getRh_btitle());
			pstmt.setString(2, vo.getRh_bcontent());
			pstmt.setString(3, vo.getRh_bfile());
			pstmt.setString(4, vo.getRh_bsfile());
			
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
	public boolean getRpInsert(MusicBoardRhVO vo, String id, String rh_bid) {
		boolean result = false;
		
		try {
			String sql = " INSERT INTO MUSICREPLY_RH VALUES('comm_'||SEQU_RPID_RH.nextval,?,SYSDATE,?,?)";
			
			getPreparedStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, vo.getRp_write());
			pstmt.setString(3, rh_bid);
			
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
	public ArrayList<MusicBoardRhVO> getRp_List(String rh_bid){
		ArrayList<MusicBoardRhVO> list = new ArrayList<MusicBoardRhVO>();
		
		try {
			String sql = " SELECT RP_ID, ID, RP_DATE, RP_WRITE, RH_BID FROM MUSICREPLY_RH WHERE RH_BID=? ORDER BY RP_DATE";
			
			getPreparedStatement(sql);
			pstmt.setString(1, rh_bid);
			
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				MusicBoardRhVO vo = new MusicBoardRhVO();
				vo.setRp_id(rs.getString(1));
				vo.setId(rs.getString(2));
				vo.setRp_date(rs.getString(3));
				vo.setRp_write(rs.getString(4));
				vo.setRh_bid(rs.getString(5));
				
				list.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
