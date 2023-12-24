package com.example.demo.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.model.Employee;
import com.example.demo.model.User;
import com.example.demo.repository.EmployeeRepository;

@Controller
public class LoginController {

	@Autowired
	private EmployeeRepository employeeRepository;

	@Autowired
	private UserSession userSession;

	@PostMapping("/login-controller")
	public String login(@RequestParam Integer eid, @RequestParam String ename, @RequestParam String email) {

		User user = new User();
		Employee emp = null;

		if (employeeRepository.existsById(eid)) {
			Optional<Employee> optEmp = employeeRepository.findById(eid);
			if (optEmp.isPresent()) {
				emp = optEmp.get();
			}
		} else {
			return "admin-login";
		}

		if (emp != null) {

			if (emp.getEname().equals(ename) && emp.getEmail().equals(email)) {
				user.setUsername(email);
				if (emp.getRole().equals("EMPLOYEE"))
					user.setRole(emp.getRole());
				else if (emp.getRole().equals("ADMIN"))
					user.setRole(emp.getRole());
				else
					return "admin-login";
			}

			userSession.setUser(user);

			if ("ADMIN".equals(user.getRole())) {
				return "crud-pages";
			} else if ("EMPLOYEE".equals(user.getRole())) {
				return "welcome";
			} else {
				return "admin-login";
			}
		} else {
			return "admin-login";
		}

	}

	
}
