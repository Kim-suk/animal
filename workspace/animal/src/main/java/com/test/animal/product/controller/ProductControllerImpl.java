package com.test.animal.product.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.test.animal.product.dto.ProductDTO;
import com.test.animal.product.service.ProductService;

@Controller
public class ProductControllerImpl implements ProductController {
	
	@Autowired
	private ProductService service;
	
	// 제품 아이디에 따라 세부사항 페이지 이동
	@Override
	@RequestMapping("/product/product.do")
	public ModelAndView productDetail(
			@ModelAttribute("dto") ProductDTO product,
			HttpServletRequest request,
			HttpServletResponse response)  {
		ModelAndView mav = new ModelAndView("product");
		
		ProductDTO result = service.productDetail(product.getId());
		mav.addObject("product", result);
		return mav;
	}
	
	// 고양이 상점 메인
	@Override
	@RequestMapping("/cat_product/cat_all.do")
	public ModelAndView productList() {
	    List<ProductDTO> list = service.getCatTop10(); 
	    ModelAndView mav = new ModelAndView("/cat_product/cat_all"); // 타일즈의 이름과 /까지 완전 똒같아야함
	    mav.addObject("productList", list);
	    return mav;
	}
	
	// 고양이 사료 페이지
	@Override
	@RequestMapping("/cat_product/cat_feed.do")
    public ModelAndView catFeedFilter(
        @RequestParam(required = false, value = "연령") List<String> age,           	// 연령
        @RequestParam(required = false, value = "무게") List<String> weight,       	// 무게
        @RequestParam(required = false, value = "주원료") List<String> ingredient, 	// 주원료
        @RequestParam(required = false, value = "알갱이크기") List<String> grainSize	// 알갱이크기
    ) {
        boolean isFilterApplied = (age != null || weight != null || ingredient != null || grainSize != null);
        ModelAndView mav = new ModelAndView("/cat_product/cat_feed");

        if (!isFilterApplied) {
            // ✅ 필터가 없으면 전체 조회
            List<ProductDTO> list = service.catFeedProducts();
            mav.addObject("productList", list);
        } else {
            // ✅ 필터가 있을 경우
            Map<String, List<String>> filters = new HashMap<>();
            int count = 0;

            if (age != null && !age.isEmpty()) { filters.put("연령", age); count++; }
            if (weight != null && !weight.isEmpty()) { filters.put("무게", weight); count++; }
            if (ingredient != null && !ingredient.isEmpty()) { filters.put("주원료", ingredient); count++; }
            if (grainSize != null && !grainSize.isEmpty()) { filters.put("알갱이크기", grainSize); count++; }
            
            if (count == 0) {
                // 필터 없음 → 전체 조회
                List<ProductDTO> list = service.catFeedProducts();
                mav.addObject("productList", list);
            } else {
                // 필터 적용
                List<ProductDTO> filtered = service.catFeedFilter(filters, count);
                mav.addObject("productList", filtered);
            }
        }

        return mav;
    }

	
	// 고양이 간식 페이지
	@Override
	@RequestMapping("/cat_product/cat_treat.do")
	public ModelAndView catTreatFilter(
			@RequestParam(required = false, value = "급여대상") List<String> target, 
			@RequestParam(required = false, value = "종류") List<String> kind, 
			@RequestParam(required = false, value = "주원료") List<String> ingredient,
			@RequestParam(required = false, value = "기능")List<String> function) 
	{
		boolean isFilterApplied = (target != null || kind != null || ingredient != null || function != null);
        ModelAndView mav = new ModelAndView("/cat_product/cat_treat");

        if (!isFilterApplied) {
            // ✅ 필터가 없으면 전체 조회
            List<ProductDTO> list = service.catTreatProducts();
            mav.addObject("productList", list);
        } else {
            // ✅ 필터가 있을 경우
            Map<String, List<String>> filters = new HashMap<>();
            int count = 0;

            if (target != null && !target.isEmpty()) { filters.put("급여대상", target); count++; }
            if (kind != null && !kind.isEmpty()) { filters.put("종류", kind); count++; }
            if (ingredient != null && !ingredient.isEmpty()) { filters.put("주원료", ingredient); count++; }
            if (function != null && !function.isEmpty()) { filters.put("기능", function); count++; }
            
            if (count == 0) {
                // 필터 없음 → 전체 조회
                List<ProductDTO> list = service.catTreatProducts();
                mav.addObject("productList", list);
            } else {
                // 필터 적용
                List<ProductDTO> filtered = service.catTreatFilter(filters, count);
                mav.addObject("productList", filtered);
            }
        }

        return mav;
	}
	
