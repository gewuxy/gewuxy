package com.lqg.model.profile;

import java.io.Serializable;

import com.lqg.model.user.Parent;
import com.lqg.model.user.Student;
import com.lqg.model.user.Teacher;
/**
	 * 李求果
	 */
public class Collection implements Serializable {	
	private static final long serialVersionUID = 1L;
	// ���
		private Integer id;
		// ����
		private Question question;
		//学生
		private Student student;
		//老师
		private Teacher teacher;
		//家长
		private Parent parent;
		public Integer getId() {
			return id;
		}
		public void setId(Integer id) {
			this.id = id;
		}
		
		public Question getQuestion() {
			return question;
		}
		public void setQuestion(Question question) {
			this.question = question;
		}
		public Student getStudent() {
			return student;
		}
		public void setStudent(Student student) {
			this.student = student;
		}
		public Teacher getTeacher() {
			return teacher;
		}
		public void setTeacher(Teacher teacher) {
			this.teacher = teacher;
		}
		public Parent getParent() {
			return parent;
		}
		public void setParent(Parent parent) {
			this.parent = parent;
		}

}
