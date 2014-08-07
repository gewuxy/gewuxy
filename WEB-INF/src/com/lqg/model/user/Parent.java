package com.lqg.model.user;

import java.io.Serializable;
import java.util.Date;
import java.util.Set;
import java.util.TreeSet;

import com.lqg.model.Sex;
import com.lqg.model.product.UploadFile;
/**
 * 
 * @author Li Qiuguo
 */
public class Parent implements Serializable{
	private static final long serialVersionUID = 1L;
	private Integer id;//主键
	private String username;// 名字
	private String nickname;// 昵称
	private String password;// 密码
	private String sex;//性别
	private String birthday;//出生年月
	private String introduction;//个人介绍
	private UploadFile image;//个人图片
	private String email;// 邮件
	private String active="0";//是否激活
	// 随机码(激活帐户与生成重设密码链接时使用)  
    private String randomCode; 
	private Set<Student> children = new TreeSet<Student>();//孩子
	
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
	public Set<Student> getChildren() {
		return children;
	}
	public void setChildren(Set<Student> children) {
		this.children = children;
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
