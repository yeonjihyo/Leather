package kr.green.leather.vo;

public class MemberVO {
	private String member_id;
	private String member_pw;
	private String member_name;
	private String member_phone;
	private Integer member_post;
	private String member_address1;
	private String member_address2;
	private String member_email;
	private String member_grade;
	private String member_authority;
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getMember_phone() {
		return member_phone;
	}
	public void setMember_phone(String member_phone) {
		this.member_phone = member_phone;
	}
	public Integer getMember_post() {
		return member_post;
	}
	public void setMember_post(Integer member_post) {
		this.member_post = member_post;
	}
	public String getMember_address1() {
		return member_address1;
	}
	public void setMember_address1(String member_address1) {
		this.member_address1 = member_address1;
	}
	public String getMember_address2() {
		return member_address2;
	}
	public void setMember_address2(String member_address2) {
		this.member_address2 = member_address2;
	}
	public String getMember_email() {
		return member_email;
	}
	public void setMember_email(String member_email) {
		this.member_email = member_email;
	}
	public String getMember_grade() {
		return member_grade;
	}
	public void setMember_grade(String member_grade) {
		this.member_grade = member_grade;
	}
	public String getMember_authority() {
		return member_authority;
	}
	public void setMember_authority(String member_authority) {
		this.member_authority = member_authority;
	}
	
	@Override
	public String toString() {
		return "MemberVO [member_id=" + member_id + ", member_pw=" + member_pw + ", member_name=" + member_name
				+ ", member_phone=" + member_phone + ", member_post=" + member_post + ", member_address1="
				+ member_address1 + ", member_address2=" + member_address2 + ", member_email=" + member_email
				+ ", member_grade=" + member_grade + ", member_authority=" + member_authority + "]";
	}
	
	
	
	
	
	
	
	
}
