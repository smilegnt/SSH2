package com.yzpc.model;
public class Music {
	private String name;
	private String author;
	private String type;
	//此处省略3个属性的setXxx()和getXxx()方法
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}	
}
