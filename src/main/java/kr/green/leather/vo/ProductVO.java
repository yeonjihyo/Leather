package kr.green.leather.vo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class ProductVO {
	private String product_code;
	private String product_title;
	private String product_contents;
	private String product_maincategory;
	private String product_subcategory;
	private String product_subsubcategory;
	private String product_origin;
	private int product_price;
	private String product_made;
	private int product_stock;
	private String product_state;
	private String product_writer;
	private String file;
	private int product_views;
	private Date product_registered;
	private String contentsfile;
	private int product_total;
	
	public String getProduct_code() {
		return product_code;
	}
	public void setProduct_code(String product_code) {
		this.product_code = product_code;
	}
	public String getProduct_title() {
		return product_title;
	}
	public void setProduct_title(String product_title) {
		this.product_title = product_title;
	}
	public String getProduct_contents() {
		return product_contents;
	}
	public void setProduct_contents(String product_contents) {
		this.product_contents = product_contents;
	}
	public String getProduct_maincategory() {
		return product_maincategory;
	}
	public void setProduct_maincategory(String product_maincategory) {
		this.product_maincategory = product_maincategory;
	}
	public String getProduct_subcategory() {
		return product_subcategory;
	}
	public void setProduct_subcategory(String product_subcategory) {
		this.product_subcategory = product_subcategory;
	}
	public String getProduct_subsubcategory() {
		return product_subsubcategory;
	}
	public void setProduct_subsubcategory(String product_subsubcategory) {
		this.product_subsubcategory = product_subsubcategory;
	}
	public String getProduct_origin() {
		return product_origin;
	}
	public void setProduct_origin(String product_origin) {
		this.product_origin = product_origin;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public String getProduct_made() {
		return product_made;
	}
	public void setProduct_made(String product_made) {
		this.product_made = product_made;
	}
	public int getProduct_stock() {
		return product_stock;
	}
	public void setProduct_stock(int product_stock) {
		this.product_stock = product_stock;
	}
	
	public String getProduct_state() {
		return product_state;
	}
	public void setProduct_state(String product_state) {
		this.product_state = product_state;
	}
	public String getProduct_writer() {
		return product_writer;
	}
	public void setProduct_writer(String product_writer) {
		this.product_writer = product_writer;
	}
	public String getFile() {
		return file;
	}
	public String getFileName() {
		//UUID가 제거되도록 코드작성
		//4d781699-bc2c-4f4e-aa2a-9ebb87ff9d3e_2.jpg => 2.jpg가 되도록
		if(file ==null) {
			return "";
		}
		int index = file.indexOf("_");
		return file.substring(index+1);
	}
	public String getFileName2() {
		//UUID가 제거되도록 코드작성
		//4d781699-bc2c-4f4e-aa2a-9ebb87ff9d3e_2.jpg => 2.jpg가 되도록
		if(file ==null) {
			return "";
		}
		int index = file.indexOf("_");
		return file.substring(index+1);
	}
	public void setFile(String file) {
		this.file = file;
	}
	public int getProduct_views() {
		return product_views;
	}
	public void setProduct_views(int product_views) {
		this.product_views = product_views;
	}
	public String getProduct_registered() {
		//날자와 시간을 원하는 형식으로 보이게 하기위한 방법
		SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return f.format(product_registered);
	}
	public void setProduct_registered(Date product_registered) {
		this.product_registered = product_registered;
	}
	public void setProduct_registered(String product_registered) {
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			this.product_registered = transFormat.parse(product_registered);
		}catch (ParseException e) {
			e.printStackTrace();
		}
	}
	public String getContentsfile() {
		return contentsfile;
	}
	public void setContentsfile(String contentsfile) {
		this.contentsfile = contentsfile;
	}
	public int getProduct_total() {
		return product_total;
	}
	public void setProduct_total(int product_total) {
		this.product_total = product_total;
	}
	@Override
	public String toString() {
		return "ProductVO [product_code=" + product_code + ", product_title=" + product_title + ", product_contents="
				+ product_contents + ", product_maincategory=" + product_maincategory + ", product_subcategory="
				+ product_subcategory + ", product_subsubcategory=" + product_subsubcategory + ", product_origin="
				+ product_origin + ", product_price=" + product_price + ", product_made=" + product_made
				+ ", product_stock=" + product_stock + ", product_state=" + product_state + ", product_writer="
				+ product_writer + ", file=" + file + ", product_views=" + product_views + ", product_registered="
				+ product_registered + ", contentsfile=" + contentsfile + ", product_total=" + product_total + "]";
	}
	
	
	
	
	
}
	
	
	