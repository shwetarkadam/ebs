package com.ebs.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ebs.beans.Archive;
import com.ebs.beans.EHP;
import com.ebs.beans.Employee;
import com.ebs.beans.Project;

@Controller
public class ProjectController {

	Archive archive;
	Project project;
	Employee employee;
	EHP ehp;
	@Autowired
	public void setProject(Project project) {
		this.project = project;
	}
	@Autowired
	public void setEhp(EHP ehp) {
		this.ehp = ehp;
	}
	@Autowired
	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	@Autowired
	public void setArchive(Archive archive) {
		this.archive = archive;
	}
	@RequestMapping(value="/AddProject", method=RequestMethod.POST)
	public ModelAndView addProject(Model model,HttpServletRequest request,Project p){
		
		//go to DB with Project (Service Layer) and insert project
		project.addProject(p);
		//go to DB via Employee bean and get all employees 
		ArrayList<Employee> emp_list = employee.getAllEmployees();
		ArrayList<Project> proj_list = project.getAllProjects();
		request.getSession().setAttribute("emp_list", emp_list);
		request.getSession().setAttribute("proj_list", proj_list);

		ModelAndView mav = new ModelAndView();
		mav.addObject("proj", p);
		mav.setViewName("project");
		model.addAttribute("msg","Project: " + p.getName() + " Added to the system");
		return mav;
	}
	
	@RequestMapping(value="/showProjectReport",method=RequestMethod.POST)
	public ModelAndView showProjectReport(@RequestParam(value="pid") String pid, Model model){
		//go to DB via EHP class and fetch employee_has_project table 
		ArrayList<EHP> list = ehp.fetch(pid);
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.setViewName("show_project_report");
		return mav;
	}
	
	@RequestMapping(value="/archive",method=RequestMethod.POST )
	public String show(Model model,@RequestParam("proj_name") String proj_name,@RequestParam("comment") String comment,Archive a){
		
		System.out.println("WOrking 1");
		System.out.println("proj_name="+proj_name+"comment"+comment);
		this.archive.insertArchive(proj_name,comment);
		this.project.deleteProj(proj_name);
		System.out.println("WOrking 3");
		model.addAttribute("msg", "Project" + proj_name +" Closed And Added to Archive ");
		return "index";
	}
	

	

	@RequestMapping(value="/ChangeManager",method=RequestMethod.POST)
	public String ChangeManager(@RequestParam(value="pid") String pid, @RequestParam(value="eid") String eid, Model model){
		//go to DB via project and insert pid,eid,date in employee_has_project table 
		project.changeManager(pid,eid);
		model.addAttribute("msg", "Project Records Updated ");
		return "redirect:/project";
	}
}
