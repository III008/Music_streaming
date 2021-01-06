package com.music.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.music.vo.MypageLikeVO;

public class MypageLikeDAO extends DBConn{
	
	/**
	 * rownum -> mid 구하기
	 */
	public String getMid(String id, int rownum_int) {
		String result = "";

		try {
			String sql = "SELECT MID\r\n" + 
					"FROM (SELECT LID, ROWNUM RNO, ID, MID\r\n" + 
					"FROM (SELECT * FROM MYPAGELIKE ORDER BY LDATE DESC)\r\n" + 
					"WHERE ID=?)\r\n" + 
					"WHERE RNO=?";

			getPreparedStatement(sql);
			pstmt.setString(1, id);
			pstmt.setInt(2, rownum_int);

			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
				result = rs.getString(1);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}
	
	/**
	 * 전체 row count
	 * @return
	 */
	public int getListCount(String id) {
		int result = 0;
		
		try {
			String sql = "SELECT COUNT(*) FROM (SELECT ROWNUM RNO, MUSICCHART.SONG, MUSICCHART.MUSIC_SIMAGE, MUSICCHART.ARTIST, MUSICCHART.MID, MYPAGELIKE.ID\r\n" + 
					"FROM MUSICCHART\r\n" + 
					"JOIN MYPAGELIKE ON MUSICCHART.MID = MYPAGELIKE.MID\r\n" + 
					"WHERE MYPAGELIKE.ID=?)";
			
			getPreparedStatement(sql);
			pstmt.setString(1, id);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) result = rs.getInt(1);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * List : 좋아요 리스트
	 */
	public ArrayList<MypageLikeVO> getList(int start, int end, String id){
		ArrayList<MypageLikeVO> list = new ArrayList<MypageLikeVO>();
		
		try {
			String sql = "SELECT RNO, SONG, MUSIC_SIMAGE, ARTIST, MID, ID\r\n" + 
					"FROM (SELECT ROWNUM RNO, MUSICCHART.SONG, MUSICCHART.MUSIC_SIMAGE, MUSICCHART.ARTIST, MYPAGELIKE.MID, MYPAGELIKE.ID, MYPAGELIKE.LDATE\r\n" + 
					"FROM MUSICCHART\r\n" + 
					"JOIN MYPAGELIKE ON MUSICCHART.MID = MYPAGELIKE.MID\r\n" + 
					"WHERE MYPAGELIKE.ID=?\r\n" + 
					"ORDER BY MYPAGELIKE.LDATE DESC)\r\n" + 
					"WHERE RNO BETWEEN ? AND ?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, id);
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MypageLikeVO vo = new MypageLikeVO();
				vo.setRno(rs.getInt(1));
				vo.setSong(rs.getString(2));
				vo.setMusic_simage(rs.getString(3));
				vo.setArtist(rs.getString(4));
				vo.setMid(rs.getString(5));
				
				list.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	/**
	 * 좋아요 반영 확인
	 */
	public int likeResult(String mid, String id) {
		int result = 0;
		
		try {
			String sql ="SELECT COUNT(*) FROM MYPAGELIKE WHERE MID=? AND ID=?";
			getPreparedStatement(sql);
			pstmt.setString(1, mid);
			pstmt.setString(2, id);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) result = rs.getInt(1);			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * Select - 음악 좋아요 전체 가져오기 (아이디로)
	 */
	public ArrayList<MypageLikeVO> getMusicLike(String id){
		ArrayList<MypageLikeVO> list = new ArrayList<MypageLikeVO>();
		
		try {
			String sql = "SELECT LID, ID, MID FROM MYPAGELIKE WHERE ID=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, id);
			
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				MypageLikeVO vo = new MypageLikeVO();
				
				vo.setLid(rs.getString(1));
				vo.setId(rs.getString(2));
				vo.setMid(rs.getString(3));
				
				list.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	/**
	 * Delete - 음악 좋아요 버튼 취소했을 때 
	 */
	public boolean deleteMusicLike(String mid, String id) {
		boolean result = false;
		
		try {
			String sql = "DELETE FROM MYPAGELIKE WHERE ID=? AND MID=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, mid);
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * Insert - 음악 좋아요 버튼 눌렀을 때 
	 */
	public boolean insertMusicLike(String mid, String id) {
		boolean result = false;
		
		try {
			String sql = "INSERT INTO MYPAGELIKE(LID, ID, MID, LDATE) VALUES('l_'||SEQU_MYPAGELIKE.nextval,?,?,SYSDATE)";
			
			getPreparedStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, mid);
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
}
