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
public class UpdateEmployeeController {

	@Autowired
	private EmployeeRepository employeeRepository;

	@GetMapping("/update")
	public String updateEmployee(@RequestParam Integer id, @RequestParam String name, @RequestParam Double salary) {
		Long employeeId = Integer.toUnsignedLong(id);

		if (employeeId != null && employeeRepository.existsById(employeeId)) {
			Employee existingEmployee = employeeRepository.findById(employeeId).orElse(null);
			if (existingEmployee != null) {
				existingEmployee.setName(name);
				existingEmployee.setSalary(salary);
				employeeRepository.save(existingEmployee);
				return "Employee updated successfully";
			}
		}

		return "Unable to update employee";
	}
}
