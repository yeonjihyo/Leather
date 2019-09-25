package kr.green.leather.service;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.green.leather.dao.ProductDAO;
import kr.green.leather.pagination.Criteria;
import kr.green.leather.vo.BasketVO;
import kr.green.leather.vo.DeliverVO;
import kr.green.leather.vo.MemberVO;
import kr.green.leather.vo.OrderVO;
import kr.green.leather.vo.ProductVO;

@Service
public class ProductServiceImp implements ProductService{
	
	
	@Autowired
	ProductDAO productDao;

	@Override
	public ArrayList<ProductVO> getProductList(Criteria cri, String product_state, String product_maincategory, String product_subcategory) {
		// TODO Auto-generated method stub
		return productDao.selectProductList(cri, product_state,product_maincategory,product_subcategory);
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

	@Override
	public ArrayList<ProductVO> getProductList(Criteria cri, String product_state, String product_maincategory) {
		// TODO Auto-generated method stub
		return  productDao.selectCategoryList(cri, product_state,product_maincategory);
	}

	@Override
	public ArrayList<ProductVO> getProductList(Criteria cri, String product_state) {
		// TODO Auto-generated method stub
		return productDao.getProductListAll(cri, product_state);
	}

	@Override
	public int getTotalCount(Criteria cri, String product_state, String product_maincategory,
			String product_subcategory) {
		// TODO Auto-generated method stub
		return productDao.selectCountCategoryList(cri, product_state,product_maincategory,product_subcategory);
	}

	@Override
	public int getTotalCount(Criteria cri, String product_state, String product_maincategory) {
		// TODO Auto-generated method stub
		return productDao.selectCountListAll(cri, product_state,product_maincategory);
	}

	@Override
	public ProductVO increaseViews(ProductVO product) {
		int product_views = product.getProduct_views();
		product.setProduct_views(product_views+1);
		productDao.updateProduct(product);
		return product;
	}

	@Override
	public void modifyProduct(ProductVO product) {
		
		
		
		productDao.updateProduct(product);
		
	}

	@Override
	public boolean isWriter(String product_code, HttpServletRequest r) {
		//System.out.println(product_code);
		ProductVO product = productDao.selectProduct(product_code);
		MemberVO user = (MemberVO)r.getSession().getAttribute("user");
		if(product != null && product.getProduct_writer().equals(user.getMember_id())) {
			return true;
		}
		return false;
	}

	@Override
	public void choiceProduct(ProductVO cPVo,Integer cnt,String member_id,Integer product_total) {
		productDao.basketInsert(cPVo,cnt,member_id,product_total);
	}

	@Override
	public ArrayList<BasketVO> getBasketList(String member_id) {
		// TODO Auto-generated method stub
		return productDao.selectBasketList(member_id);
	}

	@Override
	public void deleteBasket(String basket_no) {
		productDao.deleteBasket(basket_no);
		
	}

	@Override
	public Integer checkBasket(Integer tmp,Integer orderTotal) {
		BasketVO bVo = productDao.getBasket(tmp);
		
		if(bVo != null) {
			productDao.orderInsert(bVo,orderTotal);
			return productDao.getOrderLastNum();
		}
		return null;
	}

	

	@Override
	public ArrayList<BasketVO> getBasketList(Integer[] basket_check,Integer[]cnt,Integer []product_total) {
		ArrayList<BasketVO> list = new ArrayList<BasketVO>();
		for(int i = 0; i<basket_check.length; i++) {
			Integer tmp = basket_check[i];
			BasketVO bvo = productDao.getBasket(tmp);
			bvo.setCnt(cnt[i]);
			bvo.setBasket_total(product_total[i]);
			list.add(bvo);
			
		}
		return list;
	}

	@Override
	public void deliverInfo(DeliverVO dVo, ArrayList<Integer> orderNumList) {
		for(Integer tmp : orderNumList) {
			dVo.setDeliver_order_num(tmp);
			productDao.deliverInsert(dVo);
		}
	
	}

	
	@Override
	public ArrayList<ProductVO> getMainProductList( String product_state) {
		// TODO Auto-generated method stub
		return productDao.getMainProductListAll(product_state);
	}

	@Override
	public ArrayList<ProductVO> getMainProductList2(String product_state) {
		// TODO Auto-generated method stub
		return productDao.getMainProductListAll2(product_state);
	}

	@Override
	public ArrayList<BasketVO> getOrder(String member_id) {
		// TODO Auto-generated method stub
		return productDao.getOrder(member_id);
	}

	@Override
	public Integer orderInsert2(ProductVO pVo, Integer cnt, String member_id, Integer orderTotal) {
		
		productDao.orderInsert2(pVo,cnt,member_id,orderTotal);
		return  productDao.getOrderLastNum();
	}

	@Override
	public void orderProduct(ProductVO pVo) {
		productDao.orderProduct(pVo);
		
	}

	@Override
	public void deliverInfo(DeliverVO dVo,Integer order_num) {
		//오더브이오에있는 오더 넘을 딜리버오더넘에 넣어주는 과정 
		dVo.setDeliver_order_num(order_num);
		productDao.deliverInsert(dVo);
		
		
	}

	@Override
	public void deleteProduct(String product_code) {
		ProductVO product = productDao.selectProduct(product_code);
		if(product == null){
			return;
		}
		product.setProduct_state("D");
		productDao.updateProduct(product);
		
	}

}