	// 고양이 모래 페이지
	@Override
	@RequestMapping("/cat_product/cat_sand.do")
	public ModelAndView catSandFilter(
			@RequestParam(required = false, value = "모래타입") List<String> sandType, 
			@RequestParam(required = false, value = "향유무") List<String> aroma, 
			@RequestParam(required = false, value = "총용량") List<String> capacity) 
	{
		boolean isFilterApplied = (sandType != null || aroma != null || capacity != null);
        ModelAndView mav = new ModelAndView("/cat_product/cat_sand");

        if (!isFilterApplied) {
            // ✅ 필터가 없으면 전체 조회
            List<ProductDTO> list = service.catSandProducts();
            mav.addObject("productList", list);
        } else {
            // ✅ 필터가 있을 경우
            Map<String, List<String>> filters = new HashMap<>();
            int count = 0;

            if (sandType != null && !sandType.isEmpty()) { filters.put("모래타입", sandType); count++; }
            if (aroma != null && !aroma.isEmpty()) { filters.put("향유무", aroma); count++; }
            if (capacity != null && !capacity.isEmpty()) { filters.put("총용량", capacity); count++; }
            
            if (count == 0) {
                // 필터 없음 → 전체 조회
                List<ProductDTO> list = service.catSandProducts();
                mav.addObject("productList", list);
            } else {
                // 필터 적용
                List<ProductDTO> filtered = service.catSandFilter(filters, count);
                mav.addObject("productList", filtered);
            }
        }

        return mav;
	}
	
	// 고양이 이동장 페이지
	@Override
	@RequestMapping("/cat_product/cat_carrier.do")
	public ModelAndView catCarrierFilter(
			@RequestParam(required = false, value = "허용무게") List<String> weight, 
			@RequestParam(required = false, value = "종류") List<String> carrierType) 
	{
		boolean isFilterApplied = (weight != null || carrierType != null);
        ModelAndView mav = new ModelAndView("/cat_product/cat_carrier");

        if (!isFilterApplied) {
            // ✅ 필터가 없으면 전체 조회
            List<ProductDTO> list = service.catCarrierProducts();
            mav.addObject("productList", list);
        } else {
            // ✅ 필터가 있을 경우
            Map<String, List<String>> filters = new HashMap<>();
            int count = 0;

            if (weight != null && !weight.isEmpty()) { filters.put("허용무게", weight); count++; }
            if (carrierType != null && !carrierType.isEmpty()) { filters.put("종류", carrierType); count++; }
            
            if (count == 0) {
                // 필터 없음 → 전체 조회
                List<ProductDTO> list = service.catCarrierProducts();
                mav.addObject("productList", list);
            } else {
                // 필터 적용
                List<ProductDTO> filtered = service.catCarrierFilter(filters, count);
                mav.addObject("productList", filtered);
            }
        }

        return mav;
	}
	
	// 고양이 장난감 페이지
	@Override
	@RequestMapping("/cat_product/cat_toy.do")
	public ModelAndView catToyFilter(
			@RequestParam(required = false, value = "종류") List<String> toyType, 
			@RequestParam(required = false, value = "형태") List<String> form) 
	{
		boolean isFilterApplied = (toyType != null || form != null);
        ModelAndView mav = new ModelAndView("/cat_product/cat_toy");

        if (!isFilterApplied) {
            // ✅ 필터가 없으면 전체 조회
            List<ProductDTO> list = service.catToyProducts();
            mav.addObject("productList", list);
        } else {
            // ✅ 필터가 있을 경우
            Map<String, List<String>> filters = new HashMap<>();
            int count = 0;

            if (toyType != null && !toyType.isEmpty()) { filters.put("급여대상", toyType); count++; }
            if (form != null && !form.isEmpty()) { filters.put("종류", form); count++; }
            
            if (count == 0) {
                // 필터 없음 → 전체 조회
                List<ProductDTO> list = service.catToyProducts();
                mav.addObject("productList", list);
            } else {
                // 필터 적용
                List<ProductDTO> filtered = service.catToyFilter(filters, count);
                mav.addObject("productList", filtered);
            }
        }

        return mav;
	}
	
	// 고양이 목욕용품 페이지
	@Override
	@RequestMapping("/cat_product/cat_bath.do")
	public ModelAndView catBathFilter(
			@RequestParam(required = false, value = "종류") List<String> bathType, 
			@RequestParam(required = false, value = "비듬관리여부") List<String> dandruff) 
	{
		boolean isFilterApplied = (bathType != null || dandruff != null);
        ModelAndView mav = new ModelAndView("/cat_product/cat_bath");

        if (!isFilterApplied) {
            // ✅ 필터가 없으면 전체 조회
            List<ProductDTO> list = service.catBathProducts();
            mav.addObject("productList", list);
        } else {
            // ✅ 필터가 있을 경우
            Map<String, List<String>> filters = new HashMap<>();
            int count = 0;

            if (bathType != null && !bathType.isEmpty()) { filters.put("종류", bathType); count++; }
            if (dandruff != null && !dandruff.isEmpty()) { filters.put("비듬관리여부", dandruff); count++; }
            
            if (count == 0) {
                // 필터 없음 → 전체 조회
                List<ProductDTO> list = service.catBathProducts();
                mav.addObject("productList", list);
            } else {
                // 필터 적용
                List<ProductDTO> filtered = service.catBathFilter(filters, count);
                mav.addObject("productList", filtered);
            }
        }

        return mav;
	}
	
