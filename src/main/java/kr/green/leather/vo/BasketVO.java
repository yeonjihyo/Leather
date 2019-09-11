package kr.green.leather.vo;

public class BasketVO extends ProductVO {
	private int basket_no;
	private String basket_product_code;
	private String basket_member_id;
	private int basket_deliverycost;
	private int basket_total;
	private int cnt;
	private String basket_state;
	
	
	public int getBasket_no() {
		return basket_no;
	}
	public void setBasket_no(int basket_no) {
		this.basket_no = basket_no;
	}
	public String getBasket_product_code() {
		return basket_product_code;
	}
	public void setBasket_product_code(String basket_product_code) {
		this.basket_product_code = basket_product_code;
	}
	public String getBasket_member_id() {
		return basket_member_id;
	}
	public void setBasket_member_id(String basket_member_id) {
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
	public String getBasket_state() {
		return basket_state;
	}
	public void setBasket_state(String basket_state) {
		this.basket_state = basket_state;
	}
	@Override
	public String toString() {
		return "BasketVO [basket_no=" + basket_no + ", basket_product_code=" + basket_product_code
				+ ", basket_member_id=" + basket_member_id + ", basket_deliverycost=" + basket_deliverycost
				+ ", basket_total=" + basket_total + ", cnt=" + cnt + ", basket_state=" + basket_state + "]";
	}
	
	
	
	
	
}
