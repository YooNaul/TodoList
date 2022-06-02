package com.todolist.controller;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MainController {

	@RequestMapping(value = "/main")
	public String main() {
		return "main";
	}
	
	@RequestMapping(value = "/controller")
	public String controller() {
		return "main";
	}
	
	@RequestMapping(value = "/more")
	public String more() {
		return "more";
	}
}
