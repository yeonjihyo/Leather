package kr.green.leather.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import kr.green.leather.pagination.Criteria;
import kr.green.leather.vo.BasketVO;
import kr.green.leather.vo.DeliverVO;
import kr.green.leather.vo.OrderVO;
import kr.green.leather.vo.ProductVO;

public interface ProductService {

	ArrayList<ProductVO> getProductList(Criteria cri, String product_state, String product_maincategory, String product_subcategory);

	int getTotalCount(Criteria cri, String product_state);

	ProductVO getProduct(String product_code);

	void registerProduct(ProductVO pVo);

	ArrayList<ProductVO> getProductList(Criteria cri, String product_state, String product_maincategory);

	ArrayList<ProductVO> getProductList(Criteria cri, String product_state);

	int getTotalCount(Criteria cri, String product_state, String product_maincategory, String product_subcategory);

	int getTotalCount(Criteria cri, String product_state, String product_maincategory);

	ProductVO increaseViews(ProductVO product);

	void modifyProduct(ProductVO pVo);

	boolean isWriter(String product_code, HttpServletRequest r);

	void choiceProduct(ProductVO cPVo,Integer cnt,String member_id,Integer product_total);

	ArrayList<BasketVO> getBasketList(String member_id);

	void deleteBasket(String basket_no);

	Integer checkBasket(Integer tmp,Integer orderTotal);

	ArrayList<BasketVO> getBasketList(Integer[] basket_check,Integer[]cnt,Integer []product_total);

	void deliverInfo(DeliverVO dVo, ArrayList<Integer> orderNumList);

	ArrayList<ProductVO> getMainProductList(String product_state);

	ArrayList<ProductVO> getMainProductList2(String product_state);

	ArrayList<BasketVO> getOrder(String member_id);

	Integer orderInsert2(ProductVO pVo, Integer cnt, String member_id, Integer orderTotal);

	void orderProduct(ProductVO pVo);

	void deliverInfo(DeliverVO dVo,Integer order_num);

	


	

}
