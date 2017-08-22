package com.yzpc.test;
import java.util.Locale;
public class LocalCountryLanguageList {
	public static void main(String[] args) {
		Locale[] localeList = Locale.getAvailableLocales();
		for (int i = 0; i < localeList.length; i++){
			// 打印出所支持的国家/地区和语言
			System.out.print(localeList[i].getDisplayCountry()+"=");
			System.out.print(localeList[i].getCountry()+" ");
			System.out.print(localeList[i].getDisplayLanguage()+"=");
			System.out.print(localeList[i].getLanguage()+"\n");
		}
	}
}
