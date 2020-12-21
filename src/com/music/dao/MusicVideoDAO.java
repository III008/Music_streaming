package com.music.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.music.vo.MusicVideoVO;

public class MusicVideoDAO extends DBConn {
	/**
	 * 뮤비 등록
	 */
	public boolean getInsert(MusicVideoVO vo) {
		boolean result = false;
		try {
			String sql = "insert into musicvideo values('v_'||sequ_vid.nextval,?,?,?,?,?,?,?,?,sysdate,0)";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getVtitle());
			pstmt.setString(2, vo.getVartist());
			pstmt.setString(3, vo.getVcontent());
			pstmt.setString(4, vo.getVintro());
			pstmt.setString(5, vo.getVfile1());
			pstmt.setString(6, vo.getVsfile1());
			pstmt.setString(7, vo.getVfile2());
			pstmt.setString(8, vo.getVsfile2());

			int val = pstmt.executeUpdate();
			if (val != 0) {
				result = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	/**
	 * 전체리스트 출력
	 */
	public ArrayList<MusicVideoVO> getList(){
		ArrayList<MusicVideoVO> list = new ArrayList<MusicVideoVO>();
		try {
			String sql = "select rownum rno, vid, vtitle, vartist, vcontent, vintro, vfile1, vsfile1, vfile2, vsfile2, vdate, vhits  from musicvideo";
			getPreparedStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MusicVideoVO vo = new MusicVideoVO();
				vo.setRno(rs.getInt(1));
				vo.setVid(rs.getString(2));
				vo.setVtitle(rs.getString(3));
				vo.setVartist(rs.getString(4));
				vo.setVcontent(rs.getString(5));
				vo.setVintro(rs.getString(6));
				vo.setVfile1(rs.getString(7));
				vo.setVsfile1(rs.getString(8));
				vo.setVfile2(rs.getString(9));
				vo.setVsfile2(rs.getString(10));
				vo.setVdate(rs.getString(11));
				vo.setVhits(rs.getInt(12));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
		
	}
	/**
	 * 상세 정보 출력 
	 */
	public MusicVideoVO getContent(String vid) {
		MusicVideoVO vo = new MusicVideoVO();
		try {
			String sql = "select vtitle, vartist, vdate, vcontent, vintro, vfile1, vsfile1, vfile2, vsfile2  from musicvideo where vid =?";
			getPreparedStatement(sql);
			pstmt.setString(1, vid);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setVtitle(rs.getString(1));
				vo.setVartist(rs.getString(2));
				vo.setVdate(rs.getString(3));
				vo.setVcontent(rs.getString(4));
				vo.setVintro(rs.getString(5));
				vo.setVfile1(rs.getString(6));
				vo.setVsfile1(rs.getString(7));
				vo.setVfile2(rs.getString(8));
				vo.setVsfile2(rs.getString(9));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	/**
	 * 뮤비 삭제
	 */
	public boolean getDelete(String vid) {
		boolean result = false;
		try {
			String sql = "delete from musicvideo where vid = ?";
			getPreparedStatement(sql);
			pstmt.setString(1, vid);
			int val = pstmt.executeUpdate();

			if(val !=0) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			}
		return result;
	}
	/**
	 * 뮤비 수정
	 */
	public boolean getUpdate(MusicVideoVO vo) {
		boolean result = false;
		try {
			String sql = "update musicvideo set vartist =?, vtitle = ?, vintro = ? , vfile1= ?, vsfile1 = ? ,vfile2=?, vsfile2=? where vid =?";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getVartist());
			pstmt.setString(2, vo.getVtitle());
			pstmt.setString(3, vo.getVintro());
			pstmt.setString(4, vo.getVfile1());
			pstmt.setString(5, vo.getVsfile1());
			pstmt.setString(6, vo.getVfile2());
			pstmt.setString(7, vo.getVsfile2());
			pstmt.setString(8, vo.getVid());
			
			int val = pstmt.executeUpdate();
			if(val !=0) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	public boolean getUpdateVfile1(MusicVideoVO vo) {
		boolean result = false;
		try {
			String sql = "update musicvideo set vartist =?, vtitle = ?, vintro = ? , vfile1= ?, vsfile1 = ? where vid= ?";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getVartist());
			pstmt.setString(2, vo.getVtitle());
			pstmt.setString(3, vo.getVintro());
			pstmt.setString(4, vo.getVfile1());
			pstmt.setString(5, vo.getVsfile1());
			pstmt.setString(6, vo.getVid());
			
			int val = pstmt.executeUpdate();
			if(val !=0) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public boolean getUpdateVfile2(MusicVideoVO vo) {
		boolean result = false;
		try {
			String sql = "update musicvideo set vartist =?, vtitle = ?, vintro = ? , vfile2= ?, vsfile2 = ? where vid =?";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getVartist());
			pstmt.setString(2, vo.getVtitle());
			pstmt.setString(3, vo.getVintro());
			pstmt.setString(4, vo.getVfile2());
			pstmt.setString(5, vo.getVsfile2());
			pstmt.setString(6, vo.getVid());
			
			int val = pstmt.executeUpdate();
			if(val !=0) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public boolean getUpdateNofile(MusicVideoVO vo) {
		boolean result = false;
		try {
			String sql = "update musicvideo set vartist =?, vtitle = ?, vintro = ? where vid= ?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getVartist());
			pstmt.setString(2, vo.getVtitle());
			pstmt.setString(3, vo.getVintro());			
			pstmt.setString(4, vo.getVid());			
			int val = pstmt.executeUpdate();
			if(val !=0) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	/**
	 * 인기 뮤비 출력
	 */
	
	public ArrayList<MusicVideoVO> getHotList(){
		 ArrayList<MusicVideoVO> list = new  ArrayList<MusicVideoVO>();
		 try {
			String sql = "select rownum rno, vid, vfile1, vsfile1, vtitle, vartist"
					+ " from (select * from musicvideo order by vhits desc) "
					+ "where rownum < 5";
			getPreparedStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				MusicVideoVO vo = new MusicVideoVO();
				vo.setRno(rs.getInt(1));
				vo.setVid(rs.getString(2));
				vo.setVfile1(rs.getString(3));
				vo.setVsfile1(rs.getString(4));
				vo.setVtitle(rs.getString(5));
				vo.setVartist(rs.getString(6));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		 return list;
	}
	/**
	 * Update : 조회수 업데이트
	 */
	public void getUpdateHits(String vid) {
		try {
			String sql = "update musicvideo set vhits=vhits+1 "
					+ " where vid=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vid);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public ArrayList<MusicVideoVO> getSameContent(MusicVideoVO vo){
		ArrayList<MusicVideoVO> list =new ArrayList<MusicVideoVO>();
		try {
			String sql = "select vid,vtitle, vartist, vfile1, vsfile1 from "
					+ " (select * from musicvideo where vartist = ?)"
					+ " where vid <> ?";
			getPreparedStatement(sql);
			ResultSet rs = pstmt.executeQuery();	
			pstmt.setString(1, vo.getVartist());
			pstmt.setString(2, vo.getVid());
			while(rs.next()) {
				MusicVideoVO vo2 = new MusicVideoVO();
				vo2.setVtitle(rs.getString(1));
				vo2.setVartist(rs.getString(2));
				vo2.setVfile1(rs.getString(3));
				vo2.setVsfile1(rs.getString(4));
				
				list.add(vo2);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
		
	}
}
