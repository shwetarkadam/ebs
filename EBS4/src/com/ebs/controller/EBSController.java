package com.ebs.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ebs.beans.Employee;
import com.ebs.beans.Project;

@Controller
public class EBSController {

	private Employee employee;
	private Project project ;
	
	
	public Employee getEmployee() {
		return employee;
	}
	@Autowired
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}

	public Project getProject() {
		return project;
	}
	@Autowired
	public void setProject(Project project) {
		this.project = project;
	}

	@RequestMapping("/")
	public String showHome(HttpServletRequest request){
		//go to DB via Employee bean and get all employees 
				ArrayList<Employee> emp_list = employee.getAllEmployees();
				ArrayList<Project> proj_list = project.getAllProjects();
				request.getSession().setAttribute("emp_list", emp_list);
				request.getSession().setAttribute("proj_list", proj_list);
		return "index";
	}
	
	@RequestMapping("/dashboard")
	public String showDashboard(HttpServletRequest request){
		//go to DB via Employee bean and get all employees 
		
		return "index";
	}
	
	@RequestMapping("/login")
	public String showLogin(){
		return "login";
	}
	
	@RequestMapping("/admin")
	public String showAdmin(){
		return "index";
	}
	
	@RequestMapping("/employee")
	public String showEmp(Model model){
		model.addAttribute("emp",new Employee());
		//System.out.println("test");
		
		return "employee";
	}
	
	@RequestMapping("/project")
	public String showProj(Model model){
		model.addAttribute("proj", new Project());
		
		return "project";
	}
	
	@RequestMapping("/salary")
	public String showSalary(){
		
		return "salary_record";
	}
	
	@RequestMapping("/search")
	public String showSearch(){
		return "search";
	}
	
	@RequestMapping("/logout")
	public String showLogout(){
		return "logout";
	}
	
	
}
