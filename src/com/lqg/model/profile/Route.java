package com.lqg.model.profile;

import java.io.Serializable;
import com.lqg.model.profile.Comment;
import com.lqg.model.product.Video;
import com.lqg.model.user.Parent;
import com.lqg.model.user.Student;
import com.lqg.model.user.Teacher;
/**
	 * 李求果
	 */
public class Route implements Serializable {	
	private static final long serialVersionUID = 1L;
	// ���
		private Integer id;
		// �û���
		private Video video;//视频
		//评论
		private Comment comment;//评论
		private Question question;//提问
		private Answer answer;//回答
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
		
		public Comment getComment() {
			return comment;
		}
		public void setComment(Comment comment) {
			this.comment = comment;
		}
		public Question getQuestion() {
			return question;
		}
		public void setQuestion(Question question) {
			this.question = question;
		}
		public Video getVideo() {
			return video;
		}
		public void setVideo(Video video) {
			this.video = video;
		}
		public Answer getAnswer() {
			return answer;
		}
		public void setAnswer(Answer answer) {
			this.answer = answer;
		}

}
