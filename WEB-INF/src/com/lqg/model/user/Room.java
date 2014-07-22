package com.lqg.model.user;

import java.io.Serializable;
/**
 * @author Li Qiuguo
 */

public class Room implements Serializable{	
	private static final long serialVersionUID = 1L;
	// 主键
	private Integer id;
	// 班级名字
	private String name;
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
	

}
