package kr.green.leather.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;

import kr.green.leather.pagination.Criteria;
import kr.green.leather.vo.BasketVO;
import kr.green.leather.vo.DeliverVO;
import kr.green.leather.vo.OrderVO;
import kr.green.leather.vo.ProductVO;

public interface ProductDAO {

	//매개변수가 2개 이상일때 매퍼가 @Param("cri")없이보내면 인식을 못함
	ArrayList<ProductVO> selectProductList(@Param("cri")Criteria cri,@Param("product_state")String product_state,
										@Param("product_maincategory")String product_maincategory, @Param("product_subcategory")String product_subcategory);

	int selectCountList(@Param("cri")Criteria cri,@Param("product_state")String product_state);

	ProductVO selectProduct(@Param("product_code")String product_code);

	void insertProduct(@Param("product")ProductVO product);

	ArrayList<ProductVO> selectCategoryList(@Param("cri")Criteria cri, @Param("product_state")String product_state, @Param("product_maincategory")String product_maincategory);

	ArrayList<ProductVO> getProductListAll(@Param("cri")Criteria cri,  @Param("product_state")String product_state);

	int selectCountCategoryList(@Param("cri")Criteria cri, @Param("product_state")String product_state, @Param("product_maincategory")String product_maincategory,
			@Param("product_subcategory")String product_subcategory);

	int selectCountListAll(@Param("cri")Criteria cri, @Param("product_state")String product_state, @Param("product_maincategory")String product_maincategory);

	void updateProduct(@Param("product")ProductVO product);

	void basketInsert(@Param("cPVo")ProductVO cPVo,@Param("cnt")Integer cnt,@Param("member_id")String member_id,@Param("product_total")Integer product_total);

	ArrayList<BasketVO> selectBasketList(@Param("member_id")String member_id);

	void deleteBasket(@Param("basket_no")String basket_no);

	BasketVO getBasket(@Param("tmp")Integer tmp);
	
	void orderInsert(@Param("bVo")BasketVO bVo);

	void deliverInsert(@Param("dVo")DeliverVO dVo);

	ArrayList<ProductVO> getMainProductListAll(@Param("product_state")String product_state);

	ArrayList<ProductVO> getMainProductListAll2(@Param("product_state")String product_state);

	Integer getOrderLastNum();

	ArrayList<BasketVO> getOrder(@Param("member_id")String member_id);

	void orderInsert2(@Param("pVo")ProductVO cPVo,@Param("cnt")Integer cnt, @Param("member_id")String member_id, @Param("product_total")Integer product_total);

	void orderProduct(@Param("pVo")ProductVO pVo);


	



	

	



}
