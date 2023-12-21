package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.employeeDetails.IEmployeeDetails;

@RestController
@RequestMapping("/employees")
public class Controller {

	@Autowired
	private IEmployeeDetails empDetails;
	
	@GetMapping("/add-emp")
	public String getDetails(@RequestParam Integer eid, @RequestParam String name, @RequestParam String email, @RequestParam Float sal,
			@RequestParam String eaddr) {
		System.out.println(":::: Inside the feign client controller....");
		System.out.println("::::: after call...");
		return empDetails.addEmp(eid, name, email, sal, eaddr);
	}
	
}