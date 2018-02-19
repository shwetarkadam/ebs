package com.ebs.beans;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ebs.model.Account;

@Component
public class Archive {

	private String proj_name;
	private String comment;
	private Account account;
	
	public String getProj_name() {
		return proj_name;
	}
	public void setProj_name(String proj_name) {
		this.proj_name = proj_name;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}

	@Autowired
	public void setAccount(Account account) {
		this.account = account;
	}
	
	
	public void insertArchive(String proj_name, String comment) {
		account.insertArchive(proj_name,comment);
		
	}

	
}
