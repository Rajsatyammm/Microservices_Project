package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.employeeDetails.AddEmployeeDetails;
import com.example.demo.employeeDetails.DeleteEmployeeDetails;
import com.example.demo.employeeDetails.GetAllEmployeesDetails;
import com.example.demo.employeeDetails.UpdateEmployeeDetails;
import com.example.demo.model.Employee;

@RestController
@RequestMapping("/employees")
public class Controller {

	@Autowired
	private AddEmployeeDetails addEmpDetails;

	@Autowired
	private DeleteEmployeeDetails delEmpDetails;

	@Autowired
	private UpdateEmployeeDetails updateEmpDetails;

	@Autowired
	private GetAllEmployeesDetails getAllEmployees;

	@GetMapping("/add-emp")
	public String insertEmployee(@RequestParam String name, @RequestParam String email, @RequestParam Float sal,
			@RequestParam String addr) {
		return addEmpDetails.addEmp(name, email, sal, addr);
	}

	@GetMapping("/del-emp")
	public String deleteEmployee(@RequestParam Integer eid) {
		delEmpDetails.delEmp(eid);
		return "deleted";
	}

	@GetMapping("/upd-emp")
	public String updateEmployee(@RequestParam Integer eid, @RequestParam String name, @RequestParam String email,
			@RequestParam Float sal, @RequestParam String addr) {
		return updateEmpDetails.updateEmp(eid, name, email, sal, addr);
	}

	@GetMapping("/list/{eid}")
	public void getEmployee(@PathVariable Integer eid) {
		Employee emp = getAllEmployees.getEmployee(eid);
		System.out.println(emp);
	}

	@GetMapping("/list-all")
	public String getEmployeeList(Model model) {
		List<Employee> employeeList = getAllEmployees.getEmployeeList();
		model.addAttribute("employees", employeeList);
		employeeList.forEach(System.out::println);
		return "getAllEmp";
	}
}