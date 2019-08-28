package kr.green.leather.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.green.leather.service.ProductService;
import kr.green.leather.vo.ProductVO;


@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;
	
	//게시판리스트
		@RequestMapping(value= "/product/list",method=RequestMethod.GET)
		public ModelAndView productListGet(ModelAndView mv){
			ArrayList<ProductVO> list = productService.getProductList();
		    mv.setViewName("/product/list");
		    mv.addObject("list",list);
		    return mv;
		}

}
