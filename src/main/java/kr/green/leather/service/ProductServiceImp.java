package kr.green.leather.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.leather.dao.ProductDAO;
import kr.green.leather.vo.ProductVO;

@Service
public class ProductServiceImp implements ProductService{
	
	
	@Autowired
	ProductDAO productDao;

	@Override
	public ArrayList<ProductVO> getProductList() {
		// TODO Auto-generated method stub
		return productDao.selectProductList();
	}

}
