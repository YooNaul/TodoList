package com.todolist.controller;

import java.util.ArrayList;
import java.util.List;


public class Test2 {

	public static void main(String[] args) {
		
		ArrayList<String> list = new ArrayList<>();
		list.add("idx=0");
		list.add("id=test");
		list.add("name=김도진");
		list.add("pass=1234");
		list.add("sex=1");
		list.add("email=null");
		list.add("status=0");
		list.add("ranking=100");
		
		//String a = String.valueOf(list);
		
		for(int i=0 ; i < list.size() ; i++) {
			System.out.println(list.get(i));
		}
		System.out.println(list.get(1).split("id="));
		
		System.out.println(list);
		
		


		
	}

}
