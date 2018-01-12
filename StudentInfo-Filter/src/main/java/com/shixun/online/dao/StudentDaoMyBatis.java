package com.shixun.online.dao;

import java.util.List;

import com.shixun.online.core.MyBatisRepository;
import com.shixun.online.model.Student;

@MyBatisRepository
public interface StudentDaoMyBatis {

	/**
	 * 获取学生列表
	 * 
	 * @return
	 */
	List<Student> getStudents();

	List<Student> getInfo(String direction);

	List<Student> getGender(String gender);

	Student addStudent(Student student);

}
