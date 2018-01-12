package com.shixun.online.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.shixun.online.service.StudentService;
import com.alibaba.fastjson.JSON;
import com.shixun.online.model.Student;

@Controller
@RequestMapping("/")
public class StudentController {

	@Autowired
	private StudentService studentService;

	/**
	 * 获取学生信息
	 * 
	 * @return
	 */
	@RequestMapping(value = "/InfoList")
	public String getAllStu(Model model) {
		List<Student> students = studentService.getStudents();
		model.addAttribute("students", students);
		return "stuInfo.jsp";
	}

	/**
	 * 根据 方向指标 进行筛选
	 * 
	 * @param direction
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "getInfo")
	public String getInfo(@RequestParam("direction") String direction) {
		List<Student> students = studentService.getInfo(direction);
		String json = JSON.toJSONString(students);
		return json;
	}

	/**
	 * 根据 性别指标 进行筛选
	 * 
	 * @param gender
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "getGender")
	public String getSex(@RequestParam("gender") String gender) {
		List<Student> students = studentService.getGender(gender);
		String json = JSON.toJSONString(students);
		return json;
	}

	/**
	 * 新增用户
	 * 
	 * @param student
	 * @return
	 */
	@RequestMapping("/addStudent")
	public String addStu(Student student) {
		studentService.addStudent(student);
		return "stuInfo.jsp";
	}
}
