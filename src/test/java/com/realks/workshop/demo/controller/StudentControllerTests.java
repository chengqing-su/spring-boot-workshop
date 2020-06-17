package com.realks.workshop.demo.controller;

import com.realks.workshop.demo.model.Gender;
import com.realks.workshop.demo.model.Student;
import com.realks.workshop.demo.service.StudentService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mockito;
import org.skyscreamer.jsonassert.JSONAssert;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.MvcResult;
import org.springframework.test.web.servlet.RequestBuilder;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;

import java.util.ArrayList;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest
@AutoConfigureMockMvc
public class StudentControllerTests {

    @Autowired
    private MockMvc mockMvc;

    @MockBean
    private StudentService studentService;

    @Test
    public void shouldReturnAllStudentsWithJson() throws Exception {
        Student student = new Student();
        student.setId((long) 1);
        student.setAge(24);
        student.setGender(Gender.Female);
        student.setName("Student 1");

        List<Student> studentList = new ArrayList<>();
        studentList.add(student);

        Mockito.when(studentService.getAll()).thenReturn(studentList);

        RequestBuilder requestBuilder = MockMvcRequestBuilders.get("/student");
        MvcResult result = mockMvc.perform(requestBuilder).andReturn();

        JSONAssert.assertEquals("[{\"id\":1,\"name\":\"Student 1\",\"age\":24,\"gender\":\"Female\",\"classRoom\":null}]",result.getResponse().getContentAsString(), false);
    }
}
