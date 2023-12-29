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
		// returning the list of employee
		return employeeRepository.findAll();
	}

	@GetMapping("/list/{eid}")
	public Employee getById(@PathVariable Integer eid) {
		
		// if employee data exists by this ID
		if (employeeRepository.existsById(eid)) {
			Optional<Employee> optEmp = employeeRepository.findById(eid);
			
			// if optional employee is present
			if (optEmp.isPresent()) {
				
				// getting the employee from the optional list
				Employee employee = optEmp.get();
				
				// returning the employee
				return employee;
			}
		}
		// if no employee exist by id then returning null
		return null;
	}
}
