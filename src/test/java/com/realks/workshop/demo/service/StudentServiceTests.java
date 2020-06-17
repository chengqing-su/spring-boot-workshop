package com.realks.workshop.demo.service;

import com.realks.workshop.demo.dao.StudentRepository;
import com.realks.workshop.demo.model.Gender;
import com.realks.workshop.demo.model.Student;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;

import java.util.ArrayList;
import java.util.List;

@RunWith(MockitoJUnitRunner.class)
public class StudentServiceTests {

    @Mock
    private StudentRepository studentRepository;

    @InjectMocks
    private StudentService studentService;

    @Test
    public void shouldReturnAllStudents(){
        Student student = new Student();
        student.setId((long) 1);
        student.setAge(24);
        student.setGender(Gender.Female);
        student.setName("Student 1");

        List<Student> studentList = new ArrayList<>();
        studentList.add(student);


        Mockito.when(studentRepository.findAll()).thenReturn(studentList);

        List<Student> students = studentService.getAll();

        Assert.assertEquals(1, students.size());


    }
}
