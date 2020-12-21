package com.music.vo;

public class MusicChartVO {
	String mid, music_image, music_simage, song, artist, lyricist, composer, lyrics, mdate;
	int rno, mhits;
	String comm_id, id, comm_date, comment_write;
	
	public String getMusic_simage() {
		return music_simage;
	}
	public void setMusic_simage(String music_simage) {
		this.music_simage = music_simage;
	}
	public String getMid() {
		return mid;
	}
	public void setMid(String mid) {
		this.mid = mid;
	}
	public String getMusic_image() {
		return music_image;
	}
	public void setMusic_image(String music_image) {
		this.music_image = music_image;
	}
	public String getSong() {
		return song;
	}
	public void setSong(String song) {
		this.song = song;
	}
	public String getArtist() {
		return artist;
	}
	public void setArtist(String artist) {
		this.artist = artist;
	}
	public String getLyricist() {
		return lyricist;
	}
	public void setLyricist(String lyricist) {
		this.lyricist = lyricist;
	}
	public String getComposer() {
		return composer;
	}
	public void setComposer(String composer) {
		this.composer = composer;
	}
	public String getLyrics() {
		return lyrics;
	}
	public void setLyrics(String lyrics) {
		this.lyrics = lyrics;
	}
	public String getMdate() {
		return mdate;
	}
	public void setMdate(String mdate) {
		this.mdate = mdate;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public int getMhits() {
		return mhits;
	}
	public void setMhits(int mhits) {
		this.mhits = mhits;
	}
	public String getComm_id() {
		return comm_id;
	}
	public void setComm_id(String comm_id) {
		this.comm_id = comm_id;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getComm_date() {
		return comm_date;
	}
	public void setComm_date(String comm_date) {
		this.comm_date = comm_date;
	}
	public String getComment_write() {
		return comment_write;
	}
	public void setComment_write(String comment_write) {
		this.comment_write = comment_write;
	}
	
}
