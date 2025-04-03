package com.test.animal.catView.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/cat")
public class catViewControllerImpl implements catViewController{
	
	@Override
	@RequestMapping("/cat_all.do")
	public String showCatAll() {
	    return "/cat/cat_all";  // Tiles���� ������ �� �̸�
	}

	@Override
	@RequestMapping("/cat_kitten.do")
	public String showCatKitten() {
		// TODO Auto-generated method stub
		return "/cat/cat_kitten";
	}

	@Override
	@RequestMapping("/cat_think.do")
	public String showCatThink() {
		// TODO Auto-generated method stub
		return "/cat/cat_think";
	}

	@Override
	@RequestMapping("/cat_type.do")
	public String showCatType() {
		// TODO Auto-generated method stub
		return "/cat/cat_type";
	}
	
	
}
