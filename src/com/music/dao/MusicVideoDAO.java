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
	 * 뮤비 전체리스트 출력
	 */
	public ArrayList<MusicVideoVO> getList() {
		ArrayList<MusicVideoVO> list = new ArrayList<MusicVideoVO>();
		try {
			String sql = "select rownum rno, vid, vtitle, vartist, vcontent, vintro, vfile1, vsfile1, vfile2, vsfile2, to_char(vdate,'yyyy/mm/dd') vdate, vhits  from musicvideo";
			getPreparedStatement(sql);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
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
	 * 뮤비 전체리스트 출력
	 */
	public ArrayList<MusicVideoVO> getList(int start, int end) {
		ArrayList<MusicVideoVO> list = new ArrayList<MusicVideoVO>();
		try {
			String sql = "  select * from (select rownum rno, vid, vtitle, vartist, vcontent, vintro, vfile1, vsfile1, vfile2, vsfile2, to_char(vdate,'yyyy/mm/dd') vdate, vhits  from musicvideo) where rno between ? and ?";;
			getPreparedStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			ResultSet rs = pstmt.executeQuery();
			
			while (rs.next()) {
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
	 * 뮤비 상세 정보 출력
	 */
	public MusicVideoVO getContent(String vid) {
		MusicVideoVO vo = new MusicVideoVO();
		try {
			String sql = "select vtitle, vartist, to_char(vdate,'yyyy/mm/dd') vdate, vcontent, vintro, vfile1, vsfile1, vfile2, vsfile2, vhits  from musicvideo where vid =?";
			getPreparedStatement(sql);
			pstmt.setString(1, vid);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				vo.setVtitle(rs.getString(1));
				vo.setVartist(rs.getString(2));
				vo.setVdate(rs.getString(3));
				vo.setVcontent(rs.getString(4));
				vo.setVintro(rs.getString(5));
				vo.setVfile1(rs.getString(6));
				vo.setVsfile1(rs.getString(7));
				vo.setVfile2(rs.getString(8));
				vo.setVsfile2(rs.getString(9));
				vo.setVhits(rs.getInt(10));
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

			if (val != 0) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	/**
	 * 뮤비사진&가수사진 둘다 변경할 때 
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
			if (val != 0) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	/**
	 * 뮤비 사진만 변경할 떄
	 */

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
			if (val != 0) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	/**
	 *  가수사진만 변경 할 때
	 */

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
			if (val != 0) {
				result = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	/**
	 * 뮤비사진&가수사진 모두 변경하지 않을 때 
	 */
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
			if (val != 0) {
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

	public ArrayList<MusicVideoVO> getHotList() {
		ArrayList<MusicVideoVO> list = new ArrayList<MusicVideoVO>();
		try {
			String sql = "select rownum rno, vid, vfile1, vsfile1, vtitle, vartist"
					+ " from (select * from musicvideo order by vhits desc) " + "where rownum < 5";
			getPreparedStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
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
			String sql = "update musicvideo set vhits=vhits+1 " + " where vid=?";

			getPreparedStatement(sql);
			pstmt.setString(1, vid);
			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * 같은 아티스트 뮤비 출력
	 */
	public ArrayList<MusicVideoVO> getSameContent(String vartist, String vid) {
		ArrayList<MusicVideoVO> list = new ArrayList<MusicVideoVO>();

		try {
			String sql = "select vid, vtitle, vartist, vfile1, vsfile1 from "
					+ " (select * from musicvideo where vartist = ?)" + " where vid <> ?";
			getPreparedStatement(sql);
			pstmt.setString(1, vartist);
			pstmt.setString(2, vid);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				MusicVideoVO vo2 = new MusicVideoVO();
				vo2.setVid(rs.getString(1));
				vo2.setVtitle(rs.getString(2));
				vo2.setVartist(rs.getString(3));
				vo2.setVfile1(rs.getString(4));
				vo2.setVsfile1(rs.getString(5));

				list.add(vo2);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;

	}
	/**
	 * 같은 아티스트 뮤비 출력
	 */
	public ArrayList<MusicVideoVO> getSameContent(String vartist, String vid,int start, int end) {
		ArrayList<MusicVideoVO> list = new ArrayList<MusicVideoVO>();
		
		try {
			String sql = "select rownum rno, vid, vtitle, vartist, vfile1, vsfile1 from   (select * from musicvideo where vartist = ?) where vid <>  ? and rownum between ? and ? ";
			getPreparedStatement(sql);
			pstmt.setString(1, vartist);
			pstmt.setString(2, vid);
			pstmt.setInt(3, start);
			pstmt.setInt(4, end);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				MusicVideoVO vo2 = new MusicVideoVO();
				vo2.setRno(rs.getInt(1));
				vo2.setVid(rs.getString(2));
				vo2.setVtitle(rs.getString(3));
				vo2.setVartist(rs.getString(4));
				vo2.setVfile1(rs.getString(5));
				vo2.setVsfile1(rs.getString(6));
				
				list.add(vo2);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
		
	}
	/**
	 * 전체 리스트 카운트
	 */
	public int getListCount() {
		int result = 0;
		
		try {
			String sql = " select count(*) from musicvideo";
			
			getPreparedStatement(sql);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) result = rs.getInt(1);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	public int getHotListCount(String vartist, String vid) {
		int result = 0;
		
		try {
			String sql = " select count(*) from (select vid, vtitle, vartist, vfile1, vsfile1 from  "
					+ " (select * from musicvideo where vartist = ?)) where vid <> ?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vartist);
			pstmt.setString(2, vid);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) result = rs.getInt(1);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
}
