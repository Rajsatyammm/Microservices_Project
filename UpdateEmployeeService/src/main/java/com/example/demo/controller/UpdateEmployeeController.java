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
	public String updateEmployee(@RequestParam Integer eid, @RequestParam String name, @RequestParam String email, @RequestParam Float sal, @RequestParam String addr) {

		if (eid != null && employeeRepository.existsById(eid)) {
			Employee existingEmployee = employeeRepository.findById(eid).orElse(null);
			
			if (existingEmployee != null) {
				existingEmployee.setEadd(addr);
				existingEmployee.setEmail(email);
				existingEmployee.setEname(name);
				existingEmployee.setEsal(sal);
				
				employeeRepository.save(existingEmployee);
				return "Employee updated successfully";
			}
		}

		return "Unable to update employee";
	}
}
