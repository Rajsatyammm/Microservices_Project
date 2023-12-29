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
public class MicroservicesController {

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
		
		// getting the status by calling the microservice
		String status = addEmployeeDetails.addEmp(name, email, sal, addr);
		
		// creating a new modelAndView with desired path
		ModelAndView modelAndView = new ModelAndView(pathName);
		
		// if employee is added successfully
		if("success".equals(status))
			// adding success message to get it later
			modelAndView.addObject("status", "successAdd");
		else
			// adding failure to the modelAndView
			modelAndView.addObject("status", "failureAdd");
		
		// returning the modelAndView
		return modelAndView;
	}

	@PostMapping("/del-emp")
	public ModelAndView deleteEmployee(@RequestParam Integer eid) {
		String pathName = "commons";
		
		// getting the status
		String status = deleteEmployeeDetails.delEmp(eid);
		ModelAndView modelAndView = new ModelAndView(pathName);
		
		// if status is success then add "success" to the modelAndView object
		if("success".equals(status)) 
			modelAndView.addObject("status", "successDelete");
		else
			modelAndView.addObject("status", "failureDelete");
		
		// returning the modelAndView
		return modelAndView;
	}

	@PostMapping("/upd-emp")
	public ModelAndView updateEmployee(@RequestParam Integer eid, @RequestParam String name, @RequestParam String email,
			@RequestParam Float sal, @RequestParam String addr) {
		String pathName = "commons";
		
		//getting the status 
		String status = updateEmployeeDetails.updateEmp(eid, name, email, sal, addr);
		ModelAndView modelAndView = new ModelAndView(pathName);
		if("success".equals(status)) 
			modelAndView.addObject("status", "successUpdate");
		else
			modelAndView.addObject("status", "failureUpdate");
		// returning the model
		return modelAndView;
		

	}

}