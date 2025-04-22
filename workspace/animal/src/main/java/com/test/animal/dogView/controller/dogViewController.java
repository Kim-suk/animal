package com.test.animal.dogView.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;

public interface dogViewController {
	
	public String showDogAbout();	
	public String showDogPuppy();
	public String showDogThink();
	public String showDogType();
	public String showDogFeed();
	public String showDogBorn();
	public String showDogResponsible();
	public String showDogDetail(@PathVariable("breed") String breed, Model model);
}
