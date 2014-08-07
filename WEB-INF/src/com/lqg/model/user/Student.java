package com.lqg.model.user;

import java.io.Serializable;
import java.util.Date;

import org.apache.struts2.json.annotations.JSON;

import com.lqg.model.Sex;
import com.lqg.model.product.UploadFile;
/**
 * 
 * @author Li Qiuguo
 */
public class Student implements Serializable{
	private static final long serialVersionUID = 1L;
	// 主键
	private Integer id;
	//昵称
	private String nickname;
	// 名字	
	private String username;
	// 密码
	private String password;
	//性别
	private String sex;
	//出生年月
	private String birthday;
	//学校
	private String school;
	//擅长学科
	private String aptcourses;
	//个人介绍
	private String introduction;
	//个人图片
	private UploadFile image;
	//个人老师
	private Teacher teacher;
	//个人家长
	private Parent parent;
	//班级
	private Room room;
	// 邮件
	private String email;
	//是否为激活
	private String active="0";
	// 随机码(激活帐户与生成重设密码链接时使用)  
    private String randomCode; 
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getSchool() {
		return school;
	}
	public void setSchool(String school) {
		this.school = school;
	}
	public String getAptcourses() {
		return aptcourses;
	}
	public void setAptcourses(String aptcourses) {
		this.aptcourses = aptcourses;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public UploadFile getImage() {
		return image;
	}
	public void setImage(UploadFile image) {
		this.image = image;
	}
	@JSON(serialize=false)
	public Teacher getTeacher() {
		return teacher;
	}
	public void setTeacher(Teacher teacher) {
		this.teacher = teacher;
	}
	@JSON(serialize=false)
	public Parent getParent() {
		return parent;
	}
	public void setParent(Parent parent) {
		this.parent = parent;
	}
	public Room getRoom() {
		return room;
	}
	public void setRoom(Room room) {
		this.room = room;
	}
	public String getActive() {
		return active;
	}
	public void setActive(String active) {
		this.active = active;
	}
	public String getRandomCode() {
		return randomCode;
	}
	public void setRandomCode(String randomCode) {
		this.randomCode = randomCode;
	}
}
