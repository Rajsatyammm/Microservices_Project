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
	// for getting the data from the database
	private EmployeeRepository employeeRepository;

	@Autowired
	// for storing the user data to the session
	private UserSession userSession;

	@PostMapping("/login-controller")
	public ModelAndView login(@RequestParam Integer eid, @RequestParam String ename, @RequestParam String email) {

		// creating a new user to store the user with his role
		User user = new User();
		Employee emp = null;
		String modelPage = null;
		ModelAndView modelAndView = null;

		// if the employee id exist in the database
		if (employeeRepository.existsById(eid)) {

			// getting the data from the database
			Optional<Employee> optEmp = employeeRepository.findById(eid);

			// if optEmp is not null then get the actual employee data
			if (optEmp.isPresent()) {
				emp = optEmp.get();
			}

			// if employee data is present
			if (emp != null) {

				// if the form data and the data from the database matches
				if (emp.getEname().equals(ename) && emp.getEmail().equals(email)) {

					// if the user is ADMIN
					if ("ADMIN".equals(emp.getRole())) {

						// setting the user role to user model
						user.setRole(emp.getRole());

						// setting the model page as crud-pages
						modelPage = "crud-pages";
						modelAndView = new ModelAndView(modelPage);

						// adding the employee object to the session
						modelAndView.addObject("employee", emp);
						userSession.setUser(user);

						// returning the modelAndView
						return modelAndView;
					}
					// if the user is employee
					else if ("EMPLOYEE".equals(emp.getRole())) {

						// setting the user role to model
						user.setRole(emp.getRole());

						// setting the model page as welcome page
						modelPage = "welcome";
						modelAndView = new ModelAndView(modelPage);

						// adding the employee object to the session
						modelAndView.addObject("employee", emp);
						userSession.setUser(user);

						// returning the modelAndView to UI
						return modelAndView;
					}

					// if user role is other than ADMIN or EMPLOYEE
					else {
						modelPage = "admin-login";
						modelAndView = new ModelAndView(modelPage);
						return modelAndView;
					}
				}
			}

			// if employee data is not present then again showing him login page
			else {
				modelPage = "admin-login";
				modelAndView = new ModelAndView(modelPage);
				return modelAndView;
			}
		}

		// if employee id does not exist in the database
		else {
			// setting the model page as admin-login.jsp
			modelPage = "admin-login";

			// creating the model with the model page
			modelAndView = new ModelAndView(modelPage);

			// returning the model
			return modelAndView;
		}

		modelPage = "admin-login";
		// creating the model with the model page
		modelAndView = new ModelAndView(modelPage);
		return modelAndView;
	}

}