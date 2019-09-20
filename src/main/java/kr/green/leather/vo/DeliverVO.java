package kr.green.leather.vo;

public class DeliverVO extends OrderVO {
	private int deliver_no;
	private int deliver_order_num;
	private String deliver_recipient;
	private String deliver_address1;
	private String deliver_address2;
	private int deliver_post;
	private String deliver_phone;
	
	public int getDeliver_no() {
		return deliver_no;
	}
	public void setDeliver_no(int deliver_no) {
		this.deliver_no = deliver_no;
	}
	public int getDeliver_order_num() {
		return deliver_order_num;
	}
	public void setDeliver_order_num(int deliver_order_num) {
		this.deliver_order_num = deliver_order_num;
	}
	public String getDeliver_recipient() {
		return deliver_recipient;
	}
	public void setDeliver_recipient(String deliver_recipient) {
		this.deliver_recipient = deliver_recipient;
	}
	public String getDeliver_address1() {
		return deliver_address1;
	}
	public void setDeliver_address1(String deliver_address1) {
		this.deliver_address1 = deliver_address1;
	}
	public String getDeliver_address2() {
		return deliver_address2;
	}
	public void setDeliver_address2(String deliver_address2) {
		this.deliver_address2 = deliver_address2;
	}
	public int getDeliver_post() {
		return deliver_post;
	}
	public void setDeliver_post(int deliver_post) {
		this.deliver_post = deliver_post;
	}
	public String getDeliver_phone() {
		return deliver_phone;
	}
	public void setDeliver_phone(String deliver_phone) {
		this.deliver_phone = deliver_phone;
	}
	@Override
	public String toString() {
		return "DeliverVO [deliver_no=" + deliver_no + ", deliver_order_num=" + deliver_order_num
				+ ", deliver_recipient=" + deliver_recipient + ", deliver_address1=" + deliver_address1
				+ ", deliver_address2=" + deliver_address2 + ", deliver_post=" + deliver_post + ", deliver_phone="
				+ deliver_phone + "]";
	}
	
	
	
}
