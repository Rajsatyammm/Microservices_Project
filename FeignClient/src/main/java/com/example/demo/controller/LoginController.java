package com.example.demo.controller;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
	public ModelAndView login(@RequestParam Integer eid, @RequestParam String ename, @RequestParam String email) {

		User user = new User();
		Employee emp = null;
		String modelPage = null;
		ModelAndView modelAndView = null;

		if (employeeRepository.existsById(eid)) {
			Optional<Employee> optEmp = employeeRepository.findById(eid);
			if (optEmp.isPresent()) {
				emp = optEmp.get();
			}
		} else {
			modelPage = "admin-login";
			modelAndView = new ModelAndView(modelPage);
			return modelAndView;
		}

		if (emp != null) {
			
			if (emp.getEname().equals(ename) && emp.getEmail().equals(email)) {
				user.setUsername(email);
				if (emp.getRole().equals("EMPLOYEE"))
					user.setRole(emp.getRole());
				else if (emp.getRole().equals("ADMIN"))
					user.setRole(emp.getRole());
				else {
					modelPage = "admin-login";
					modelAndView = new ModelAndView(modelPage);
					return modelAndView;
				}
			}

			userSession.setUser(user);

			if ("ADMIN".equals(user.getRole())) {
				modelPage = "crud-pages";
				modelAndView = new ModelAndView(modelPage);
				modelAndView.addObject("employee", emp);
				return modelAndView;
			} else if ("EMPLOYEE".equals(user.getRole())) {
				modelPage = "welcome";
				modelAndView = new ModelAndView(modelPage);
				modelAndView.addObject("employee", emp);
				return modelAndView;
			} else {
				modelPage = "admin-login";
				modelAndView = new ModelAndView(modelPage);
				return modelAndView;
			}
		} else {
			modelPage = "admin-login";
			modelAndView = new ModelAndView(modelPage);
			return modelAndView;
		}

	}

}
