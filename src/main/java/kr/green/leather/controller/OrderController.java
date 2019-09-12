package kr.green.leather.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class OrderController {
	
	//주문
	@RequestMapping(value= "/product/order",method=RequestMethod.GET)
	public ModelAndView productOrderGet(ModelAndView mv){
		
		mv.setViewName("/product/order");
		return mv;
	}

}
