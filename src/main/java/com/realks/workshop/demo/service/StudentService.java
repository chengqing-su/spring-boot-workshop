package com.realks.workshop.demo.service;

import com.realks.workshop.demo.dao.StudentRepository;
import com.realks.workshop.demo.model.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentService {

    private final StudentRepository studentRepository;

    @Autowired
    StudentService(StudentRepository studentRepository){
        this.studentRepository = studentRepository;
    }

    public Long addNewUser(Student student){
        Student newStudent = studentRepository.save(student);
        return newStudent.getId();
    }

    public List<Student> getAll(){
        return  studentRepository.findAll();
    }
}
