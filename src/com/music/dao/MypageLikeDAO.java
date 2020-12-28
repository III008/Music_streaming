package com.music.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.music.vo.MypageLikeVO;

public class MypageLikeDAO extends DBConn{
	
	/**
	 * ���ƿ� �ݿ� Ȯ��
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
	 * Select - ���� ���ƿ� ��ü �������� (���̵��)
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
	 * Delete - ���� ���ƿ� ��ư ������� �� 
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
	 * Insert - ���� ���ƿ� ��ư ������ �� 
	 */
	public boolean insertMusicLike(String mid, String id) {
		boolean result = false;
		
		try {
			String sql = "INSERT INTO MYPAGELIKE(LID, ID, MID) VALUES('l_'||SEQU_MYPAGELIKE.nextval,?,?)";
			
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
