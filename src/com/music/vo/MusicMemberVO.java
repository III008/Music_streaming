package com.music.vo;

public class MusicMemberVO {
	int rno;
	String bfile, name, id, pass, email1, email2, email_agr, cp1, cp2, cp3, sms_agr, mdate;
	String[] genre;
	String email, cp, genre_list;
	
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getBfile() {
		return bfile;
	}
	public void setBfile(String bfile) {
		this.bfile = bfile;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getEmail1() {
		return email1;
	}
	public void setEmail1(String email1) {
		this.email1 = email1;
	}
	public String getEmail2() {
		return email2;
	}
	public void setEmail2(String email2) {
		this.email2 = email2;
	}
	public String getEmail_agr() {
		return email_agr;
	}
	public void setEmail_agr(String email_agr) {
		this.email_agr = email_agr;
	}
	public String getCp1() {
		return cp1;
	}
	public void setCp1(String cp1) {
		this.cp1 = cp1;
	}
	public String getCp2() {
		return cp2;
	}
	public void setCp2(String cp2) {
		this.cp2 = cp2;
	}
	public String getCp3() {
		return cp3;
	}
	public void setCp3(String cp3) {
		this.cp3 = cp3;
	}
	public String getSms_agr() {
		return sms_agr;
	}
	public void setSms_agr(String sms_agr) {
		this.sms_agr = sms_agr;
	}
	public String[] getGenre() {
		return genre;
	}
	public String getMdate() {
		return mdate;
	}
	public void setMdate(String mdate) {
		this.mdate = mdate;
	}
	public void setGenre(String[] genre) {
		this.genre = genre;
	}
	public String getEmail() {
		String str ="";
		if(email1 != null) {
			str = getEmail1() + "@" + getEmail2();
		}else {
			str = email;
		}
		return str;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCp() {
		String str="";
		if(cp1 != null) {
			str = cp1 +"-"+cp2+"-"+cp3;
		}else {
			str = cp;
		}
		return str;
	}
	public void setCp(String cp) {
		this.cp = cp;
	}
	public String getGenre_list() {
		String str = "";
		if(genre != null) {
			str = String.join(",", genre);
		}else {
			str = genre_list;
		}
		return str;
	}
	public void setGenre_list(String genre_list) {
		this.genre_list = genre_list;
	}
	
}//class
