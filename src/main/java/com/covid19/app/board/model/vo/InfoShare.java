package com.covid19.app.board.model.vo;

import java.util.Date;

public class InfoShare {

	private String member_id; //회원 아이디
	private String member_nick; //회원 닉네임
	private String member_rank; //회원 등급
	private int info_idx; //게시글 번호
	private String info_title; //게시글 제목
	private String info_content; //게시글 내용
	private Date info_date; //게시글 작성일자
	private int info_hits; //게시글 조회 수
	private int recnt; //게시글 댓글 수
	private String info_img;
	private String info_thumbimg;
	@Override
	public String toString() {
		return "InfoShare [member_id=" + member_id + ", member_nick=" + member_nick + ", member_rank=" + member_rank
				+ ", info_idx=" + info_idx + ", info_title=" + info_title + ", info_content=" + info_content
				+ ", info_date=" + info_date + ", info_hits=" + info_hits + ", recnt=" + recnt + ", info_img="
				+ info_img + ", info_thumbimg=" + info_thumbimg + "]";
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_nick() {
		return member_nick;
	}
	public void setMember_nick(String member_nick) {
		this.member_nick = member_nick;
	}
	public String getMember_rank() {
		return member_rank;
	}
	public void setMember_rank(String member_rank) {
		this.member_rank = member_rank;
	}
	public int getInfo_idx() {
		return info_idx;
	}
	public void setInfo_idx(int info_idx) {
		this.info_idx = info_idx;
	}
	public String getInfo_title() {
		return info_title;
	}
	public void setInfo_title(String info_title) {
		this.info_title = info_title;
	}
	public String getInfo_content() {
		return info_content;
	}
	public void setInfo_content(String info_content) {
		this.info_content = info_content;
	}
	public Date getInfo_date() {
		return info_date;
	}
	public void setInfo_date(Date info_date) {
		this.info_date = info_date;
	}
	public int getInfo_hits() {
		return info_hits;
	}
	public void setInfo_hits(int info_hits) {
		this.info_hits = info_hits;
	}
	public int getRecnt() {
		return recnt;
	}
	public void setRecnt(int recnt) {
		this.recnt = recnt;
	}
	public String getInfo_img() {
		return info_img;
	}
	public void setInfo_img(String info_img) {
		this.info_img = info_img;
	}
	public String getInfo_thumbimg() {
		return info_thumbimg;
	}
	public void setInfo_thumbimg(String info_thumbimg) {
		this.info_thumbimg = info_thumbimg;
	}
	
	

	
	
}
