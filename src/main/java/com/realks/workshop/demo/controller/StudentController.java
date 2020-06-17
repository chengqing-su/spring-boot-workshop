package com.realks.workshop.demo.controller;

import com.realks.workshop.demo.model.Student;
import com.realks.workshop.demo.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping(path = "/student")
public class StudentController {

    private final StudentService studentService;

    @Autowired
    StudentController(StudentService studentService){
        this.studentService = studentService;
    }

    @GetMapping
    public List<Student> getAll(){
        return studentService.getAll();
    }

    @PostMapping
    public Long save(@RequestBody Student student){
        return studentService.addNewUser(student);
    }
}
