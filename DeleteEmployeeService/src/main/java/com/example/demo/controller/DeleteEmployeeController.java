package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.repository.EmployeeRepository;

@RestController
@RequestMapping("/employees")
public class DeleteEmployeeController {

    @Autowired
    private EmployeeRepository employeeRepository;

    @GetMapping("/delete/{id}")
    public String deleteEmployee(@PathVariable Long id) {
        if (employeeRepository.existsById(id)) {
            employeeRepository.deleteById(id);
            return "Employee deleted successfully";
        } else {
            return "Employee not found";
        }
    }
}
