package com.test.animal.member.controller;

import java.io.File;
import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.test.animal.member.service.MemberService;
import com.test.animal.member.service.MemberServiceImpl;
import com.test.animal.cart.service.CartService;
import com.test.animal.member.dto.MemberDTO;

@Controller
@EnableAspectJAutoProxy
public class MemberControllerImpl implements MemberController{
	@Autowired
	private MemberService service;
	@Autowired
	private CartService cartService;

	private static final Logger logger = LoggerFactory.getLogger(MemberControllerImpl.class);

	/*
	 * @Override
	 * 
	 * @RequestMapping("/member/listMembers.do") public ModelAndView
	 * listMembers(HttpServletRequest request, HttpServletResponse response) throws
	 * Exception { // TODO Auto-generated method stub ModelAndView mav = new
	 * ModelAndView(); HttpSession session = request.getSession(false); String
	 * viewName = (String) request.getAttribute("viewName");
	 * 
	 * Boolean login = (Boolean) session.getAttribute("isLogin");
	 * 
	 * if (login != null && login == true) { List<MemberDTO> membersList =
	 * service.listMembers(); mav.addObject("membersList", membersList);
	 * mav.setViewName(viewName); } else { mav.addObject("result", "notLogin");
	 * mav.setViewName("redirect:/member/loginForm.do"); } return mav; }
	 * 
	 * @Override
	 * 
	 * @RequestMapping("/member/memberDetail.do") public ModelAndView memberDetail(
	 * 
	 * @ModelAttribute("dto") MemberDTO member, HttpServletRequest request,
	 * HttpServletResponse response) throws Exception { // TODO Auto-generated
	 * method stub String viewName = (String) request.getAttribute("viewName");
	 * ModelAndView mav = new ModelAndView(viewName);
	 * 
	 * member = service.memberDetail(member.getId()); mav.addObject("member",
	 * member); return mav; }
	 * 
	 * @Override
	 * 
	 * @RequestMapping("/member/delMember.do") public ModelAndView delMember(
	 * 
	 * @RequestParam("id") String id, HttpServletRequest request,
	 * HttpServletResponse response) throws Exception { // TODO Auto-generated
	 * method stub int result = service.delMember(id);
	 * 
	 * ModelAndView mav = new ModelAndView(); if(result != 0) { mav.addObject("msg",
	 * "delMember"); mav.addObject("id", id); } else { mav.addObject("msg",
	 * "delMember"); mav.addObject("id", null); }
	 * mav.setViewName("redirect:/member/listMembers.do"); return mav; }
	 */

	@Override
	@RequestMapping("/member/joinMember.do")
	public ModelAndView joinMember(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		return mav;
	}

	@Override
	@RequestMapping("/member/addMember.do")
	public ModelAndView addMember(MemberDTO member, HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		System.out.println("회원가입 요청: " + member);

		int result = service.addMember(member);
		System.out.println("insert 결과: " + result);

		ModelAndView mav = new ModelAndView();
		if (result > 0) {
			HttpSession session = request.getSession();   
			session.setAttribute("member", member);
			session.setAttribute("loginId", member.getId());
			session.setAttribute("loginName", member.getName());
			session.setAttribute("isLogin", true);
			mav.setViewName("redirect:/member/loginForm.do");
		} else {
			mav.setViewName("redirect:/member/joinMember.do");
		}
		return mav;
	}

	@Override
	@RequestMapping("/member/loginForm.do")
	public ModelAndView loginForm(
			@RequestParam(value="action", required=false) String action,
			HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		String viewName = (String) request.getAttribute("viewName");

		HttpSession session = request.getSession();
		session.setAttribute("action", action);
		ModelAndView mav = new ModelAndView(viewName);
		return mav;
	}

	@Override
	@RequestMapping(value="/member/login.do", method=RequestMethod.POST)
	public ModelAndView login(MemberDTO member, 
			RedirectAttributes rAttr,
			HttpServletRequest request, HttpServletResponse response)
					throws Exception {

		System.out.println("폼에서 전달된 ID: " + member.getId());
		System.out.println("폼에서 전달된 PWD: " + member.getPwd());

		member = service.login(member); // 濡쒓렇 씤  떆 룄

		System.out.println(member);
		System.out.println("로그인 결과: " + (member != null ? "성공 - " + member.getName() : "실패"));


		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();

		if (member != null) {
			// 濡쒓렇 씤  꽦怨   떆  꽭 뀡  꽕 젙
			session.setAttribute("loginMember", member);
			session.setAttribute("loginId", member.getId());
			session.setAttribute("loginName", member.getName());
			session.setAttribute("isLogin", true);

			String action = (String) session.getAttribute("action");
			session.removeAttribute("action");

			if (action != null) {
				mav.setViewName("redirect:" + action);
			} else {
				mav.setViewName("redirect:/main.do");
			}
		} else {
			mav.setViewName("redirect:/member/loginForm.do");
			rAttr.addAttribute("result", "loginFailed");
		}

		return mav;
	}

	@Override

