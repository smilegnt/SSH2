package com.yzpc.entity;

public class Book {
	private String name;
	private String author;
	
	//省略相应属性的getter、setter方法
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	//构造方法
	public Book() {	}
	public Book(String name, String author) {
		this.name = name;
		this.author = author;
	}
}
