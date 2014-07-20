package com.lqg.model.profile;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;
import java.util.TreeSet;

import com.lqg.model.profile.Comment;
import com.lqg.model.product.Video;
import com.lqg.model.user.Parent;
import com.lqg.model.user.Student;
import com.lqg.model.user.Teacher;
/**
 * ����Ա
 * @author Li Qiuguo
 */
public class Question implements Serializable{
	private static final long serialVersionUID = 1L;
	// ���
	private Integer id;
	// �û���
	private String content;
	// ����
	private Video video;
	//学生
	private Student student;
	//老师
	private Teacher teacher;
	//家长
	private Parent parent;
	private Set<Answer> answers= new TreeSet<Answer>();//回答
	//评论
	private Set<Comment> comments=new TreeSet<Comment>();
        private Date createTime = new Date();
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Video getVideo() {
		return video;
	}
	public void setVideo(Video video) {
		this.video = video;
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
	public Set<Answer> getAnswers() {
		return answers;
	}
	public void setAnswers(Set<Answer> answers) {
		this.answers = answers;
	}
	public Set<Comment> getComments() {
		return comments;
	}
	public void setComments(Set<Comment> comments) {
		this.comments = comments;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
}