	@RequestMapping("/member/logout.do")
	public ModelAndView logout(
			RedirectAttributes rAttr,
			HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		HttpSession session = request.getSession(false);
		ModelAndView mav = new ModelAndView();

		if (session != null) {
			Boolean isLogin = (Boolean) session.getAttribute("isLogin");
			if (isLogin != null && isLogin) {

				// 장바구니 비우기
				String memberId = (String) session.getAttribute("loginId");
				if (memberId != null) {
					cartService.deleteCartByMemberId(memberId);
					//service.deleteCartByMemberId(memberId);
				}

				session.invalidate();
				rAttr.addAttribute("result", "logout");
			} else {
				rAttr.addAttribute("result", "notLogin");
			}
		} else {
			rAttr.addAttribute("result", "notLogin");
		}

		mav.setViewName("redirect:/member/loginForm.do");
		return mav;
	}

	//

	@Override
	@RequestMapping("/member/mypage.do")  // animal/member/mypage.do?id=xxxx 
	public ModelAndView mypage(@RequestParam("id") String id, HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView("/member/mypage");

		MemberDTO member = service.memberDetail(id);
		mav.addObject("member", member);
		return mav;
	}

	@Override
	@RequestMapping("/member/changePwdForm.do")
	public ModelAndView changePwdForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return new ModelAndView("/member/changePwdForm");
	}

	@Override
	@RequestMapping("/member/changePwd.do")
	public ModelAndView changePwd(@RequestParam("id") String id,
			@RequestParam("oldPwd") String oldPwd,
			@RequestParam("newPwd") String newPwd,
			HttpServletRequest request,
			HttpServletResponse response,
			RedirectAttributes redirectAttributes) throws Exception {
		ModelAndView mav = new ModelAndView("redirect:/member/mypage.do");
		boolean isOldPwdCorrect = service.validateOldPwd(id, oldPwd);


		System.out.println("boolean 판별 :" + isOldPwdCorrect);

		if (isOldPwdCorrect) {
			int result = service.changePwd(id, newPwd);
			if (result > 0) {
				redirectAttributes.addFlashAttribute("msg", "비밀번호가 성공적으로 변경되었습니다.");
			} else {
				redirectAttributes.addFlashAttribute("msg", "비밀번호 변경에 실패했습니다.");
			}
		} else {
			redirectAttributes.addFlashAttribute("msg", "현재 비밀번호가 일치하지 않습니다.");
		}
		mav.addObject("id", id);
		return mav;
	}

	/*
	 * @Override
	 * 
	 * @RequestMapping("/member/deleteForm.do") public ModelAndView
	 * deleteForm(HttpServletRequest request, HttpServletResponse response) throws
	 * Exception { return new ModelAndView("member/deleteForm"); }
	 */


	 // 프로필 이미지 변경 폼
		/*
		 * @Override
		 * 
		 * @RequestMapping("/member/changeProfileImageForm.do") public String
		 * changeProfileImageForm(@RequestParam("id")String id, HttpServletRequest
		 * request, HttpServletResponse response) { ModelAndView mav = new
		 * ModelAndView("/member/changeProfileImageForm"); mav.addObject("id", id);
		 * return "redirect:/member/changeProfileImageForm.do?id=" + id; }
		 * 
		 * // 프로필 이미지 업로드 처리
		 * 
		 * @RequestMapping(value = "/member/changeProfileImage.do", method =
		 * RequestMethod.POST) public String changeProfileImage(@RequestParam("id")
		 * String id,
		 * 
		 * @RequestParam("profileImage") MultipartFile file, HttpSession session,
		 * RedirectAttributes rttr) { try { if (!file.isEmpty()) { String uploadDir =
		 * "/upload/profile/"; String realPath =
		 * session.getServletContext().getRealPath(uploadDir);
		 * 
		 * File dir = new File(realPath); if (!dir.exists()) dir.mkdirs();
		 * 
		 * String originalFilename = file.getOriginalFilename(); String ext =
		 * originalFilename.substring(originalFilename.lastIndexOf(".")); String
		 * newFileName = UUID.randomUUID().toString() + ext;
		 * 
		 * File saveFile = new File(realPath, newFileName); file.transferTo(saveFile);
		 * 
		 * MemberDTO member = new MemberDTO(); member.setId(id);
		 * member.setProfileImg(newFileName);
		 * 
		 * service.changeProfileImage(member);
		 * 
		 * MemberDTO updatedMember = service.getMemberById(id);
		 * session.setAttribute("loginMember", updatedMember);
		 * 
		 * rttr.addFlashAttribute("msg", "프로필 이미지가 변경되었습니다."); } else {
		 * rttr.addFlashAttribute("error", "파일을 선택해주세요."); } } catch (Exception e) {
		 * e.printStackTrace(); rttr.addFlashAttribute("error", "이미지 변경 중 오류 발생"); }
		 * 
		 * return "redirect:/member/changeProfileImageForm.do?id=" + id; }
		 * 
		 * 
		 * // 프로필 이미지 삭제 (기본 이미지로)
		 * 
		 * @RequestMapping("/member/deleteProfileImage.do") public String
		 * deleteProfileImage(@RequestParam("id") String id, HttpSession session,
		 * RedirectAttributes rttr) { try { MemberDTO member =
		 * service.getMemberById(id); if (member == null || member.getProfileImg() ==
		 * null) { rttr.addFlashAttribute("error", "기본 이미지로 설정되어 있습니다."); return
		 * "redirect:/member/changeProfileImageForm.do?id=" + id; }
		 * 
		 * String uploadDir = "/upload/profile/"; String realPath =
		 * session.getServletContext().getRealPath(uploadDir); File imageFile = new
		 * File(realPath, member.getProfileImg());
		 * 
		 * if (imageFile.exists()) imageFile.delete();
		 * 
		 * member.setProfileImg(null); // 또는 "default.png"로 설정
		 * service.changeProfileImage(member);
		 * 
		 * session.setAttribute("loginMember", service.getMemberById(id));
		 * rttr.addFlashAttribute("msg", "기본 프로필 이미지로 변경되었습니다."); } catch (Exception e)
		 * { e.printStackTrace(); rttr.addFlashAttribute("error",
		 * "프로필 이미지 삭제 중 오류가 발생했습니다."); }
		 * 
		 * return "redirect:/member/changeProfileImageForm.do?id=" + id; }
		 */

	/*
	 * @RequestMapping("/member/delete.do") public String delete(@RequestParae
	 * String id,
	 * 
	 * @RequestParam String pwd, HttpServletRequest request, HttpServletResponse
	 * response, RedirectAttributes redirectAttributes) throws Exception {
	 * 
	 * boolean isPwdCorrect = service.validateOldPwd(id, pwd);
	 * 
	 * if (isPwdCorrect) { int result = service.deleteMember(id); if (result > 0) {
	 * redirectAttributes.addFlashAttribute("msg", "회원 탈퇴가 완료되었습니다."); return
	 * "redirect:/member/logout.do"; } else {
	 * redirectAttributes.addFlashAttribute("msg", "회원 탈퇴에 실패했습니다."); } } else {
	 * redirectAttributes.addFlashAttribute("msg", "비밀번호가 올바르지 않습니다."); }
	 * 
	 * return "redirect:/member/mypage.do"; }
	 */

	// 회원 정보 수정 폼 페이지
	@RequestMapping("/member/editForm.do")
	public String editForm(@RequestParam("id") String id, HttpServletRequest request) {
		// DB에서 id로 회원 정보를 조회하여 model에 추가
		MemberDTO member = service.getMemberById(id);
		request.setAttribute("member", member);
		return "/member/editForm";  // editForm.jsp로 이동
	}

	// 회원 정보 수정 처리
	@RequestMapping("/member/edit.do")
	public String updateMember(MemberDTO member, RedirectAttributes rttr) {
		try {
			service.updateMember(member);
			rttr.addFlashAttribute("msg", "회원 정보가 수정되었습니다.");
		} catch (Exception e) {
			rttr.addFlashAttribute("msg", "회원 정보 수정에 실패했습니다.");
		}
		return "redirect:/member/mypage.do?id=" + member.getId();
	}
	
	// 회원 탈퇴 폼 보여주기
	@RequestMapping(value = "/member/deleteForm.do", method = RequestMethod.GET)
	public ModelAndView deleteForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
	    ModelAndView mav = new ModelAndView();
	    mav.setViewName("/member/deleteForm");
	    return mav;
	}
	
	// 회원 탈퇴 처리
	@RequestMapping(value = "/member/deleteForm.do", method = RequestMethod.POST)
	public String deleteMember(@RequestParam("id") String id,
	                           @RequestParam("pwd") String pwd,
	                           HttpSession session,
	                           RedirectAttributes rttr) {
	    MemberDTO member = service.getMemberById(id);

	    // 비밀번호 검증
	    if (member == null || !member.getPwd().equals(pwd)) {
	        rttr.addFlashAttribute("error", "비밀번호가 일치하지 않습니다.");
	        return "redirect:/member/deleteForm.do";
	    }

	    // 탈퇴 처리
	    try {
	        service.deleteMember(id);
	        rttr.addFlashAttribute("msg", "회원 탈퇴가 완료되었습니");
	        session.invalidate(); // 세션 종료
	        return "redirect:/"; // 메인 페이지로 이동
	    } catch (Exception e) {
	        rttr.addFlashAttribute("error", "회원 탈퇴에 실패했습니다.");
	        return "redirect:/member/deleteForm.do";
	    }
	}


@Override
public ModelAndView listMembers(HttpServletRequest request, HttpServletResponse response) throws Exception {
	// TODO Auto-generated method stub
	return null;
}

@Override
public ModelAndView memberDetail(MemberDTO member, HttpServletRequest request, HttpServletResponse response)
		throws Exception {
	// TODO Auto-generated method stub
	return null;
}

@Override
public ModelAndView delMember(String id, HttpServletRequest request, HttpServletResponse response) throws Exception {
	// TODO Auto-generated method stub
	return null;
}

@Override
public String delete(String id, String pwd, HttpServletRequest request, HttpServletResponse response,
		RedirectAttributes responseRedirectAttributes) throws Exception {
	// TODO Auto-generated method stub
	return null;
}
}


