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
		Employee employee = new Employee();

		employee.setEadd(addr);
		employee.setEname(name);
		employee.setEmail(email);
		employee.setEsal(sal);
		employee.setRole("EMPLOYEE");

		employeeRepository.save(employee);
		return "success";
	}
}
