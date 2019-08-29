package kr.green.leather.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.green.leather.pagination.Criteria;
import kr.green.leather.pagination.PageMaker;
import kr.green.leather.service.MemberService;
import kr.green.leather.service.PageMakerService;
import kr.green.leather.vo.MemberVO;

@Controller
public class AdminController {
	@Autowired
	MemberService memberService;
	@Autowired
	PageMakerService pageMakerService;


	@RequestMapping (value= "/admin/user/list", method=RequestMethod.GET)
	public ModelAndView adminUserListGet(ModelAndView mv,  Criteria cri) {
		cri.setPerPageNum(5);

		//리스트를 현재 페이지 정보를 기준으로 가져와야함 
		ArrayList<MemberVO> list=memberService.getAllMember(cri);
		//totalCount를 db에서 검색해서 가져와야함 
		int totalCount =memberService.getTotalCount();
		//jsp에서 페이지네이션링크를 board가 아닌 /admin/user/list로 수정해야함 

		PageMaker pm=pageMakerService.getPageMaker(5,cri,totalCount);

	
		
		mv.setViewName("/admin/user/list");
		mv.addObject("pageMaker", pm);
		mv.addObject("list", list);
		
		return mv;
	}
	@RequestMapping (value= "/admin/user/update", method=RequestMethod.GET)
	public ModelAndView adminUserUpdateGet(ModelAndView mv,  Criteria cri, MemberVO mVo) {
		System.out.println("dminUserUpdateGet mvo" + mVo);
		memberService.updateAuthority(mVo);
		
		mv.addObject("page",cri.getPage());
		mv.setViewName("redirect:/admin/user/list");
		return mv;
	}

}
