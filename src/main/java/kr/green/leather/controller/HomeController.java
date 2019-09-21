package kr.green.leather.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.green.leather.service.MemberService;
import kr.green.leather.vo.MemberVO;
import kr.green.leather.vo.ProductVO;


@Controller
public class HomeController {
	
	@Autowired
	MemberService memberService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	//메인
	@RequestMapping(value= "/")
	public ModelAndView openTilesView(ModelAndView mv){
	
//		MemberVO mVo =memberService.getMember("z1234567");
//		System.out.println(mVo);
		
		
		
		mv.setViewName("/main/home");
	   
	    return mv;
	}
	//회원가입
	@RequestMapping(value= "/signup", method=RequestMethod.GET)
	public ModelAndView signupGet(ModelAndView mv){
		
		//타일즈와 연결이 되어있는애임 (tiles-def.xml에 경로가 2개니까 폴더명/jsp로 써야함)
		mv.setViewName("/member/signup");
	    return mv;
	}
	@RequestMapping(value= "/signup" , method=RequestMethod.POST)
	public ModelAndView signupPost(ModelAndView mv, MemberVO mVo){
		memberService.signup(mVo);
		System.out.println(mVo);
		mv.setViewName("redirect:/");
	    return mv;
	}
	@RequestMapping(value ="/dup")
	@ResponseBody
	public boolean idcheck(@RequestBody String member_id){
		System.out.println(member_id);
		boolean isMember = memberService.getMember(member_id) != null; //id를 통해 일치하는 회원정보를 가져와서 회원정보가 null이 아니면 true 아니면 false 
	     return isMember;
	}
	//로그인
	@RequestMapping(value= "/signin",method=RequestMethod.GET)
	public ModelAndView signinGet(ModelAndView mv){
		
		
	    mv.setViewName("/member/signin");
	    return mv;
	}
	@RequestMapping(value= "/signin",method=RequestMethod.POST)
	public String signinPost(MemberVO loginInfo,Model model){
		//System.out.println(loginInfo); //로그인jsp에서 로그인할 정보가 잘 넘어오는지 찍어본다
		MemberVO user = memberService.signin(loginInfo);
		System.out.println(user);
		model.addAttribute("user", user);
		
	    return "redirect:/";
	}
	//로그아웃
	@RequestMapping(value= "/signout",method=RequestMethod.GET)
	public String signoutGet(HttpServletRequest r){
		r.getSession().removeAttribute("user");
	    return "redirect:/";
	}
}
