package com.test.animal.catView.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;

public interface catViewController {
	public String showCatAbout();
	public String showCatKitten();
	public String showCatThink();
	public String showCatType();
	public String showCatResponsible();	
	public String showCatGrow();	
	public String showCatDetail(@PathVariable("breed") String breed, Model model);
}
