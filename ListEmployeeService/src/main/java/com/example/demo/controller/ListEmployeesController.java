package com.example.demo.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.model.Employee;
import com.example.demo.repository.EmployeeRepository;

@RestController
@RequestMapping("/employees")
public class ListEmployeesController {

	@Autowired
	private EmployeeRepository employeeRepository;

	@GetMapping("/list")
	public List<Employee> listEmployees() {
		return employeeRepository.findAll();
	}

	@GetMapping("/list/{eid}")
	public Employee getById(@PathVariable Integer eid) {
		
		System.err.println("id is :::: " + eid);
		if (employeeRepository.existsById(eid)) {
			Optional<Employee> optEmp = employeeRepository.findById(eid);
			if (optEmp.isPresent()) {
				Employee employee = optEmp.get();
				return employee;
			}
		}
		return null;
	}
}
