package kr.green.leather.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.leather.pagination.Criteria;
import kr.green.leather.vo.ProductVO;

public interface ProductDAO {

	//매개변수가 2개 이상일때 매퍼가 @Param("cri")없이보내면 인식을 못함
	ArrayList<ProductVO> selectProductList(@Param("cri")Criteria cri,@Param("product_state")String product_state,
										@Param("product_maincategory")String product_maincategory, @Param("product_subcategory")String product_subcategory);

	int selectCountList(@Param("cri")Criteria cri,@Param("product_state")String product_state);

	ProductVO selectProduct(@Param("product_code")String product_code);

	void insertProduct(@Param("product")ProductVO product);

	ArrayList<ProductVO> selectCategoryList(@Param("cri")Criteria cri, @Param("product_state")String product_state, @Param("product_maincategory")String product_maincategory);



}
