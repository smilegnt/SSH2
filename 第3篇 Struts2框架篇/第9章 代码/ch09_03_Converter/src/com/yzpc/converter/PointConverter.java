package com.yzpc.converter;
import java.util.Map;
import org.apache.struts2.util.StrutsTypeConverter;
import com.yzpc.bean.Point;
//坐标类型转换类
public class PointConverter extends StrutsTypeConverter {
	// 将字符串转换为坐标类型
	public Object convertFromString(Map context, String[] values,Class toType) {
		//获取X、Y坐标
		String str = values[0];
		String xy[] = str.split(",");
		double x = Double.parseDouble(xy[0]);
		double y = Double.parseDouble(xy[1]);		
		Point point = new Point();	//构建坐标对象
		point.setX(x);
		point.setY(y);		
		return point;	//返回坐标对象
	}
	//将坐标对象转换为字符串
	public String convertToString(Map context, Object object) {
		Point point = (Point) object;
		double x = point.getX();
		double y = point.getY();
		String str = "(" + x + "," + y + ")";		
		return str;	//返回字符串
	}
}
