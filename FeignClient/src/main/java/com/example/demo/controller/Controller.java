package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.employeeDetails.AddEmployeeDetails;
import com.example.demo.employeeDetails.DeleteEmployeeDetails;
import com.example.demo.employeeDetails.UpdateEmployeeDetails;

@RestController
@RequestMapping("/employees")
public class Controller {

	@Autowired
	private AddEmployeeDetails addEmployeeDetails;

	@Autowired
	private DeleteEmployeeDetails deleteEmployeeDetails;

	@Autowired
	private UpdateEmployeeDetails updateEmployeeDetails;

	@PostMapping("/add-emp")
	public String insertEmployee(@RequestParam String name, @RequestParam String email, @RequestParam Float sal,
			@RequestParam String addr) {
		return addEmployeeDetails.addEmp(name, email, sal, addr);
	}

	@PostMapping("/del-emp")
	public void deleteEmployee(@RequestParam Integer eid) {
		deleteEmployeeDetails.delEmp(eid);
	}

	@PostMapping("/upd-emp")
	public void updateEmployee(@RequestParam Integer eid, @RequestParam String name, @RequestParam String email,
			@RequestParam Float sal, @RequestParam String addr) {

		updateEmployeeDetails.updateEmp(eid, name, email, sal, addr);

	}

}