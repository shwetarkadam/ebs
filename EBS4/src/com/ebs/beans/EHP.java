package com.ebs.beans;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ebs.model.Account;

@Component
public class EHP {
	private String eid;
	private String pid;
	private String date_from;
	private String date_to;
	private String role;

	private Account account;
	
	public String getEid() {
		return eid;
	}

	public void setEid(String eid) {
		this.eid = eid;
	}

	public String getPid() {
		return pid;
	}

	public void setPid(String pid) {
		this.pid = pid;
	}

	public String getDate_from() {
		return date_from;
	}

	public void setDate_from(String date_from) {
		this.date_from = date_from;
	}

	public String getDate_to() {
		return date_to;
	}

	public void setDate_to(String date_to) {
		this.date_to = date_to;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
	@Autowired
	public void setAccount(Account account) {
		this.account = account;
	}

	public ArrayList<EHP> fetch(String pid2) {
		// go to DB and fetch
		ArrayList<EHP> list = (ArrayList<EHP>)account.fetch(pid2);
		return list;
	}

}
