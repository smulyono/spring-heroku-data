package me.smulyono.springheroku.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomePageController {
	
	@RequestMapping(value="/")
	public String HelloWorld(Model model) {
		model.addAttribute("title", "Spring MVC in Heroku");
		model.addAttribute("subtitle", "Model from Controller say Hello World!");
		return "index";
	}
}
