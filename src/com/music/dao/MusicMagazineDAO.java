package com.music.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.music.vo.MusicChartVO;
import com.music.vo.MusicMagazineVO;


public class MusicMagazineDAO extends DBConn{

	/**
	 * 	list count
	 */
	public int getListCount() {
		int result = 0;
		
		try {
			String sql = " select count(*) from musicmagazine";
			
			getPreparedStatement(sql);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) result = rs.getInt(1);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	/**
	 * Select : ��ü ����Ʈ ��� 
	 */
	public ArrayList<MusicMagazineVO> getList(int start, int end){
		ArrayList<MusicMagazineVO> list = new ArrayList<MusicMagazineVO>();
		
		try {
			String sql =  " select * from (select rownum rno, mid, mtitle, to_char(mdate,'yyyy.mm.dd'), mhits, msfile "
					+ 	" from (select * from musicmagazine order by mdate desc)) " 
					+ " where rno between ? and ?";
			
			getPreparedStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				MusicMagazineVO vo = new MusicMagazineVO();
				vo.setRno(rs.getInt(1));
				vo.setMid(rs.getString(2));
				vo.setMtitle(rs.getString(3));
				vo.setMdate(rs.getString(4));
				vo.setMhits(rs.getInt(5));
				vo.setMsfile(rs.getString(6));
				
				list.add(vo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	/**
	 * Select : ������ ���
	 */
	public MusicMagazineVO getContent(String mid) {
		MusicMagazineVO vo = new MusicMagazineVO();
		
		try {
			String sql = " select mid,mtitle,msummary, msubtitle,mcontent"
					+ ",to_char(mdate,'yyyy.mm.dd'),mhits, mfile, msfile " + 
					" from musicmagazine where mid=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, mid);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setMid(rs.getString(1));
				vo.setMtitle(rs.getString(2));
				vo.setMsummary(rs.getString(3));
				vo.setMsubtitle(rs.getString(4));
				vo.setMcontent(rs.getString(5));
				vo.setMdate(rs.getString(6));
				vo.setMhits(rs.getInt(7));
				vo.setMfile(rs.getString(8));
				vo.setMsfile(rs.getString(9));
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return vo;
	}
	
	/**
	 * Insert : �Ű��� �۾���
	 */
	public boolean getInsert(MusicMagazineVO vo) {
		boolean result = false;
		
		try {
			String sql = "insert into musicmagazine "
				+ " values('n_'||sequ_musicmagazine.nextval,?,?,?,?,?,?,sysdate,0)";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getMtitle());
			pstmt.setString(2, vo.getMsummary());
			pstmt.setString(3, vo.getMsubtitle());
			pstmt.setString(4, vo.getMcontent());
			pstmt.setString(5, vo.getMfile());
			pstmt.setString(6, vo.getMsfile());
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;			
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * Update : ���� ����
	 */
	public boolean getUpdate(MusicMagazineVO vo) {
		boolean result = false;
		
		try {
			String sql = "update musicmagazine set mtitle=?, msummary=?,msubtitle=?, mcontent=?, mfile=?, msfile=? "
					+ " where mid=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getMtitle());
			pstmt.setString(2, vo.getMsummary());
			pstmt.setString(3, vo.getMsubtitle());
			pstmt.setString(4, vo.getMcontent());
			pstmt.setString(5, vo.getMfile());
			pstmt.setString(6, vo.getMsfile());
			pstmt.setString(7, vo.getMid());
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * Update : ���� ������Ʈ - ���ο� ������ ������ ���
	 */
	public boolean getUpdateNofile(MusicMagazineVO vo) {
		boolean result = false;
		
		try {
			String sql ="update musicmagazine set mtitle=?, msummary=?, msubtitle=?, mcontent=? "
					+ " where mid=?";
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getMtitle());
			pstmt.setString(2, vo.getMsummary());
			pstmt.setString(3, vo.getMsubtitle());
			pstmt.setString(4, vo.getMcontent());
			pstmt.setString(5, vo.getMid());
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}		
		return result;
	}
	
	/**
	 * Delete : ����
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
	 * Delete : üũ ����
	 */
	public void getDeleteChk(String mid) {
		
		try {
			String sql = " delete from musicmagazine where mid=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, mid);
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	
	/**
	 * Update : ��ȸ�� ������Ʈ
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
	
	/**
	 *	����� �Ű��������� - ���� ��� Ÿ��Ʋ
	 */
	public ArrayList<MusicMagazineVO> getList1(){
		ArrayList<MusicMagazineVO> list = new ArrayList<MusicMagazineVO>();
		
		try {
			String sql =   " select mid,mtitle,msummary,mfile,msfile "
					+ " from musicmagazine "
					+ " where mhits = (select max(mhits) from musicmagazine)";
			
			getPreparedStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MusicMagazineVO vo = new MusicMagazineVO();
				vo.setMid(rs.getString(1));
				vo.setMtitle(rs.getString(2));
				vo.setMsummary(rs.getString(3));
				vo.setMfile(rs.getString(4));
				vo.setMsfile(rs.getString(5));
				
				list.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	/**
	 * �ε��� ������ �Ű��� : ��ȸ�� ���� 4��
	 */
	public ArrayList<MusicMagazineVO> getList2(){
		ArrayList<MusicMagazineVO> list = new ArrayList<MusicMagazineVO>();
		
		try {
			String sql =   " select rno,mid,mtitle,msummary,mfile,msfile,to_char(sysdate,'yyyy-mm-dd')mdate"
					+ " from (select rownum rno,mid,mtitle,msummary,mfile,msfile,to_char(sysdate,'yyyy-mm-dd')mdate"
									+ " from (select mid,mtitle,msummary,mfile,msfile,to_char(sysdate,'yyyy-mm-dd')mdate from musicmagazine order by mhits desc))" 
					+ " where rno<=4";
			
			getPreparedStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MusicMagazineVO vo = new MusicMagazineVO();
				vo.setRno(rs.getInt(1));
				vo.setMid(rs.getString(2));
				vo.setMtitle(rs.getString(3));
				vo.setMsummary(rs.getString(4));
				vo.setMfile(rs.getString(5));
				vo.setMsfile(rs.getString(6));
				vo.setMdate(rs.getString(7));
				list.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
