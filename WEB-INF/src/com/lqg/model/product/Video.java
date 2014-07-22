package com.lqg.model.product;

import java.io.Serializable;

import com.lqg.model.profile.Question;
import com.lqg.model.profile.Thank;
import com.lqg.model.user.*;

import java.util.Date;
import java.util.Set;
import java.util.TreeSet;

import org.apache.struts2.json.annotations.JSON;
/**
 * ÉÏŽ«ÎÄŒþ¶ÔÏó
 * @author Li Qiuguo
 */
public class Video implements Serializable{
	private static final long serialVersionUID = 1L;
	// ±àºÅ
	private Integer id;
	//ÊÓÆµµÄÃû×Ö
	private String name;
	//ÊÓÆµµÄœéÉÜ
	private String desc;
	//ÊÓÆµœØÍŒ
	private UploadFile clipFile;
	//ÊÓÆµ
	private UploadFile videoFile;
	//ÊÓÆµµÄä¯ÀÀŽÎÊý
	private int browseTimes=0;
	//ÊÇ·ñÍÆŒö
	private boolean recommended=false;
	//制片者为学生
	private Student student;
	//制片者为老师
	private Teacher teacher;
	//制片者为家长
	private Parent parent;
	//ËùÊôµÄÊé±ŸÄ¿ÂŒÏî
	private BookItem bookItem ;
	//点赞数
	private int goodCount;
	//踩数目
	private int badCount;
	//ÆÀÂÛ
	  
	private Set<Question> questions=new TreeSet<Question>();
	//žÐÐ»
	
	private Set<Thank> thanks=new TreeSet<Thank>();
   	//ÖÆ×÷Ê±Œä
   	private Date createTime = new Date();
	//ÈËÆøÊýÄ¿
	private int thankCount=0;
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
	public UploadFile getClipFile() {
		return clipFile;
	}
	public void setClipFile(UploadFile clipFile) {
		this.clipFile = clipFile;
	}
	public UploadFile getVideoFile() {
		return videoFile;
	}
	public void setVideoFile(UploadFile videoFile) {
		this.videoFile = videoFile;
	}
	public int getBrowseTimes() {
		return browseTimes;
	}
	public void setBrowseTimes(int browseTimes) {
		this.browseTimes = browseTimes;
	}
	public boolean getRecommended() {
		return recommended;
	}
	public void setRecommended(boolean recommended) {
		this.recommended = recommended;
	}
	public Student getStudent() {
		return  student;
	}
	public void setStudent(Student student) {
		this.student=student;
	}
	public Teacher getTeacher() {
		return  teacher;
	}
	public void setTeacher(Teacher teacher) {
		this.teacher=teacher;
	}
	public Parent getParent() {
		return  parent;
	}
	public void setParent(Parent parent) {
		this.parent=parent;
	}
	@JSON(serialize=false)
	public BookItem getBookItem() {
		return  bookItem;
	}
	public void setBookItem(BookItem bookItem) {
		this.bookItem=bookItem;
	}
	public int getGoodCount() {
		return goodCount;
	}
	public void setGoodCount(int goodCount) {
		this.goodCount = goodCount;
	}
	public int getBadCount() {
		return badCount;
	}
	public void setBadCount(int badCount) {
		this.badCount = badCount;
	}
	
	public Set<Thank> getThanks() {
		return  thanks;
	}
	public void setThanks(Set<Thank> thanks) {
		this.thanks= thanks;
	}
	public Date getcreateTime() {
		return  createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime=createTime;
	}
	public int getThankCount() {
		return  thankCount;
	}
	public void setThankCount(int thankCount) {
		this.thankCount=thankCount;
	}
	public Set<Question> getQuestions() {
		return questions;
	}
	public void setQuestions(Set<Question> questions) {
		this.questions = questions;
	}
	
}
