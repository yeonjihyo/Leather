package kr.green.leather.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.green.leather.pagination.Criteria;
import kr.green.leather.pagination.PageMaker;
import kr.green.leather.service.PageMakerService;
import kr.green.leather.service.ProductService;
import kr.green.leather.vo.ProductVO;


@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;
	@Autowired
	PageMakerService pageMakerService;
	
	//게시판리스트
	@RequestMapping(value= "/product/list",method=RequestMethod.GET)
	public ModelAndView productListGet(ModelAndView mv, Criteria cri){
		String product_state ="I";
		int num=4;
		cri.setPerPageNum(num);
		int displayPageNum=2;
		ArrayList<ProductVO> list = productService.getProductList(cri,product_state);
		int totalCount = productService.getTotalCount(cri,product_state);
		System.out.println(totalCount);
		PageMaker pm = pageMakerService.getPageMaker(displayPageNum,cri,totalCount); 
		System.out.println(pm);
	    mv.setViewName("/product/list");
	    mv.addObject("list",list);
	    mv.addObject("pageMaker",pm);
	    return mv;
	}
	
	//게시글 상세
		@RequestMapping(value= "/product/display",method=RequestMethod.GET)
		public ModelAndView productDisplayGet(ModelAndView mv,String product_code, Criteria cri){
			ProductVO product=productService.getProduct(product_code);
		    mv.setViewName("/product/display");
		    mv.addObject("product",product);
		    mv.addObject("cri",cri);
		    return mv;
		}

}
