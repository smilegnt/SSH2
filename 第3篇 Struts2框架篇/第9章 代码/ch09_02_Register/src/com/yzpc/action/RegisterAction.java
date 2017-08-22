package com.yzpc.action;

import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {
	private int id;
	private String username;
	private String password;
	private String realname;
	private String sex;
	private int age;
	private String degree;
	private String address;
	//省略属性的getter/setter方法
		
	public String getUsername() {
		return username;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}
	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	public String getDegree() {
		return degree;
	}

	public void setDegree(String degree) {
		this.degree = degree;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}	
	


	@Override
	public String execute() throws Exception {
		return super.execute();
	}

	
}
