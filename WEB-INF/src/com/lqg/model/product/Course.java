package com.lqg.model.product;

import java.io.Serializable;
import java.util.Set;
import java.util.TreeSet;
/**
 * �ϴ��ļ�����
 * @author Li Qiuguo
 */
public class Course implements Serializable{
	private static final long serialVersionUID = 1L;
	// ���
	private Integer id;
	//�γ̵�����
	private String name;
	//�鱾
	private Set<Book> books=new TreeSet<Book>();
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
	
	public Set<Book> getBooks() {
		return  books;
	}
	public void setBooks(Set<Book> books) {
		this.books=books;
	}
}
