package com.covid19.app.admin.login.vo;

import java.sql.Date;

public class AdMemberList {

	private int memberNo;
    private String memberId;
    private String memberPw;
    private String memberEmail;
    private String memberTell;
    private String memberName;
    private String memberNick;
    private String memberAdd;
    private int memberAuth;
    private Date memberDate;
    private String memberRank;
    private int memberPoint;
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getMemberPw() {
		return memberPw;
	}
	public void setMemberPw(String memberPw) {
		this.memberPw = memberPw;
	}
	public String getMemberEmail() {
		return memberEmail;
	}
	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}
	public String getMemberTell() {
		return memberTell;
	}
	public void setMemberTell(String memberTell) {
		this.memberTell = memberTell;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getMemberNick() {
		return memberNick;
	}
	public void setMemberNick(String memberNick) {
		this.memberNick = memberNick;
	}
	public String getMemberAdd() {
		return memberAdd;
	}
	public void setMemberAdd(String memberAdd) {
		this.memberAdd = memberAdd;
	}
	public int getMemberAuth() {
		return memberAuth;
	}
	public void setMemberAuth(int memberAuth) {
		this.memberAuth = memberAuth;
	}
	public Date getMemberDate() {
		return memberDate;
	}
	public void setMemberDate(Date memberDate) {
		this.memberDate = memberDate;
	}
	public String getMemberRank() {
		return memberRank;
	}
	public void setMemberRank(String memberRank) {
		this.memberRank = memberRank;
	}
	public int getMemberPoint() {
		return memberPoint;
	}
	public void setMemberPoint(int memberPoint) {
		this.memberPoint = memberPoint;
	}
	@Override
	public String toString() {
		return "Adtest [memberNo=" + memberNo + ", memberId=" + memberId + ", memberPw=" + memberPw + ", memberEmail="
				+ memberEmail + ", memberTell=" + memberTell + ", memberName=" + memberName + ", memberNick="
				+ memberNick + ", memberAdd=" + memberAdd + ", memberAuth=" + memberAuth + ", memberDate=" + memberDate
				+ ", memberRank=" + memberRank + ", memberPoint=" + memberPoint + "]";
	}
    
    
    
}
