package com.yzpc.entity;

public class User {
	//三个成员变量的定义
    private String username;
    private String sex;
    private int age;    
    //下面是构造函数
    public User(String username, String sex, int age) {
    	super();
        this.username = username;
        this.sex = sex;
        this.age = age;
    }
	//省略属性的getter、setter方法
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
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
}
