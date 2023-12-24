package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.employeeDetails.GetEmployeesDetails;
import com.example.demo.model.Employee;
import com.example.demo.model.User;

@Controller
public class HomeController {

	@Autowired
	private GetEmployeesDetails getEmployees;

	@GetMapping("/")
	public String index() {
		return "index";
	}

	@GetMapping("/contact")
	public String contactUs() {
		return "contact";
	}

	@GetMapping("/about")
	public String aboutUs() {
		return "about";
	}

	@PostMapping("/getintouch")
	public String submitContactUSPage() {
		return "getInTouch";
	}

	@GetMapping("/logout")
	public String logout() {
		return "index";
	}

	@GetMapping("/employee-login")
	public String employeeLogin() {
		return "employee-login";
	}

	@GetMapping("/admin/add")
	public String addEmployee() {
		return "addEmployee";
	}

	@GetMapping("/admin/update")
	public String updateEmployee() {
		return "updateEmployee";
	}

	@GetMapping("/admin/delete")
	public String deleteEmployee() {
		return "deleteEmployee";
	}

	@GetMapping("/admin-login")
	public String adminLogin() {
		return "admin-login";
	}

	@GetMapping("/admin/dashboard")
	public String loadCRUDjsp(@ModelAttribute("employee") User employee) {
		if ("ADMIN".equals(employee.getRole())) {
			return "crud-pages";
		}
		return "admin-login";
	}

	@GetMapping("/admin/list-emp")
	public String getEmployee() {
		return "getAnEmpPage";
	}

	@PostMapping("/admin/list")
	public ModelAndView getEmployee(@RequestParam Integer eid) {
		ModelAndView modelAndView = new ModelAndView("getAnEmpDetails");

		Employee employee = getEmployees.getEmployee(eid);
		modelAndView.addObject("employee", employee);
		System.out.println(employee);

		return modelAndView;
	}

	@GetMapping("/admin/list-all")
	public ModelAndView getAllEmployees() {
		List<Employee> employees = getEmployees.getEmployeeList();
		ModelAndView modelAndView = new ModelAndView("getEmpDetails");
		modelAndView.addObject("employeeList", employees);
		return modelAndView;
	}

}
