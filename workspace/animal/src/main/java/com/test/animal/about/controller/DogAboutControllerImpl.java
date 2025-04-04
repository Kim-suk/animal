package com.test.animal.about.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/about")
public class DogAboutControllerImpl implements DogAboutController{

	@Override
	@RequestMapping("/dog_about")
	public String showDogAbout() {
		// TODO Auto-generated method stub
		return "about/dog_about";
	}

}
