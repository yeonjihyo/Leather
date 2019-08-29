package kr.green.leather.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.leather.dao.ProductDAO;
import kr.green.leather.pagination.Criteria;
import kr.green.leather.vo.ProductVO;

@Service
public class ProductServiceImp implements ProductService{
	
	
	@Autowired
	ProductDAO productDao;

	@Override
	public ArrayList<ProductVO> getProductList(Criteria cri, String product_state) {
		// TODO Auto-generated method stub
		return productDao.selectProductList(cri, product_state);
	}

	@Override
	public int getTotalCount(Criteria cri, String product_state) {
		// TODO Auto-generated method stub
		return productDao.selectCountList(cri, product_state);
	}

	@Override
	public ProductVO getProduct(String product_code) {
		// TODO Auto-generated method stub
		return productDao.selectProduct(product_code);
	}

	@Override
	public void registerProduct(ProductVO pVo) {
		productDao.insertProduct(pVo);
		
	}

}
