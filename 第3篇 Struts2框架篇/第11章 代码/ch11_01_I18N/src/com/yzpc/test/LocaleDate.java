package com.yzpc.test;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

public class LocaleDate {
	public static void main(String[] args) {
		Date now = new Date();
		Locale locale = new Locale("ja", "jp");
		DateFormat df = DateFormat.getDateTimeInstance(DateFormat.FULL,
				DateFormat.FULL, locale);
		System.out.println(df.format(now));
	}
}
