package kr.green.leather.controller;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;

import javax.annotation.Resource;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import kr.green.leather.pagination.Criteria;
import kr.green.leather.pagination.PageMaker;
import kr.green.leather.service.PageMakerService;
import kr.green.leather.service.ProductService;
import kr.green.leather.vo.ProductVO;
import utils.UploadFileUtils;


@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;
	@Autowired
	PageMakerService pageMakerService;
	@Resource
	private String uploadPath;
	
	
	//제품리스트
	@RequestMapping(value= "/product/list",method=RequestMethod.GET)
	public ModelAndView productListGet(ModelAndView mv, Criteria cri, String product_maincategory, String product_subcategory){
		String product_state ="I";
		cri.setPerPageNum(4);
		int displayPageNum=2;
		//System.out.println(cri);
		
		ArrayList<ProductVO> list;
		int totalCount=0;
		//System.out.println(product_maincategory +"," + product_subcategory);
		if((product_maincategory == null || product_maincategory.length() ==0) && (product_subcategory == null || product_subcategory.length() ==0)) {
			list = productService.getProductList(cri,product_state);
			totalCount = productService.getTotalCount(cri,product_state);
		}
		else if(product_subcategory != null && product_subcategory.length() !=0) {
			list = productService.getProductList(cri,product_state,product_maincategory,product_subcategory);
			totalCount = productService.getTotalCount(cri,product_state,product_maincategory,product_subcategory);
		}else{
			list = productService.getProductList(cri,product_state,product_maincategory);
			totalCount = productService.getTotalCount(cri,product_state,product_maincategory);
		}
	
		
		PageMaker pm = pageMakerService.getPageMaker(displayPageNum,cri,totalCount); 
		
		
	    mv.setViewName("/product/list");
	    mv.addObject("list",list);
	    mv.addObject("pageMaker",pm);
	    mv.addObject("product_maincategory",product_maincategory);
	    mv.addObject("product_subcategory",product_subcategory);
	    return mv;
	}
	
	
	//제품 등록
		@RequestMapping(value= "/product/register",method=RequestMethod.GET)
		public ModelAndView productRegisterGet(ModelAndView mv) throws Exception{

		    mv.setViewName("/product/register");
		    return mv;
		}
		@RequestMapping(value= "/product/register",method=RequestMethod.POST)
		public ModelAndView productRegisterPost(ModelAndView mv,ProductVO pVo,MultipartFile file2) throws Exception{
			//System.out.println("productRegisterPost pVo : " + pVo);
			if(file2.getOriginalFilename().length() != 0) {
				String file = UploadFileUtils.uploadFile(uploadPath, file2.getOriginalFilename(),file2.getBytes());
				pVo.setFile(file);
			}
			
			
			productService.registerProduct(pVo);
			 mv.setViewName("redirect:/product/list");
		    return mv;
		}
		
		
		
		
		//제품 상세
		@RequestMapping(value= "/product/display",method=RequestMethod.GET)
		public ModelAndView productDisplayGet(ModelAndView mv,String product_code, Criteria cri){
			ProductVO product=productService.getProduct(product_code);
			product =productService.increaseViews(product);
		    mv.setViewName("/product/display");
		    mv.addObject("product",product);
		    mv.addObject("cri",cri);
		    return mv;
		}
		
		//파일 다운로드
		@ResponseBody
		@RequestMapping("/board/download")
		public ResponseEntity<byte[]> downloadFile(String fileName)throws Exception{
		    InputStream in = null;
		    ResponseEntity<byte[]> entity = null;
		    try{
		        String FormatName = fileName.substring(fileName.lastIndexOf(".")+1);
		        HttpHeaders headers = new HttpHeaders();
		        in = new FileInputStream(uploadPath+fileName);

		        fileName = fileName.substring(fileName.indexOf("_")+1);
		        headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		        headers.add("Content-Disposition",  "attachment; filename=\"" 
					+ new String(fileName.getBytes("UTF-8"), "ISO-8859-1")+"\"");
		        entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in),headers,HttpStatus.CREATED);
		    }catch(Exception e) {
		        e.printStackTrace();
		        entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
		    }finally {
		        in.close();
		    }
		    return entity;
		}
}
