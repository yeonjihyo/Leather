package kr.green.leather.dao;

import java.util.ArrayList;

import kr.green.leather.vo.ProductVO;

public interface ProductDAO {

	ArrayList<ProductVO> selectProductList();

}
