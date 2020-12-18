package com.music.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.music.vo.MusicVideoVO;

public class MusicVideoDAO extends DBConn {
	/**
	 * 전체 영상리스트 출력
	 */
	public ArrayList<MusicVideoVO> getList() {
		ArrayList<MusicVideoVO> list = new ArrayList<MusicVideoVO>();
		try {
			String sql = " select vid, video_image, vtitle, vartist, vhits from musicvideo ";
			getPreparedStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				MusicVideoVO vo = new MusicVideoVO();
				vo.setVid(rs.getString(1));
				vo.setVideo_image(rs.getString(2));
				vo.setVtitle(rs.getString(3));
				vo.setVartist(rs.getString(4));
				vo.setVhits(rs.getInt(5));

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
			String sql = "select vid, vcontent, vtitle, vdate, vartist_image,vartist, vintro, vhits from musicvideo where vid = ? ";
			getPreparedStatement(sql);
			pstmt.setString(1, vid);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				vo.setVid(rs.getString(1));
				vo.setVcontent(rs.getString(2));
				vo.setVtitle(rs.getString(3));
				vo.setVdate(rs.getString(4));
				vo.setVartist_image(rs.getString(5));
				vo.setVartist(rs.getString(6));
				vo.setVintro(rs.getString(7));
				vo.setVhits(rs.getInt(8));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	/**
	 * 조회수 업데이트
	 */
	public void getUpdateHits(String vid) {
		try {
			String sql = "update musicvideo set vhits = vhits+1 where vid = ?";
			getPreparedStatement(sql);
			pstmt.setString(1, vid);
			pstmt.executeQuery();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	/**
	 * 인기 뮤비 출력
	 */
	}
	public ArrayList<MusicVideoVO> getHotList(){
		 ArrayList<MusicVideoVO> list = new  ArrayList<MusicVideoVO>();
		 try {
			String sql = "select rownum rno, vid,  video_image, vtitle, vartist"
					+ " from (select * from musicvideo order by vhits desc) "
					+ "where rownum < 5";
			getPreparedStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				MusicVideoVO vo = new MusicVideoVO();
				vo.setRno(rs.getInt(1));
				vo.setVid(rs.getString(2));
				vo.setVideo_image(rs.getString(3));
				vo.setVtitle(rs.getString(4));
				vo.setVartist(rs.getString(5));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		 return list;
	}
}
