package com.example.demo.employeeDetails;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@FeignClient("DELETE-EMPLOYEE-SERVICE")
public interface DeleteEmployeeDetails {
	
	// calling the delete employee services to delete the employee with the id provided 
	@GetMapping("/employees/delete")
	public String delEmp(@RequestParam Integer eid);
}
