package com.music.vo;

public class MusicMemberVO {
	String prof,name,id,pass,email,email_agr,cp,sms_agr;
	String genre[];
	String genre_list;
	
	public String[] getGenre() {
		return genre;
	}

	public void setGenre(String[] genre) {
		this.genre = genre;
	}

	public String getGenre_list() {
		String str = "";
		if(genre != null) {
			//폼에서 넘어오는 경우
			str = String.join(",", genre);
		}else {
			//db에서 넘어오는 경우
			str = genre_list;
		}
		return str;
	}

	public void setGenre_list(String genre_list) {
		this.genre_list = genre_list;
	}

	public String getCp() {
		return cp;
	}

	public void setCp(String cp) {
		this.cp = cp;
	}

	public String getSms_agr() {
		return sms_agr;
	}

	public void setSms_agr(String sms_agr) {
		this.sms_agr = sms_agr;
	}

	public String getEmail_agr() {
		return email_agr;
	}

	public void setEmail_agr(String email_agr) {
		this.email_agr = email_agr;
	}


	public String getProf() {
		return prof;
	}

	public void setProf(String prof) {
		this.prof = prof;
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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	
	
}
