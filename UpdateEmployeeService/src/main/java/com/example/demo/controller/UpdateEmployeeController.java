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
	public String updateEmployee(@RequestParam Integer eid, @RequestParam String name, @RequestParam String email,
			@RequestParam Float sal, @RequestParam String addr) {

		// if employee exist by id
		if (employeeRepository.existsById(eid)) {
			
			// getting the employee from the database
			Employee existingEmployee = employeeRepository.findById(eid).orElse(null);

			if (existingEmployee != null) {
				
				// setting all the new values to the existing employee
				existingEmployee.setEadd(addr);
				existingEmployee.setEmail(email);
				existingEmployee.setEname(name);
				existingEmployee.setEsal(sal);
				
				// saving the new data to the database
				employeeRepository.save(existingEmployee);
				
				// returning the success message
				return "success";
			}
		}
		
		// if no data present in the database by id then returning failure message
		return "failure";
	}
}
