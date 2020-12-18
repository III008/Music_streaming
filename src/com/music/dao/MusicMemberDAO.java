package com.music.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.music.vo.MusicMemberVO;

public class MusicMemberDAO extends DBConn {
	
	/**
	 * insert 회원가입
	 */
	public boolean getInsert(MusicMemberVO vo) {
		boolean result = false;
		
		try {
			String sql = " insert into musicmember values(?,?,?,?,?,?,?,?)";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getName());
			pstmt.setString(2, vo.getId());
			pstmt.setString(3, vo.getPass());
			pstmt.setString(4, vo.getEmail());
			pstmt.setString(5, vo.getEmail_agr());
			pstmt.setString(6, vo.getCp());
			pstmt.setString(7, vo.getSms_agr());
			pstmt.setString(8, vo.getGenre_list());

			
			int val = pstmt.executeUpdate();
			
			if(val != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	/**
	 * Update : 회원정보 수정 - 새로운 파일이 있을 때 
	 */
	public boolean getUpdate(MusicMemberVO vo, String id) {
		boolean result = false;
		
		try {
			String sql = "UPDATE MUSICMEMBER SET NAME=?, PASS=?, EMAIL=?, EMAIL_AGR=?, CP=?, SMS_AGR=?, GENRE_LIST=?, FILE=?, FILER=? WHERE ID=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getName());
			pstmt.setString(2, vo.getPass());
			pstmt.setString(3, vo.getEmail());
			pstmt.setString(4, vo.getEmail_agr());
			pstmt.setString(5, vo.getCp());
			pstmt.setString(6, vo.getSms_agr());
			pstmt.setString(7, vo.getGenre_list());
			pstmt.setString(8, vo.getFile());
			pstmt.setString(9, vo.getFiler());
			pstmt.setString(10, id);
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * Update : 회원정보 수정 - 새로운 파일이 없을 때 
	 */
	public boolean getUpdateNofile(MusicMemberVO vo, String id) {
		boolean result = false;
		
		try {
			String sql = "UPDATE MUSICMEMBER SET NAME=?, PASS=?, EMAIL=?, EMAIL_AGR=?, CP=?, SMS_AGR=?, GENRE_LIST=? WHERE ID=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getName());
			pstmt.setString(2, vo.getPass());
			pstmt.setString(3, vo.getEmail());
			pstmt.setString(4, vo.getEmail_agr());
			pstmt.setString(5, vo.getCp());
			pstmt.setString(6, vo.getSms_agr());
			pstmt.setString(7, vo.getGenre_list());
			pstmt.setString(8, id);
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * Select : 특정 멤버 정보 출력
	 */
	public MusicMemberVO getInfo(String id){
		MusicMemberVO vo = new MusicMemberVO();
		
		try {
			String sql = "SELECT NAME, ID, EMAIL, CP, GENRE_LIST FROM MUSICMEMBER WHERE ID=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, id);
			
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				vo.setName(rs.getString(1));
				vo.setId(rs.getString(2));
				vo.setEmail(rs.getString(3));
				vo.setCp(rs.getString(4));
				vo.setGenre_list(rs.getString(5));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
	/**
	 * login	: 로그인처리
	 */
	public int getLogin(MusicMemberVO vo) {
		int result = 0;
		
		try {
			String sql = "SELECT COUNT(*) FROM MUSICMEMBER "
					+ " WHERE ID=? AND PASS=?";
			
			getPreparedStatement(sql);
			
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPass());
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) result = rs.getInt(1);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	
	
	
}
