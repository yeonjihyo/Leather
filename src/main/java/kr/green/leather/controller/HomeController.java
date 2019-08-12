package kr.green.leather.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import kr.green.leather.service.MemberService;
import kr.green.leather.vo.MemberVO;


@Controller
public class HomeController {
	
	@Autowired
	MemberService memberService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	

	@RequestMapping(value= {"/"})
	public ModelAndView openTilesView(ModelAndView mv) throws Exception{
	
		MemberVO mVo =memberService.getMember("z1234567");
		System.out.println(mVo);
		
		mv.setViewName("/main/home");
	    mv.addObject("setHeader", "안녕하세요");
	    return mv;
	}
	
}