	// 고양이 하우스 페이지
	@Override
	@RequestMapping("/cat_product/cat_house.do")
	public ModelAndView catHouseFilter(
			@RequestParam(required = false, value = "종류") List<String> houseType, 
			@RequestParam(required = false, value = "소재") List<String> capacity) 
	{
		boolean isFilterApplied = (houseType != null || capacity != null);
        ModelAndView mav = new ModelAndView("/cat_product/cat_house");

        if (!isFilterApplied) {
            // ✅ 필터가 없으면 전체 조회
            List<ProductDTO> list = service.catHouseProducts();
            mav.addObject("productList", list);
        } else {
            // ✅ 필터가 있을 경우
            Map<String, List<String>> filters = new HashMap<>();
            int count = 0;

            if (houseType != null && !houseType.isEmpty()) { filters.put("종류", houseType); count++; }
            if (capacity != null && !capacity.isEmpty()) { filters.put("소재", capacity); count++; }
            
            if (count == 0) {
                // 필터 없음 → 전체 조회
                List<ProductDTO> list = service.catHouseProducts();
                mav.addObject("productList", list);
            } else {
                // 필터 적용
                List<ProductDTO> filtered = service.catHouseFilter(filters, count);
                mav.addObject("productList", filtered);
            }
        }

        return mav;
	}
	
	// 고양이 식기 페이지
	@Override
	@RequestMapping("/cat_product/cat_dish.do")
	public ModelAndView catDishFilter(
			@RequestParam(required = false, value = "소재") List<String> material, 
			@RequestParam(required = false, value = "대상크기") List<String> size, 
			@RequestParam(required = false, value = "자동급식기") List<String> automatic) 
	{
		boolean isFilterApplied = (material != null || size != null || automatic != null);
        ModelAndView mav = new ModelAndView("/cat_product/cat_dish");

        if (!isFilterApplied) {
            // ✅ 필터가 없으면 전체 조회
            List<ProductDTO> list = service.catDishProducts();
            mav.addObject("productList", list);
        } else {
            // ✅ 필터가 있을 경우
            Map<String, List<String>> filters = new HashMap<>();
            int count = 0;

            if (size != null && !size.isEmpty()) { filters.put("대상크기", size); count++; }
            if (automatic != null && !automatic.isEmpty()) { filters.put("자동급식기", automatic); count++; }
            
            if (count == 0) {
                // 필터 없음 → 전체 조회
                List<ProductDTO> list = service.catDishProducts();
                mav.addObject("productList", list);
            } else {
                // 필터 적용
                List<ProductDTO> filtered = service.catDishFilter(filters, count);
                mav.addObject("productList", filtered);
            }
        }

        return mav;
	}
	
	// <<강아지 상점 관련>>
	
	// 강아지 상점 메인
	@Override
	@RequestMapping("/dog_product/dog_all.do")
	public String productDogAll() {
		// TODO Auto-generated method stub
		return "/dog_product/dog_all";
	}
	
	// 강아지 사료 페이지
	@Override
	@RequestMapping("/dog_product/dog_feed.do")
	public String productDogFeed() {
		// TODO Auto-generated method stub
		return "/dog_product/dog_feed";
	}
	
	// 강아지 간식 페이지
	@Override
	@RequestMapping("/dog_product/dog_treat.do")
	public String productDogTreat() {
		// TODO Auto-generated method stub
		return "/dog_product/dog_treat";
	}
	
	// 강아지 배변용품 페이지
	@Override
	@RequestMapping("/dog_product/dog_poop.do")
	public String productDogPoop() {
		// TODO Auto-generated method stub
		return "/dog_product/dog_poop";
	}
	
	// 강아지 이동장 페이지
	@Override
	@RequestMapping("/dog_product/dog_carrier.do")
	public String productDogCarrier() {
		// TODO Auto-generated method stub
		return "/dog_product/dog_carrier";
	}
	
	// 강아지 장난감 페이지
	@Override
	@RequestMapping("/dog_product/dog_toy.do")
	public String productDogToy() {
		// TODO Auto-generated method stub
		return "/dog_product/dog_toy";
	}
	
	// 강아지 목욕용품 페이지
	@Override
	@RequestMapping("/dog_product/dog_bath.do")
	public String productDogBath() {
		// TODO Auto-generated method stub
		return "/dog_product/dog_bath";
	}
	
	// 강아지 하우스 페이지
	@Override
	@RequestMapping("/dog_product/dog_house.do")
	public String productDogHouse() {
		// TODO Auto-generated method stub
		return "/dog_product/dog_house";
	}
	
	// 강아지 식기 페이지
	@Override
	@RequestMapping("/dog_product/dog_dish.do")
	public String productDogDish() {
		// TODO Auto-generated method stub
		return "/dog_product/dog_dish";
	}

}
