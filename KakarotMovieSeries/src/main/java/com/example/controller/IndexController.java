package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController 
{
	@RequestMapping("/home")
	public String m1()
	{
		return "index";
	}
	@RequestMapping("/movies")
	public String m2()
	{
		return "movies";
	}
}
