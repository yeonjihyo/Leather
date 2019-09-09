package kr.green.leather.vo;

public class BasketVO {
	private int basket_no;
	private int basket_product_code;
	private int basket_member_id;
	private int basket_deliverycost;
	private int basket_total;
	private int cnt;
	
	
	public int getBasket_no() {
		return basket_no;
	}
	public void setBasket_no(int basket_no) {
		this.basket_no = basket_no;
	}
	public int getBasket_product_code() {
		return basket_product_code;
	}
	public void setBasket_product_code(int basket_product_code) {
		this.basket_product_code = basket_product_code;
	}
	public int getBasket_member_id() {
		return basket_member_id;
	}
	public void setBasket_member_id(int basket_member_id) {
		this.basket_member_id = basket_member_id;
	}
	public int getBasket_deliverycost() {
		return basket_deliverycost;
	}
	public void setBasket_deliverycost(int basket_deliverycost) {
		this.basket_deliverycost = basket_deliverycost;
	}
	public int getBasket_total() {
		return basket_total;
	}
	public void setBasket_total(int basket_total) {
		this.basket_total = basket_total;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	@Override
	public String toString() {
		return "BasketVO [basket_no=" + basket_no + ", basket_product_code=" + basket_product_code
				+ ", basket_member_id=" + basket_member_id + ", basket_deliverycost=" + basket_deliverycost
				+ ", basket_total=" + basket_total + ", cnt=" + cnt + "]";
	}
	
	
	
}
