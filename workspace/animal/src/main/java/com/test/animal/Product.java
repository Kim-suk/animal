package com.test.animal;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Product {
	@RequestMapping(value= {"/product", "/product/product"})
	public String product() {
		return "product";
	}
}
