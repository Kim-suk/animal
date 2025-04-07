package com.test.animal.dogView.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/dog")
public class dogViewControllerImpl implements dogViewController{
	// animal/dog/dog_all.do
	@Override
	@RequestMapping("/dog_all.do")
	public String showDogAll() {
		// TODO Auto-generated method stub
		return "/dog/dog_all";
	}

	@Override
	@RequestMapping("/dog_puppy.do")
	public String showDogPuppy() {
		// TODO Auto-generated method stub
		return "/dog/dog_puppy";
	}

	@Override
	@RequestMapping("/dog_think.do")
	public String showDogThink() {
		// TODO Auto-generated method stub
		return "/dog/dog_think";
	}

	@Override
	@RequestMapping("/dog_type.do")
	public String showDogType() {
		// TODO Auto-generated method stub
		return "/dog/dog_type";
	}

	@Override
	@RequestMapping("/dog_type/{breed}.do")
	public String showDogDetail(
			@PathVariable("breed") String breed, 
			Model model) {
		// .do ����
	    if (breed.endsWith(".do")) {
	        breed = breed.replace(".do", "");
	    }
		model.addAttribute("breed",breed);
		return "/dog/dog_detail";
	}

}
