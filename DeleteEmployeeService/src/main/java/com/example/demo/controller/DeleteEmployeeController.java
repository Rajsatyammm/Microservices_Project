package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.repository.EmployeeRepository;

@RestController
@RequestMapping("/employees")
public class DeleteEmployeeController {

    @Autowired
    private EmployeeRepository employeeRepository;

    @GetMapping("/delete")
    public String deleteEmployee(@RequestParam Integer eid) {
        if (employeeRepository.existsById(eid)) {
            employeeRepository.deleteById(eid); 
            return "Employee deleted successfully";
        } else {
            return "Employee not found";
        }
    }
}
