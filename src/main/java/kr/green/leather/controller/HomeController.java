package kr.green.leather.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.green.leather.service.MemberService;
import kr.green.leather.vo.MemberVO;


@Controller
public class HomeController {
	
	@Autowired
	MemberService memberService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	//메인
	@RequestMapping(value= "/")
	public ModelAndView openTilesView(ModelAndView mv){
	
		MemberVO mVo =memberService.getMember("z1234567");
		System.out.println(mVo);
		
		mv.setViewName("/main/home");
	    mv.addObject("setHeader", "안녕하세요");
	    return mv;
	}
	//회원가입
	@RequestMapping(value= "/member/signup", method=RequestMethod.GET)
	public ModelAndView signupGet(ModelAndView mv){
		
		mv.setViewName("/member/signup");//타일즈와 연결이 되어있는애임 (tiles-def.xml에 경로가 2개니까 폴더명/jsp로 써야함)
	    return mv;
	}
	@RequestMapping(value= "/member/signup" , method=RequestMethod.POST)
	public ModelAndView signupPost(ModelAndView mv){
		
		mv.setViewName("/member/signup");//타일즈와 연결이 되어있는애임 (tiles-def.xml에 경로가 2개니까 폴더명/jsp로 써야함)
	    return mv;
	}
	@RequestMapping(value ="/dup")
	@ResponseBody
	public boolean idcheck(@RequestBody String id){
		//map 여러개의데이터를한번에보낼때사용
		//그외에는 내가원하는 자료형 넣어주면 됨
		boolean isMember = memberService.getMember(id) != null; //id를 통해 일치하는 회원정보를 가져와서 회원정보가 null이 아니면 true 아니면 false 
	     return isMember;
	     //return memberService.getMember(id) != null; 와 같음
	}
}
