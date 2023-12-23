package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	@GetMapping("/")
	public String index() {
		return "index";
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
	
	
}
