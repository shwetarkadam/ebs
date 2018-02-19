package com.ebs.beans;

import org.springframework.stereotype.Component;

@Component
public class EmpIncr {
	private String eid;
	private String salary;
	private String date;

	public String getEid() {
		return eid;
	}

	public void setEid(String eid) {
		this.eid = eid;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

}
