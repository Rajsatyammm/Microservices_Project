package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.example.demo.model.User;

@Controller
public class HomeController {

	@GetMapping("/")
	public String index() {
		return "index";
	}

	@GetMapping("/employees/add")
	public String addEmployee() {
		return "addEmployee";
	}

	@GetMapping("/employees/update")
	public String updateEmployee() {
		return "updateEmployee";
	}

	@GetMapping("/employees/delete")
	public String deleteEmployee(@ModelAttribute("employee") User employee) {
		if ("ADMIN".equals(employee.getRole())) {
			return "deleteEmployee";
		}
		return "admin-login";
	}

	@GetMapping("/employee-login")
	public String employeeLogin() {
		return "employee-login";
	}

	@GetMapping("/admin-login")
	public String adminLogin() {
		return "admin-login";
	}

	@GetMapping("/contact")
	public String contactUs() {
		return "contact";
	}

	@GetMapping("/about")
	public String aboutUs() {
		return "about";
	}

	@GetMapping("/admin/dashboard")
	public String loadCRUDjsp(@ModelAttribute("employee") User employee) {
		if ("ADMIN".equals(employee.getRole())) {
			return "crud-pages";
		}
		return "admin-login";
	}

}
