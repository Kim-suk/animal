package com.test.animal.dogView.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;

public interface dogViewController {
	
	public String showDogAbout();	
	public String showDogPuppy();
	public String showDogThink();
	public String showDogType();
	public String showDogDetail(@PathVariable("breed") String breed, Model model);
	public String showCatResponsible();
	
}
