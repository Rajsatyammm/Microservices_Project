package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.employeeDetails.AddEmployeeDetails;
import com.example.demo.employeeDetails.DeleteEmployeeDetails;
import com.example.demo.employeeDetails.UpdateEmployeeDetails;

@RestController
@RequestMapping("/employees")
public class Controller {

	@Autowired
	private AddEmployeeDetails addEmployeeDetails;

	@Autowired
	private DeleteEmployeeDetails deleteEmployeeDetails;

	@Autowired
	private UpdateEmployeeDetails updateEmployeeDetails;

	@PostMapping("/add-emp")
	public ModelAndView insertEmployee(@RequestParam String name, @RequestParam String email, @RequestParam Float sal,
			@RequestParam String addr) {
		String pathName = "commons";
		String status = addEmployeeDetails.addEmp(name, email, sal, addr);
		ModelAndView modelAndView = new ModelAndView(pathName);
		if("success".equals(status)) 
			modelAndView.addObject("status", "successAdd");
		else
			modelAndView.addObject("status", "failureAdd");
		return modelAndView;
	}

	@PostMapping("/del-emp")
	public ModelAndView deleteEmployee(@RequestParam Integer eid) {
		String pathName = "commons";
		String status = deleteEmployeeDetails.delEmp(eid);
		ModelAndView modelAndView = new ModelAndView(pathName);
		if("success".equals(status)) 
			modelAndView.addObject("status", "successDelete");
		else
			modelAndView.addObject("status", "failureDelete");
		return modelAndView;
	}

	@PostMapping("/upd-emp")
	public ModelAndView updateEmployee(@RequestParam Integer eid, @RequestParam String name, @RequestParam String email,
			@RequestParam Float sal, @RequestParam String addr) {
		String pathName = "commons";
		String status = updateEmployeeDetails.updateEmp(eid, name, email, sal, addr);
		ModelAndView modelAndView = new ModelAndView(pathName);
		if("success".equals(status)) 
			modelAndView.addObject("status", "successUpdate");
		else
			modelAndView.addObject("status", "failureUpdate");
		return modelAndView;
		

	}

}