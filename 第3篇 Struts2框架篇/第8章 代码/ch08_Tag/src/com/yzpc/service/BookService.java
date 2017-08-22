package com.yzpc.service;

import com.yzpc.entity.Book;

public class BookService {
	public Book[] getBooks() {
		return new Book[] { 
			new Book("Java编程思想", "埃克尔"), new Book("JSP程序设计", "王晓军"),
				new Book("SSH框架项目教程", "陈俟伶") 
		};
	}
}
