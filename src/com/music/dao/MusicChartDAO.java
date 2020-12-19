package com.music.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.music.vo.MusicChartVO;

public class MusicChartDAO extends DBConn{
	
	
	/**
	 * Insert : 음악 등록 - 앨범커버 있을 때 
	 */
	public boolean registerMusic(MusicChartVO vo) {
		boolean result = false;
		
		try {
			String sql = "INSERT INTO MUSICCHART VALUES('m_'||SEQU_COMMENTID.nextval,"
					+ "?,?,?,?,?,?,?,0,SYSDATE)";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getMusic_image());
			pstmt.setString(2, vo.getMusic_simage());
			pstmt.setString(3, vo.getSong());
			pstmt.setString(4, vo.getArtist());
			pstmt.setString(5, vo.getLyricist());
			pstmt.setString(6, vo.getComposer());
			pstmt.setString(7, vo.getLyrics());
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * Insert : 댓글 등록
	 */
	public boolean getCommentInsert(MusicChartVO vo, String id, String mid) {
		boolean result = false;
		
		try {
			String sql = "INSERT INTO MUSICCOMMENT VALUES('comm_'||SEQU_COMMENTID.nextval,"
					+ "?,SYSDATE,?,0,?)";
			
			getPreparedStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, vo.getComment_write());
			pstmt.setString(3, mid);
			
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
	public ArrayList<MusicChartVO> getComm_List(String mid){
		ArrayList<MusicChartVO> list = new ArrayList<MusicChartVO>();
		
		try {
			String sql = "SELECT COMM_ID, ID, COMM_DATE, COMMENT_WRITE, MID FROM MUSICCOMMENT WHERE MID=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, mid);
			
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				MusicChartVO vo = new MusicChartVO();
				vo.setComm_id(rs.getString(1));
				vo.setId(rs.getString(2));
				vo.setComm_date(rs.getString(3));
				vo.setComment_write(rs.getString(4));
				vo.setMid(rs.getString(5));
				
				list.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	/**
	 * Select : 상세 내용
	 */
	public MusicChartVO getContent(String mid) {
		MusicChartVO vo = new MusicChartVO();
		try {
			String sql = "select mid, music_image, song, artist, lyricist, composer, lyrics from musicchart where mid=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, mid);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setMid(rs.getString(1));
				vo.setMusic_image(rs.getString(2));
				vo.setSong(rs.getString(3));
				vo.setArtist(rs.getString(4));
				vo.setLyricist(rs.getString(5));
				vo.setComposer(rs.getString(6));
				vo.setLyrics(rs.getString(7));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
	/**
	 * List : 최신 TOP5차트
	 */
	public ArrayList<MusicChartVO> getList2(){
		ArrayList<MusicChartVO> list = new ArrayList<MusicChartVO>();
		
		try {
			String sql = "SELECT MID, ROWNUM RNO, MUSIC_IMAGE, SONG, ARTIST, MHITS, MDATE, MUSIC_SIMAGE\r\n" + 
					"FROM (SELECT * FROM MUSICCHART ORDER BY MDATE DESC)";
			
			getPreparedStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MusicChartVO vo = new MusicChartVO();
				vo.setMid(rs.getString(1));
				vo.setRno(rs.getInt(2));
				vo.setMusic_image(rs.getString(3));
				vo.setSong(rs.getString(4));
				vo.setArtist(rs.getString(5));
				vo.setMhits(rs.getInt(6));
				vo.setMdate(rs.getString(7));
				vo.setMusic_simage(rs.getString(8));
				
				list.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	/**
	 * List : 많이 들은 TOP5차트
	 */
	public ArrayList<MusicChartVO> getList1(){
		ArrayList<MusicChartVO> list = new ArrayList<MusicChartVO>();
		
		try {
			String sql = "SELECT MID, ROWNUM RNO, MUSIC_IMAGE, SONG, ARTIST, MHITS, MDATE\r\n" + 
					"FROM (SELECT * FROM MUSICCHART ORDER BY MHITS DESC)";
			
			getPreparedStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MusicChartVO vo = new MusicChartVO();
				vo.setMid(rs.getString(1));
				vo.setRno(rs.getInt(2));
				vo.setMusic_image(rs.getString(3));
				vo.setSong(rs.getString(4));
				vo.setArtist(rs.getString(5));
				vo.setMhits(rs.getInt(6));
				vo.setMdate(rs.getString(7));
				
				list.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
