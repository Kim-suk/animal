	package com.test.animal.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.test.animal.member.dto.MemberDTO;

public interface MemberController {
	
	public ModelAndView listMembers(HttpServletRequest request, 
			HttpServletResponse response) throws Exception;
	
	public ModelAndView memberDetail(
			@ModelAttribute("dto") MemberDTO member,
			HttpServletRequest request, 
			HttpServletResponse response) throws Exception;
	
	public ModelAndView delMember(
			@RequestParam("id") String id,
			HttpServletRequest request, 
			HttpServletResponse response) throws Exception;
	
	public ModelAndView joinMember(HttpServletRequest request, 
			HttpServletResponse response) throws Exception;
	
	public ModelAndView addMember(
			@ModelAttribute("dto") MemberDTO member,
			HttpServletRequest request, 
			HttpServletResponse response) throws Exception;

	
	public ModelAndView loginForm(
			@RequestParam(value="action", required=false) String action,
			HttpServletRequest request, 
			HttpServletResponse response) throws Exception;
	
	public ModelAndView login(
			@ModelAttribute("dto") MemberDTO member,
			RedirectAttributes rAttr,
			HttpServletRequest request, 
			HttpServletResponse response) throws Exception;
	
	public ModelAndView logout(
			RedirectAttributes rAttr,
			HttpServletRequest request, 
			HttpServletResponse response) throws Exception;

	
    public ModelAndView mypage(
            @RequestParam("id") String id,
            HttpServletRequest request, 
            HttpServletResponse response) throws Exception;

   
    public ModelAndView changePwdForm(
            HttpServletRequest request, 
            HttpServletResponse response) throws Exception;

   
 
    public ModelAndView changePwd(
    		@RequestParam("id") String id,
            @RequestParam("oldPwd") String oldPwd,
            @RequestParam("newPwd") String newPwd,
            HttpServletRequest request,
            HttpServletResponse response,
            RedirectAttributes redirectAttributes) throws Exception;

    
    public ModelAndView deleteForm(
            HttpServletRequest request, 
            HttpServletResponse response) throws Exception;

   
    public String delete(
            @RequestParam("id") String id,
            @RequestParam("pwd") String pwd,
            HttpServletRequest request, 
            HttpServletResponse response,
            RedirectAttributes responseRedirectAttributes) throws Exception;
    
	/*
	 * public String changeProfileImageForm(
	 * 
	 * @RequestParam("id") String id, HttpServletRequest request,
	 * HttpServletResponse response) throws Exception;
	 * 
	 * public String deleteProfileImage(@RequestParam("id") String id, HttpSession
	 * session, RedirectAttributes rttr);
	 */
    

    public String editForm(@RequestParam("id") String id, HttpServletRequest request);
    public String updateMember(MemberDTO member, RedirectAttributes rttr);
    
}
