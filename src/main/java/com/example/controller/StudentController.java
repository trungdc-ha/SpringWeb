package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
public class StudentController {
	
	@GetMapping
	public String showHomePage() {
		System.out.println("Hello");
		System.out.println(1515151515);
		return "home";
	}
	
	private int SumInt(int a, int b) {
		return a + b;
	}
	
	private void Abc() {
		System.out.println("EER");
	}
}
