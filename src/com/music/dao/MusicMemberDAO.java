package com.music.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.music.vo.MusicMemberVO;
import com.music.vo.SessionVO;

public class MusicMemberDAO extends DBConn {
	/**
	 * insert 회원가입
	 */
	public boolean getInsert(MusicMemberVO vo) {
		boolean result = false;

		try {
			String sql = " INSERT INTO MUSICMEMBER VALUES(?,?,?,?,?,?,?,?,?,?,?,sysdate,?)";

			getPreparedStatement(sql);
			pstmt.setString(1, vo.getBfile());
			pstmt.setString(2, vo.getBsfile());
			pstmt.setString(3, vo.getName());
			pstmt.setString(4, vo.getNickname());
			pstmt.setString(5, vo.getId());
			pstmt.setString(6, vo.getPass());
			pstmt.setString(7, vo.getEmail());
			pstmt.setString(8, vo.getEmail_agr());
			pstmt.setString(9, vo.getCp()); 
			pstmt.setString(10, vo.getSms_agr());
			pstmt.setString(11, vo.getGenre_list());
			pstmt.setInt(12, vo.getLogin_state());

			int val = pstmt.executeUpdate();
			
			if(val != 0) result = true;

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	/**
	 * 회원가입 - 아이디 중복체크
	 */
	public int getIdCheck(String id) {
		int result = 0;

		try {
			String sql = " SELECT COUNT(*) FROM MUSICMEMBER WHERE ID=?";

			getPreparedStatement(sql);
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next())
				result = rs.getInt(1);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}
	
	
	/**
	 * List : 회원 전체 리스트
	 */
	public ArrayList<MusicMemberVO> getList() {
		ArrayList<MusicMemberVO> list = new ArrayList<MusicMemberVO>();

		try {
			String sql = " SELECT ROWNUM RNO, ID, NAME, NICKNAME, CP, TO_CHAR(MDATE,'yyyy.mm.dd') MDATE"
					+ " FROM (SELECT * FROM MUSICMEMBER ORDER BY MDATE DESC)";

			getPreparedStatement(sql);
			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				MusicMemberVO vo = new MusicMemberVO();
				vo.setRno(rs.getInt(1));
				vo.setId(rs.getString(2));
				vo.setName(rs.getString(3));
				vo.setNickname(rs.getString(4));
				vo.setCp(rs.getString(5));
				vo.setMdate(rs.getString(6));

				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	
	
	/**
	 * List : 회원 전체 리스트
	 */
	public ArrayList<MusicMemberVO> getList(int start, int end) {
		ArrayList<MusicMemberVO> list = new ArrayList<MusicMemberVO>();

		try {
			String sql = " SELECT * FROM (SELECT ROWNUM RNO, ID, NAME, NICKNAME, CP, TO_CHAR(MDATE,'yyyy.mm.dd') MDATE"
					+ " FROM (SELECT * FROM MUSICMEMBER ORDER BY MDATE DESC))"
					+ " WHERE RNO BETWEEN ? AND ?";
			
			getPreparedStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);

			ResultSet rs = pstmt.executeQuery();

			while (rs.next()) {
				MusicMemberVO vo = new MusicMemberVO();
				vo.setRno(rs.getInt(1));
				vo.setId(rs.getString(2));
				vo.setName(rs.getString(3));
				vo.setNickname(rs.getString(4));
				vo.setCp(rs.getString(5));
				vo.setMdate(rs.getString(6));

				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

	
	/**
	 * 검색 기능
	 */
	public ArrayList<MusicMemberVO> getSearchList(String sname, String svalue, int start, int end){
		ArrayList<MusicMemberVO> list = new ArrayList<MusicMemberVO>();
		
		try {
			String str="";
			if(sname.equals("total")) {
				str="";
			}else {
				str = " where " + sname +"='"+svalue+"'";
			}
			
			String sql = " select * from (select rownum rno, id, name, nickname, cp, to_char(mdate,'yyyy.mm.dd') mdate " + 
					" from (select * from musicmember order by mdate desc) " 
					+ str + ") where rno between "+ start + " and " + end ;
			System.out.println("sql-->" + sql);			
			getStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				MusicMemberVO vo = new MusicMemberVO();
				vo.setRno(rs.getInt(1));
				vo.setId(rs.getString(2));
				vo.setName(rs.getString(3));
				vo.setNickname(rs.getString(4));
				vo.setCp(rs.getString(5));
				vo.setMdate(rs.getString(6));
				
				list.add(vo);
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
			String sql = " SELECT COUNT(*) FROM MUSICMEMBER";

			getPreparedStatement(sql);

			ResultSet rs = pstmt.executeQuery();
			if (rs.next())
				result = rs.getInt(1);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}
	
	
	/**
	 * 검색기능 시 리스트 카운트
	 */
	public int getListCount(String sname, String svalue) {
		int result = 0;
		
		try {
			String str="";
			if(!sname.equals("total")) {
				str = " where " + sname + "='" + svalue + "'";
			}
			
			String sql = "SELECT COUNT(*) FROM MUSICMEMBER " + str;
			
			getStatement();
			ResultSet rs = stmt.executeQuery(sql);
			if(rs.next()) result = rs.getInt(1);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	
	/**
	 * Content : 회원 상세 정보
	 */
	public MusicMemberVO getContent(String id) {
		MusicMemberVO vo = new MusicMemberVO();

		try {
			String sql = " SELECT ID, BFILE, BSFILE, NAME, NICKNAME, CP, TO_CHAR(MDATE,'yyyy.mm.dd') MDATE, EMAIL, GENRE_LIST"
					+ " FROM MUSICMEMBER WHERE ID=?";

			getPreparedStatement(sql);
			pstmt.setString(1, id);

			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				vo.setId(rs.getString(1));
				vo.setBfile(rs.getString(2));
				vo.setBsfile(rs.getString(3));
				vo.setName(rs.getString(4));
				vo.setNickname(rs.getString(5));
				vo.setCp(rs.getString(6));
				vo.setMdate(rs.getString(7));
				vo.setEmail(rs.getString(8));
				vo.setGenre_list(rs.getString(9));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return vo;
	}
	
	
	/**
	 * Update : 회원정보 수정 - 새로운 파일이 있을 때
	 */
	public boolean getUpdate(MusicMemberVO vo, String id) {
		boolean result = false;

		try {
			String sql = "UPDATE MUSICMEMBER SET NAME=?, PASS=?, EMAIL=?, EMAIL_AGR=?, CP=?, SMS_AGR=?, GENRE_LIST=?, BFILE=?, BSFILE=?, NICKNAME=? WHERE ID=?";

			getPreparedStatement(sql);
			pstmt.setString(1, vo.getName());
			pstmt.setString(2, vo.getPass());
			pstmt.setString(3, vo.getEmail());
			pstmt.setString(4, vo.getEmail_agr());
			pstmt.setString(5, vo.getCp());
			pstmt.setString(6, vo.getSms_agr());
			pstmt.setString(7, vo.getGenre_list());
			pstmt.setString(8, vo.getBfile());
			pstmt.setString(9, vo.getBsfile());
			pstmt.setString(10, vo.getNickname());
			pstmt.setString(11, id);

			int val = pstmt.executeUpdate();
			if (val != 0)
				result = true;

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
			String sql = "UPDATE MUSICMEMBER SET NAME=?, PASS=?, EMAIL=?, EMAIL_AGR=?, CP=?, SMS_AGR=?, GENRE_LIST=?, NICKNAME=? WHERE ID=?";

			getPreparedStatement(sql);
			pstmt.setString(1, vo.getName());
			pstmt.setString(2, vo.getPass());
			pstmt.setString(3, vo.getEmail());
			pstmt.setString(4, vo.getEmail_agr());
			pstmt.setString(5, vo.getCp());
			pstmt.setString(6, vo.getSms_agr());
			pstmt.setString(7, vo.getGenre_list());
			pstmt.setString(8, vo.getNickname());
			pstmt.setString(9, id);

			int val = pstmt.executeUpdate();
			if (val != 0)
				result = true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	
	/**
	 * Select : 특정 멤버 정보 출력
	 */
	public MusicMemberVO getInfo(String id) {
		MusicMemberVO vo = new MusicMemberVO();

		try {
			String sql = "SELECT NAME, ID, EMAIL, CP, GENRE_LIST, NICKNAME, BSFILE, BFILE, EMAIL_AGR, SMS_AGR FROM MUSICMEMBER WHERE ID=?";

			getPreparedStatement(sql);
			pstmt.setString(1, id);

			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				vo.setName(rs.getString(1));
				vo.setId(rs.getString(2));
				vo.setEmail(rs.getString(3));
				vo.setCp(rs.getString(4));
				vo.setGenre_list(rs.getString(5));
				vo.setNickname(rs.getString(6));
				vo.setBsfile(rs.getString(7));
				vo.setBfile(rs.getString(8));
				vo.setEmail_agr(rs.getString(9));
				vo.setSms_agr(rs.getString(10));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return vo;
	}

	
	/**
	 * login : 로그인처리
	 */
	public SessionVO getLogin(MusicMemberVO vo) {
		SessionVO svo = new SessionVO();

		try {
			String sql = "SELECT count(*), name FROM MUSICMEMBER " + "  WHERE ID=? AND PASS=? group by name";

			getPreparedStatement(sql);

			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPass());

			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				svo.setResult(rs.getInt(1));
				svo.setName(rs.getString(2));
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return svo;
	}

	
	/**
	 * login_state : 로그인 상태
	 */
	/* public boolean login_state(MusicMemberVO vo, int login_state) { */
		public boolean login_state(int login_state, MusicMemberVO vo) {
		boolean result = false;

		try {
			String sql = " update musicmember set login_state=? where id=?";
			getPreparedStatement(sql);
			pstmt.setInt(1, login_state);
			pstmt.setString(2,vo.getId());
			int count = pstmt.executeUpdate();
			if (count != 0)
				result = true;

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	
	/**
	 * 아이디 가져오기
	 */
	public String getId(String name) {
		String result = "";

		try {
			String sql = "SELECT ID FROM MUSICMEMBER WHERE NAME=?";

			getPreparedStatement(sql);
			pstmt.setString(1, name);

			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
				result = rs.getString(1);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	
	/**
	 * 닉네임 가져오기
	 */
	public String getNickname(String id) {
		String result = "";

		try {
			String sql = "SELECT NICKNAME FROM MUSICMEMBER WHERE ID=?";

			getPreparedStatement(sql);
			pstmt.setString(1, id);

			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
				result = rs.getString(1);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}

	
	/**
	 * 닉네임 중복체크
	 */
	public int getNicknameCheck(String nickname) {
		int result = 0;

		try {
			String sql = "select count(*) from musicmember where nickname=?";

			getPreparedStatement(sql);
			pstmt.setString(1, nickname);

			ResultSet rs = pstmt.executeQuery();
			if (rs.next())
				result = rs.getInt(1);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}
	
	
	public MusicMemberVO FindID(String email) {
		MusicMemberVO vo = new MusicMemberVO();
		try {
			String sql = "select id , to_char(mdate,'yy/mm/dd') mdate from musicmember where email = ?";
			getPreparedStatement(sql);
			pstmt.setString(1, email);
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				vo.setId(rs.getString(1));
				vo.setMdate(rs.getString(2));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}
	
	
	public MusicMemberVO FindPass(String id, String email) {
		MusicMemberVO vo = new MusicMemberVO();
		try {
			String sql = "select substr(pass,1,2) || lpad('*',length(pass)-3,'*') || substr(pass, length(pass),1) as pass from musicmember where id = ? and email = ? ";
			getPreparedStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, email);
			
			ResultSet rs = pstmt.executeQuery();
			if (rs.next()) {
				vo.setPass(rs.getString(1));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return vo;
	}

}
// CLASS
