package com.yzpc.converter;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import org.apache.struts2.util.StrutsTypeConverter;

import com.opensymphony.xwork2.conversion.TypeConversionException;
//import com.opensymphony.xwork2.util.TypeConversionException;
public class DateConverter extends StrutsTypeConverter {
	// 支持转换的多种日期格式
	private  final DateFormat[] dfs = { 
		new SimpleDateFormat("yyyy年MM月dd日"),
		new SimpleDateFormat("yyyy-MM-dd"),
		new SimpleDateFormat("yyyy/MM/dd"),
		new SimpleDateFormat("yyyy.MM.dd"), 
		new SimpleDateFormat("yy/MM/dd"), 
		new SimpleDateFormat("MM/dd/yy")
		//还可以加更多类型
	}; 

	// 将指定格式字符串转换为日期类型
	public Object convertFromString(Map context, String[] values, Class toType) {
		String dateStr = values[0];	//获取日期的字符串
		//遍历日期支持格式，进行转换
		for (int i=0;i<dfs.length;i++) {
			try {
				return dfs[i].parse(dateStr);
			} catch (Exception e) {				
				continue;
			}		
		}
		//如果遍历完毕后仍没有转换成功，表面出现转换异常。
		throw new TypeConversionException();
//		return null;
	}
	//将日期转换为指定格式字符串

	public String convertToString(Map context, Object object) {
		Date date = (Date) object;	
		// 输出的格式是yyyy-MM-dd
		return new SimpleDateFormat("yyyy-MM-dd").format(date);
	}
}
