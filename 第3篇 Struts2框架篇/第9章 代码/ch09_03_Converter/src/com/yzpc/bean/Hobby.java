package com.yzpc.bean;

public class Hobby {
	private String hobby;
	//必须提供缺省构造器，
    //否则出现实例化异常即：java.lang.InstantiationException:
	public Hobby() {
		super();
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

}
