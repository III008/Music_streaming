package com.music.dao;

import java.sql.Array;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.music.vo.MusicNoticeVO;

public class MusicNoticeDAO extends DBConn {
	
	/**
	 * 	list count
	 */
	public int getListCount() {
		int result = 0;
		
		try {
			String sql = " select count(*) from musicnotice";
			
			getPreparedStatement(sql);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) result = rs.getInt(1);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	/**
	 * Select : 전체 리스트 출력 
	 */
	public ArrayList<MusicNoticeVO> getList(int start, int end){
		ArrayList<MusicNoticeVO> list = new ArrayList<MusicNoticeVO>();
		
		try {
			String sql = " select * from (select rownum rno, nid, ntitle, to_char(ndate,'yyyy.mm.dd'), nhits "
					+ 	" from (select * from musicnotice order by ndate desc)) " 
					+ " where rno between ? and ?";
			
			getPreparedStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				MusicNoticeVO vo = new MusicNoticeVO();
				vo.setRno(rs.getInt(1));
				vo.setNid(rs.getString(2));
				vo.setNtitle(rs.getString(3));
				vo.setNdate(rs.getString(4));
				vo.setNhits(rs.getInt(5));
				
				list.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	/**
	 * Select : 상세정보 출력
	 */
	public MusicNoticeVO getContent(String nid) {
		MusicNoticeVO vo = new MusicNoticeVO();
		
		try {
			String sql = "select nid,ntitle, ncontent "
					+ ",to_char(ndate,'yyyy.mm.dd'),nhits, nfile, nsfile " + 
					" from musicnotice where nid=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, nid);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setNid(rs.getString(1));
				vo.setNtitle(rs.getString(2));
				vo.setNcontent(rs.getString(3));
				vo.setNdate(rs.getString(4));
				vo.setNhits(rs.getInt(5));
				vo.setNfile(rs.getString(6));
				vo.setNsfile(rs.getString(7));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
	/**
	 * Insert : 공지사항 글쓰기
	 */
	public boolean getInsert(MusicNoticeVO vo) {
		boolean result = false;
		
		try {
			String sql = "insert into musicnotice "
				+ " values('n_'||sequ_musicnotice.nextval,?,?,?,?,sysdate,0)";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getNtitle());
			pstmt.setString(2, vo.getNcontent());
			pstmt.setString(3, vo.getNfile());
			pstmt.setString(4, vo.getNsfile());
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * Update : 내용 수정
	 */
	public boolean getUpdate(MusicNoticeVO vo) {
		boolean result = false;
		
		try {
			String sql = "update musicnotice set ntitle=?, ncontent=?, nfile=?, nsfile=? "
					+ " where nid=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getNtitle());
			pstmt.setString(2, vo.getNcontent());
			pstmt.setString(3, vo.getNfile());
			pstmt.setString(4, vo.getNsfile());
			pstmt.setString(5, vo.getNid());
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * Update : 내용 업데이트 - 새로운 파일을 선택한 경우
	 */
	public boolean getUpdateNofile(MusicNoticeVO vo) {
		boolean result = false;
		
		try {
			String sql ="update musicnotice set ntitle=?, ncontent=? "
					+ " where nid=?";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getNtitle());
			pstmt.setString(2, vo.getNcontent());
			pstmt.setString(3, vo.getNid());
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return result;
	}
	
	
	
	/**
	 * Delete : 삭제
	 */
	public boolean getDelete(String nid) {
		boolean result = false;
		
		try {
			String sql = "delete from musicnotice where nid=?";
			getPreparedStatement(sql);
			pstmt.setString(1, nid);
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * Delete : 체크 박스 삭제	//배열 타입으로 넘어와야함
	 */
	/*
	 * public boolean getDelete_chk(del_list) { boolean result = false;
	 * 
	 * try { String sql=" delete from musicnotice where nid = ?";
	 * 
	 * getPreparedStatement(sql); pstmt.setArray(1,del_list); int val =
	 * pstmt.executeUpdate(); if(val != 0) result = true;
	 * 
	 * } catch (Exception e) { e.printStackTrace(); }
	 * 
	 * return result; }
	 */
	
	/**
	 * Update : 조회수 업데이트
	 */
	public void getUpdateHits(String nid) {
		try {
			String sql = "update musicnotice set nhits=nhits+1 "
					+ " where nid=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, nid);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}
