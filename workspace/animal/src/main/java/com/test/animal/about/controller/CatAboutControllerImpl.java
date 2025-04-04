package com.test.animal.about.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/about")
public class CatAboutControllerImpl implements CatAboutController {

    @Override
    @RequestMapping("/cat_about")  // '.do' 포함
    public String showCatAbout() {
        return "about/cat_about";
    }
}
