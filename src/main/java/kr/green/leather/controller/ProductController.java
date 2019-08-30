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
	
	//제품리스트
	@RequestMapping(value= "/product/list",method=RequestMethod.GET)
	public ModelAndView productListGet(ModelAndView mv, Criteria cri, String product_maincategory, String product_subcategory){
		String product_state ="I";
		int num=4;
		cri.setPerPageNum(num);
		int displayPageNum=2;
		
		ArrayList<ProductVO> list;
		
		if(product_subcategory != null) {
			list = productService.getProductList(cri,product_state,product_maincategory,product_subcategory);
		}else {
			list = productService.getProductList(cri,product_state,product_maincategory);
		}
		
		int totalCount = productService.getTotalCount(cri,product_state);
		//System.out.println(totalCount);
		
		PageMaker pm = pageMakerService.getPageMaker(displayPageNum,cri,totalCount); 
		//System.out.println(pm);
	    mv.setViewName("/product/list");
	    mv.addObject("list",list);
	    mv.addObject("pageMaker",pm);
	    return mv;
	}
	
	//제품 상세
		@RequestMapping(value= "/product/display",method=RequestMethod.GET)
		public ModelAndView productDisplayGet(ModelAndView mv,String product_code, Criteria cri){
			ProductVO product=productService.getProduct(product_code);
		    mv.setViewName("/product/display");
		    mv.addObject("product",product);
		    mv.addObject("cri",cri);
		    return mv;
		}
	//제품 등록
		@RequestMapping(value= "/product/register",method=RequestMethod.GET)
		public ModelAndView productRegisterGet(ModelAndView mv) throws Exception{

		    mv.setViewName("/product/register");
		    return mv;
		}
		@RequestMapping(value= "/product/register",method=RequestMethod.POST)
		public String productRegisterPost(ProductVO pVo) throws Exception{
			productService.registerProduct(pVo);
		    return "redirect:/product/list";
		}
}
