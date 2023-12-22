package com.example.demo.employeeDetails;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@FeignClient("UPDATE-EMPLOYEE-SERVICE")
public interface UpdateEmployeeDetails {
	
	@GetMapping("/employees/update")
	public String updateEmp(@RequestParam Integer eid, @RequestParam String name, @RequestParam String mail, @RequestParam Float sal, @RequestParam String addr);
}