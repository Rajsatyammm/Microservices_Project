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
	public String addEmployee(@RequestParam String name, @RequestParam String email, @RequestParam Float sal, @RequestParam String address) {
		Employee employee = new Employee();
		
		employee.setEadd(address);
		employee.setEname(name);
		employee.setEmail(email);
		employee.setEsal(sal);
		
		employeeRepository.save(employee);
		System.out.println("InsertNewEmployeeController.addEmployee()......");
		return "Employee added successfully";
	}
}