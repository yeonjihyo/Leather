package kr.green.leather.service;

import java.util.ArrayList;

import kr.green.leather.pagination.Criteria;
import kr.green.leather.vo.ProductVO;

public interface ProductService {

	ArrayList<ProductVO> getProductList(Criteria cri, String product_state);

	int getTotalCount(Criteria cri, String product_state);

}
