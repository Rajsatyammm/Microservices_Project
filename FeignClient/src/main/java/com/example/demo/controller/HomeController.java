package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	@GetMapping("/")
	public String index() {
		return "index";
	}

	@GetMapping("/employees/addEmp")
	public String addEmployee() {
		return "addEmployee";
	}

	@GetMapping("/employees/update")
	public String updateEmployee() {
		return "updateEmp";
	}

	@GetMapping("/employees/delete")
	public String deleteEmployee() {
		return "deleteEmp";
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

	@GetMapping("/adminn")
	public String loadCRUDjsp() {
		// admin data is present inside the request object
		String data = "";
		if ("data".equals(data)) {
			return "crud-pages";
		}
		return "admin-login";
	}

	@GetMapping()
	public String checkDetails() {
		String id = "";
		return id;
	}

}
