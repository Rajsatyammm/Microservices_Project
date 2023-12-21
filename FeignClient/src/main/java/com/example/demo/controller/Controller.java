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
	
	@GetMapping("/add")
	public void getDetails(@RequestParam String name, @RequestParam String email, @RequestParam Float sal,
			@RequestParam String eddr) {
		System.out.println(":::: Inside the feign client controller....");
		empDetails.addEmployee(name, email, sal, eddr);
		System.out.println("::::: after call...");
	}
	
}