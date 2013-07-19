package me.smulyono.springheroku.controller;

import java.util.List;

import me.smulyono.springheroku.dao.UserDAO;
import me.smulyono.springheroku.model.User;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/users")
public class UserPageController {
	static Logger logger = LoggerFactory.getLogger(UserPageController.class);
	
	@Autowired
	UserDAO dao;
	
	@RequestMapping(method=RequestMethod.GET)
	public String listUsers(Model model){
		fillDefaultModels(model);
		model.addAttribute("userrec", new User());
		logger.debug(">>>> index of user page");
		return "users";
	}
	
	@RequestMapping(method=RequestMethod.POST)
	public String addUsers(@ModelAttribute("userrec") User userrec, Model model,
				BindingResult result) {
		logger.debug(">>>> after sending post");
		dao.saveAndFlush(userrec);
		fillDefaultModels(model);
		// clear out the user input
		model.addAttribute("userrec", new User());
		model.addAttribute("message", "Save Success");
		model.addAttribute("messageType", "success");
		return "users";
	}
	
	private void fillDefaultModels(Model model){
		model.addAttribute("title", "Spring MVC in Heroku");
		model.addAttribute("subtitle", "Insert User");
		model.addAttribute("selectedTab", "user");
		// provide list of all users
		List<User> allrecs = dao.findAll();
		model.addAttribute("userrecs", allrecs);
	}
}
