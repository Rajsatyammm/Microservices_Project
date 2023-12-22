package com.example.demo.employeeDetails;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.example.demo.model.Employee;

@FeignClient("LIST-EMPLOYEE-SERVICE")
public interface GetAllEmployeesDetails {

	@GetMapping("/employees/list")
	public List<Employee> getEmployeeList();
	
	@GetMapping("/employees/list/{eid}")
	public Employee getEmployee(@PathVariable Integer eid);
	
	
}