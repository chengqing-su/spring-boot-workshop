package com.realks.workshop.demo.dao;

import com.realks.workshop.demo.model.ClassRoom;
import com.realks.workshop.demo.model.Gender;
import com.realks.workshop.demo.model.Student;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
@ActiveProfiles(profiles = "test")
public class StudentRepositoryTests {

    @Autowired
    private StudentRepository studentRepository;

    @Test
    public void shouldSaveOneStudent(){
        studentRepository.save(new Student((long) 101, "Student 101", 17, Gender.MALE, new ClassRoom((long) 1,"计算机一班")));

        Assert.assertEquals(101, studentRepository.findAll().size());
    }

    @Test
    public void shouldDeleteOneStudentById(){
        studentRepository.deleteById(101L);

        Assert.assertEquals(100, studentRepository.findAll().size());
    }
}
