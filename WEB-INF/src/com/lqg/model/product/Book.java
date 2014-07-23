package com.lqg.model.product;

import java.io.Serializable;
import java.util.Set;
import java.util.TreeSet;

import org.apache.struts2.json.annotations.JSON;
/**
 * �ϴ��ļ�����
 * @author Li Qiuguo
 */
public class Book implements Serializable{
	private static final long serialVersionUID = 1L;
	// ���
	private Integer id;
	//�������
	private String name;
	//��Ľ���
	private String desc;
	//缩写
	private String nickname;
	//��ķ����ͼƬ
	private UploadFile uploadFile;
	//���������Ŀ
	private Course course;
	//����꼶
	private String grade;
	//���Ŀ¼
	private Set<BookItem> bookItems = new TreeSet<BookItem>();
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public UploadFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(UploadFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	@JSON(serialize=false)
	public Course getCourse() {
		return course;
	}
	public void setCourse(Course course) {
		this.course = course;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public Set<BookItem> getBookItems() {
		return  bookItems;
	}
	public void setBookItems(Set<BookItem> bookItems) {
		this.bookItems=bookItems;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
}
