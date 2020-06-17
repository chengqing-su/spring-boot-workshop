package com.realks.workshop.demo.model;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Data
@Table(name = "class_teacher")
public class ClassTeacher implements Serializable {

    @Id
    @ManyToOne
    @JoinColumn(name = "teacher_id")
    private Teacher teacher;

    @Id
    @ManyToOne
    @JoinColumn(name = "class_id")
    private ClassRoom classRoom;
}
