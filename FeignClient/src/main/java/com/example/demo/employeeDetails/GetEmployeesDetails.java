package com.example.demo.employeeDetails;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.example.demo.model.Employee;

@FeignClient("LIST-EMPLOYEE-SERVICE")
public interface GetEmployeesDetails {

	// calling the list employee services to list all the employees present in the database 
	@GetMapping("/employees/list")
	public List<Employee> getEmployeeList();
	
	// calling the list employee services to list the employee with the id provided 
	@GetMapping("/employees/list/{eid}")
	public Employee getEmployee(@PathVariable Integer eid);
	
	
}