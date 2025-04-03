package com.test.animal.category.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller	
public class CategoryController {

	@RequestMapping("/categories")
    public String showCategories(Model model) {
        // 고양이 용품 카테고리
        List<String> catSupplies = Arrays.asList("all", "feed", "treat", "sand", "carrier", "toy", "bath", "house", "dish");

        // 강아지 용품 카테고리
        List<String> dogSupplies = Arrays.asList("all", "feed", "treat", "poop", "carrier", "toy", "bath", "house", "dish");

        model.addAttribute("catSupplies", catSupplies);
        model.addAttribute("dogSupplies", dogSupplies);

        return "categories"; // categories.jsp로 이동
    }
}
