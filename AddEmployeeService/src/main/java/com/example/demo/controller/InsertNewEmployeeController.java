package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.model.Employee;
import com.example.demo.repository.EmployeeRepository;

@RestController
@RequestMapping("/employees")
public class InsertNewEmployeeController {

	@Autowired
	private EmployeeRepository employeeRepository;

	@GetMapping("/add")
	public String addEmployee(@RequestParam String name, @RequestParam String email, @RequestParam Float sal,
			@RequestParam String addr) {
		
		// creating the new employee object
		Employee employee = new Employee();

		// setting the name to employee object
		employee.setEname(name);
		
		// setting the email to employee object
		employee.setEmail(email);
		
		// setting the address to employee object
		employee.setEadd(addr);
		
		// setting the salary to employee object
		employee.setEsal(sal);
		
		// setting the new employee role to EMPLOYEE Only
		employee.setRole("EMPLOYEE");
		
		// saving the employee details to database
		employeeRepository.save(employee);
		
		// returning the success message
		return "success";
	}
}
