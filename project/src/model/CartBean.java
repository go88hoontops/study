// DTO(Data Transfer Object)

package model;

public class CartBean {
	private int c_num;
	private String id;
	private int product_number;
	private String c_pick;
	private String c_cart;
	private String c_recent;
	
	public int getC_num() {
		return c_num;
	}
	public String getId() {
		return id;
	}
	public int getProduct_number() {
		return product_number;
	}
	public String getC_pick() {
		return c_pick;
	}
	public String getC_cart() {
		return c_cart;
	}
	public String getC_recent() {
		return c_recent;
	}
	public void setC_num(int c_num) {
		this.c_num = c_num;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setProduct_number(int product_number) {
		this.product_number = product_number;
	}
	public void setC_pick(String c_pick) {
		this.c_pick = c_pick;
	}
	public void setC_cart(String c_cart) {
		this.c_cart = c_cart;
	}
	public void setC_recent(String c_recent) {
		this.c_recent = c_recent;
	}
	
}
