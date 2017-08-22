package com.yzpc.converter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.apache.struts2.util.StrutsTypeConverter;
import com.yzpc.bean.Hobby;
public class HobbyConverter extends StrutsTypeConverter {
	@Override
	public Object convertFromString(Map context, String[] values, Class toType) {
		List list = new ArrayList();
		for(int i=0;i<values.length;i++){
			Hobby hobby = new Hobby();
			String str=values[i];
			hobby.setHobby(str);
			list.add(hobby);
		}  
		return list;
	}
	@Override
	public String convertToString(Map context, Object object) {
		  List list =(List)object;
		  StringBuffer result= new StringBuffer();
		  for(int i=0,len=list.size();i<len;i++){
			  Hobby h = (Hobby)list.get(i);
		      result.append(h.getHobby()+"  ");
		  }
		  return result.toString();
	}
}
