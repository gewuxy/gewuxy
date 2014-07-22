package com.lqg.model.product;

import java.io.Serializable;
import java.util.Set;
import java.util.TreeSet;

import org.apache.struts2.json.annotations.JSON;
/**
 * �ϴ��ļ�����
 * @author Li Qiuguo
 */
public class BookItem implements Serializable {
	private static final long serialVersionUID = 1L;
	private Integer id;// �����
	private String name;// ������
	private int level = 1;// ���
	private Set<BookItem> children;// ��Ŀ¼��
	private BookItem parent;// ��Ŀ¼
	private BookItem parentNext=null;//下一章节
	private Set<Video> videos = new TreeSet<Video>();// ����Ƶ
	private Book book;//�������鼮
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
	public Set<BookItem> getChildren() {
		return children;
	}
	public void setChildren(Set<BookItem> children) {
		this.children = children;
	}
	@JSON(serialize=false)
	public BookItem getParent() {
		return parent;
	}
	public void setParent(BookItem parent) {
		this.parent = parent;
	}
	public Set<Video> getVideos() {
		return videos;
	}
	public void setVideos(Set<Video> videos) {
		this.videos = videos;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	@JSON(serialize=false)
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	@JSON(serialize=false)
	public BookItem getParentNext() {
		return parentNext;
	}
	public void setParentNext(BookItem parentNext) {
		this.parentNext = parentNext;
	}
}
