package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

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

	@PostMapping("/add-emp")
	public String insertEmployee(@RequestParam String name, @RequestParam String email, @RequestParam Float sal,
			@RequestParam String addr) {
		return addEmpDetails.addEmp(name, email, sal, addr);
	}

	@PostMapping("/del-emp")
	public void deleteEmployee(@RequestParam Integer eid) {
		delEmpDetails.delEmp(eid);
	}

	@PostMapping("/upd-emp")
	public void updateEmployee(@RequestParam Integer eid, @RequestParam String name, @RequestParam String email,
			@RequestParam Float sal, @RequestParam String addr) {

		updateEmpDetails.updateEmp(eid, name, email, sal, addr);

	}

	@GetMapping("/list/{eid}")
	public ModelAndView getEmployee(@PathVariable Integer eid) {
		ModelAndView modelAndView = new ModelAndView("getAnEmp");

		Employee employee = getAllEmployees.getEmployee(eid);
		modelAndView.addObject("employee", employee);
		System.out.println(employee);

		return modelAndView;
	}

	@GetMapping("/list-all")
	public ModelAndView getAllEmployees() {
		List<Employee> employees = getAllEmployees.getEmployeeList();
		ModelAndView modelAndView = new ModelAndView("getEmpDetails");
		modelAndView.addObject("employeeList", employees);
		return modelAndView;
	}

}