package com.yzpc.test;
import java.text.MessageFormat;
import java.util.Locale;
import java.util.ResourceBundle;

public class PlaceholderTest {
	public static void main(String[] args) {
		ResourceBundle myResources = ResourceBundle.getBundle("MsgResource_zh_CN",Locale.CHINA);
		String message = myResources.getString("msg");
		String name = "李四";
		String week = "星期一";
		Object[] ph = { name, week };		
		System.out.println(MessageFormat.format(message, ph));
	}
}
