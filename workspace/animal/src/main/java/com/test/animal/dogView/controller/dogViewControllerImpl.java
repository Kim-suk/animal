package com.test.animal.dogView.controller;

import org.springframework.stereotype.Controller;
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
	@RequestMapping("/dog_feed.do")
	public String showDogFeed() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@RequestMapping("/dog_puppy.do")
	public String showDogPuppy() {
		// TODO Auto-generated method stub
		return "/dog/dog_puppy";
	}

	@Override
	@RequestMapping("/dog_supplies.do")
	public String showDogSupplies() {
		// TODO Auto-generated method stub
		return "/dog/dog_supplies";
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

}
