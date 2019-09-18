package kr.green.leather.vo;

import java.util.Date;

public class OrderVO extends BasketVO {
	private int order_num;
	private String order_member_id;
	private String order_product_code;
	private String order_progress;
	private Date order_date;
	private int deliverycost;
	private int order_total;
	private int cnt;
	public int getOrder_num() {
		return order_num;
	}
	public void setOrder_num(int order_num) {
		this.order_num = order_num;
	}
	public String getOrder_member_id() {
		return order_member_id;
	}
	public void setOrder_member_id(String order_member_id) {
		this.order_member_id = order_member_id;
	}
	public String getOrder_product_code() {
		return order_product_code;
	}
	public void setOrder_product_code(String order_product_code) {
		this.order_product_code = order_product_code;
	}
	public String getOrder_progress() {
		return order_progress;
	}
	public void setOrder_progress(String order_progress) {
		this.order_progress = order_progress;
	}
	public Date getOrder_date() {
		return order_date;
	}
	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}
	public int getDeliverycost() {
		return deliverycost;
	}
	public void setDeliverycost(int deliverycost) {
		this.deliverycost = deliverycost;
	}
	public int getOrder_total() {
		return order_total;
	}
	public void setOrder_total(int order_total) {
		this.order_total = order_total;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	@Override
	public String toString() {
		return "OrderVO [order_num=" + order_num + ", order_member_id=" + order_member_id + ", order_product_code="
				+ order_product_code + ", order_progress=" + order_progress + ", order_date=" + order_date
				+ ", deliverycost=" + deliverycost + ", order_total=" + order_total + ", cnt=" + cnt + "]";
	}
	
	
	
	
	
}
