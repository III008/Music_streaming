package com.music.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.music.vo.MusicMagazineVO;


public class MusicMagazineDAO extends DBConn{

	/**
	 * Select : 전체 리스트 출력 
	 */
	public ArrayList<MusicMagazineVO> getList(){
		ArrayList<MusicMagazineVO> list = new ArrayList<MusicMagazineVO>();
		
		try {
			String sql = "select rownum rno, mid, mtitle, to_char(mdate,'yyyy.mm.dd'), mhits" + 
					" from (select * from musicmagazine order by mdate desc)";
			
			getPreparedStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				MusicMagazineVO vo = new MusicMagazineVO();
				vo.setRno(rs.getInt(1));
				vo.setMid(rs.getString(2));
				vo.setMtitle(rs.getString(3));
				vo.setMdate(rs.getString(4));
				vo.setMhits(rs.getInt(5));
				
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
	public MusicMagazineVO getContent(String mid) {
		MusicMagazineVO vo = new MusicMagazineVO();
		
		try {
			String sql = "select mid,mtitle, mcontent "
					+ ",to_char(mdate,'yyyy.mm.dd'),mhits, mfile, msfile " + 
					" from musicmagazine where mid=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, mid);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setMid(rs.getString(1));
				vo.setMtitle(rs.getString(2));
				vo.setMcontent(rs.getString(3));
				vo.setMdate(rs.getString(4));
				vo.setMhits(rs.getInt(5));
				vo.setMfile(rs.getString(6));
				vo.setMsfile(rs.getString(7));
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return vo;
	}
	
	/**
	 * Insert : 공지사항 글쓰기
	 */
	public boolean getInsert(MusicMagazineVO vo) {
		boolean result = false;
		
		try {
			String sql = "insert into musicmagazine "
				+ " values('n_'||sequ_musicmagazine.nextval,?,?,?,?,sysdate,0)";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getMtitle());
			pstmt.setString(2, vo.getMcontent());
			pstmt.setString(3, vo.getMfile());
			pstmt.setString(4, vo.getMsfile());
			
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
	public boolean getUpdate(MusicMagazineVO vo) {
		boolean result = false;
		
		try {
			String sql = "update musicmagazine set mtitle=?, mcontent=?, mfile=?, msfile=? "
					+ " where mid=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getMtitle());
			pstmt.setString(2, vo.getMcontent());
			pstmt.setString(3, vo.getMfile());
			pstmt.setString(4, vo.getMsfile());
			pstmt.setString(5, vo.getMid());
			
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
	public boolean getUpdateNofile(MusicMagazineVO vo) {
		boolean result = false;
		
		try {
			String sql ="update musicmagazine set mtitle=?, mcontent=? "
					+ " where mid=?";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getMtitle());
			pstmt.setString(2, vo.getMcontent());
			pstmt.setString(3, vo.getMid());
			
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
	public boolean getDelete(String mid) {
		boolean result = false;
		
		try {
			String sql = "delete from musicmagazine where mid=?";
			getPreparedStatement(sql);
			pstmt.setString(1, mid);
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * Update : 조회수 업데이트
	 */
	public void getUpdateHits(String mid) {
		try {
			String sql = "update musicmagazine set mhits=mhits+1 "
					+ " where mid=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, mid);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
