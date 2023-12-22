package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
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
	private AddEmployeeDetails addEmpDetails;
	
	@Autowired
	private DeleteEmployeeDetails delEmpDetails;
	
	@Autowired
	private UpdateEmployeeDetails updateEmpDetails;
	
	
	
	@GetMapping("/add-emp")
	public String insertEmployee(@RequestParam Integer eid, @RequestParam String name, @RequestParam String email, @RequestParam Float sal,
			@RequestParam String eaddr) {
		return addEmpDetails.addEmp(eid, name, email, sal, eaddr);
	}
	
	@GetMapping("/del-emp")
	public String deleteEmployee(@RequestParam Integer eid) {
		delEmpDetails.delEmp(eid);
		return "deleted";
	}
	
	@GetMapping("/upd-emp")
	public String updateEmployee(@RequestParam Integer eid, @RequestParam String name, @RequestParam String email, @RequestParam Float sal, @RequestParam String addr) {
		return updateEmpDetails.updateEmp(eid, name, email, sal, addr);
	}
}