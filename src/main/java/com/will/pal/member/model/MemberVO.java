package com.will.pal.member.model;

import java.sql.Timestamp;

public class MemberVO {
	private int mno;
    private String muserid;
    private String mpwd;
    private String mname;
    private String mgender;
    private String mhp1;
    private String mhp2;
    private String mhp3;
    private String memail1;
    private String memail2;
    private String mzipcode;
    private String maddress1;
    private String maddress2;
    private String mpoint;
    private String mgrade;
    private Timestamp mregdate;
    private String mstate;
    private String mcause;
    private String mrecommand;
    private String msellqty;
    private String mbuyqty;
  	
	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public String getMuserid() {
		return muserid;
	}

	public void setMuserid(String muserid) {
		this.muserid = muserid;
	}

	public String getMpwd() {
		return mpwd;
	}

	public void setMpwd(String mpwd) {
		this.mpwd = mpwd;
	}

	public String getMname() {
		return mname;
	}

	public void setMname(String mname) {
		this.mname = mname;
	}

	public String getMgender() {
		return mgender;
	}

	public void setMgender(String mgender) {
		this.mgender = mgender;
	}

	public String getMhp1() {
		return mhp1;
	}

	public void setMhp1(String mhp1) {
		this.mhp1 = mhp1;
	}

	public String getMhp2() {
		return mhp2;
	}

	public void setMhp2(String mhp2) {
		this.mhp2 = mhp2;
	}

	public String getMhp3() {
		return mhp3;
	}

	public void setMhp3(String mhp3) {
		this.mhp3 = mhp3;
	}

	public String getMemail1() {
		return memail1;
	}

	public void setMemail1(String memail1) {
		this.memail1 = memail1;
	}

	public String getMemail2() {
		return memail2;
	}

	public void setMemail2(String memail2) {
		this.memail2 = memail2;
	}

	public String getMzipcode() {
		return mzipcode;
	}

	public void setMzipcode(String mzipcode) {
		this.mzipcode = mzipcode;
	}

	public String getMaddress1() {
		return maddress1;
	}

	public void setMaddress1(String maddress1) {
		this.maddress1 = maddress1;
	}

	public String getMaddress2() {
		return maddress2;
	}

	public void setMaddress2(String maddress2) {
		this.maddress2 = maddress2;
	}

	public String getMpoint() {
		return mpoint;
	}

	public void setMpoint(String mpoint) {
		this.mpoint = mpoint;
	}

	public String getMgrade() {
		return mgrade;
	}

	public void setMgrade(String mgrade) {
		this.mgrade = mgrade;
	}

	public Timestamp getMregdate() {
		return mregdate;
	}

	public void setMregdate(Timestamp mregdate) {
		this.mregdate = mregdate;
	}

	public String getMstate() {
		return mstate;
	}

	public void setMstate(String mstate) {
		this.mstate = mstate;
	}

	public String getMcause() {
		return mcause;
	}

	public void setMcause(String mcause) {
		this.mcause = mcause;
	}

	public String getMrecommand() {
		return mrecommand;
	}

	public void setMrecommand(String mrecommand) {
		this.mrecommand = mrecommand;
	}

	public String getMsellqty() {
		return msellqty;
	}

	public void setMsellqty(String msellqty) {
		this.msellqty = msellqty;
	}

	public String getMbuyqty() {
		return mbuyqty;
	}

	public void setMbuyqty(String mbuyqty) {
		this.mbuyqty = mbuyqty;
	}

	@Override
	public String toString() {
		return "MemberVO [mno=" + mno + ", muserid=" + muserid + ", mpwd=" + mpwd + ", mname=" + mname + ", mgender="
				+ mgender + ", mhp1=" + mhp1 + ", mhp2=" + mhp2 + ", mhp3=" + mhp3 + ", memail1=" + memail1
				+ ", memail2=" + memail2 + ", mzipcode=" + mzipcode + ", maddress1=" + maddress1 + ", maddress2="
				+ maddress2 + ", mpoint=" + mpoint + ", mgrade=" + mgrade + ", mregdate=" + mregdate + ", mstate="
				+ mstate + ", mcause=" + mcause + ", mrecommand=" + mrecommand + ", msellqty=" + msellqty + ", mbuyqty="
				+ mbuyqty + "]";
	}
	
}
