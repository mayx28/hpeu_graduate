package com.shixun.online.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shixun.online.dao.StudentDaoMyBatis;
import com.shixun.online.model.Student;

@Service
public class StudentService {

	@Autowired
	private StudentDaoMyBatis StudentDao;

	public List<Student> getStudents() {
		return StudentDao.getStudents();
	}

	public List<Student> getInfo(String direction) {
		return StudentDao.getInfo(direction);
	}

	public List<Student> getGender(String gender) {
		return StudentDao.getGender(gender);
	}

	public Student addStudent(Student student) {
		return StudentDao.addStudent(student);

	}

}
