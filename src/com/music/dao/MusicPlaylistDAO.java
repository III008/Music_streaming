package com.music.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.music.vo.MusicChartVO;
import com.music.vo.MusicPlaylistVO;

public class MusicPlaylistDAO extends DBConn {
	
	/**
	 * Insert : 음악 등록
	 */
	public boolean insertMusiclist(String id, String mid) {
		boolean result = false;
		
		try {
			String sql = "INSERT INTO PLAYLIST VALUES (\r\n" + 
					"'pl_'||SEQU_PLAYLISTPID.nextval,\r\n" + 
					"?, ?,\r\n" + 
					"(SELECT SONG FROM MUSICCHART WHERE MID=?),\r\n" + 
					"(SELECT ARTIST FROM MUSICCHART WHERE MID=?),\r\n" + 
					"(SELECT MUSIC_SFILE FROM MUSICCHART WHERE MID=?),\r\n" + 
					"SYSDATE\r\n" + 
					")";
			
			getPreparedStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, mid);
			pstmt.setString(3, mid);
			pstmt.setString(4, mid);
			pstmt.setString(5, mid);
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * Select : 상세 내용
	 */
	public ArrayList<MusicPlaylistVO> getMusiclist(String id) {
		ArrayList<MusicPlaylistVO> list = new ArrayList<MusicPlaylistVO>();
		try {
			String sql = "SELECT PID, ID, MID, SONG, ARTIST, MUSIC_SFILE, PDATE\r\n" + 
					"FROM (SELECT * FROM PLAYLIST ORDER BY PDATE DESC)\r\n" + 
					"WHERE ID=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, id);
			
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				MusicPlaylistVO vo = new MusicPlaylistVO();
				
				vo.setPid(rs.getString(1));
				vo.setId(rs.getString(2));
				vo.setMid(rs.getString(3));
				vo.setSong(rs.getString(4));
				vo.setArtist(rs.getString(5));
				vo.setMusic_sfile(rs.getString(6));
				vo.setPdate(rs.getString(7));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
