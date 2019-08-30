package kr.green.leather.service;

import java.util.ArrayList;

import kr.green.leather.pagination.Criteria;
import kr.green.leather.vo.ProductVO;

public interface ProductService {

	ArrayList<ProductVO> getProductList(Criteria cri, String product_state, String product_maincategory, String product_subcategory);

	int getTotalCount(Criteria cri, String product_state);

	ProductVO getProduct(String product_code);

	void registerProduct(ProductVO pVo);

	ArrayList<ProductVO> getProductList(Criteria cri, String product_state, String product_maincategory);

}
