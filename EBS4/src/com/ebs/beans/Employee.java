package com.ebs.beans;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ebs.model.Account;

@Component
public class Employee implements Comparable<Employee>{
	private int id;
	private String name;
	private String email;
	private String address;
	private String join_date;
	private String leave_date;
	private String salary;
	private String username;
	private String job_title;
	private String password;
	
	private Project project;
	
	private Account account;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getJoin_date() {
		return join_date;
	}

	public void setJoin_date(String join_date) {
		this.join_date = join_date;
	}

	public String getLeave_date() {
		return leave_date;
	}

	public void setLeave_date(String leave_date) {
		this.leave_date = leave_date;
	}

	public String getSalary() {
		return salary;
	}

	public void setSalary(String salary) {
		this.salary = salary;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getJob_title() {
		return job_title;
	}

	public void setJob_title(String job_title) {
		this.job_title = job_title;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Project getProject() {
		return project;
	}
	@Autowired
	public void setProject(Project project) {
		this.project = project;
	}

	public Account getAccount() {
		return account;
	}
	@Autowired
	public void setAccount(Account account) {
		this.account = account;
	}

	public ArrayList<Employee> getAllEmployees() {
		// Go to DB and extract all employees 
		ArrayList<Employee> list =(ArrayList<Employee>)account.getAllEmployees();
		return list;
	}

	public void addEmployee(Employee e) {
		// Go to Accounts and add e
		//System.out.println(e.getSalary() + "==" + e.getJob_title());
		account.addEmployee(e);
		
	}

	@Override
	public int compareTo(Employee e) {
		// comparing employees by email
		if(this.getEmail().equals(e.getEmail()) ) return 0;
		return 1;
	}

	
	public void assignEmployee(String eid, String pid) {
		// insert in DB
		account.assignEmployee(eid,pid);
		
		
	}

	public void incrementSalary(String eid, String sal) {
		// update employee table
		account.incrementSalary(eid,sal);
		
	}

	public ArrayList<EmpIncr> getSalaryRecord(String eid) {
		// go to DB and fetch 
		ArrayList<EmpIncr> list = (ArrayList<EmpIncr>) account.getSalaryRecord(eid);
		return list;
	}

	
}
