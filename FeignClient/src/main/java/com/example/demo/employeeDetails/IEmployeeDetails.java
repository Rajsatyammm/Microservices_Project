package com.example.demo.employeeDetails;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@FeignClient(name = "ADD-EMPLOYEE-SERVICE")
public interface IEmployeeDetails {

	@GetMapping("/add")
	public void addEmployee(@RequestParam String name, @RequestParam String email, @RequestParam Float sal,
			@RequestParam String address);

}
