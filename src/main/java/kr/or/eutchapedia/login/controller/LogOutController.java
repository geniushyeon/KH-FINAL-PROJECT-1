package kr.or.eutchapedia.login.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import kr.or.eutchapedia.login.service.MemberService;

@RestController
public class LogOutController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value = "/logout")
	public ModelAndView logout(HttpSession session) {
		ModelAndView mv = new ModelAndView();
		memberService.logout(session);
		
		mv.setViewName("/user/index_main");
		mv.addObject("msg", "logout");
		
		return mv;
		}

}