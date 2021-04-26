// DTO(Data Transfer Object)

package model;

public class ProductBean {
	private int product_;
	private String p_category ;
	private String p_name ;
	private int p_price ;
	private String p_img ;
	private String p_subtitle ;
	private String p_desc ;
	private String p_ename;
	public String getP_ename() {
		return p_ename;
	}
	public void setP_ename(String p_ename) {
		this.p_ename = p_ename;
	}
	public int getProduct_() {
		return product_;
	}
	public String getP_category() {
		return p_category;
	}
	public String getP_name() {
		return p_name;
	}
	public int getP_price() {
		return p_price;
	}
	public String getP_img() {
		return p_img;
	}
	public String getP_subtitle() {
		return p_subtitle;
	}
	public String getP_desc() {
		return p_desc;
	}
	public void setProduct_(int product_) {
		this.product_ = product_;
	}
	public void setP_category(String p_category) {
		this.p_category = p_category;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public void setP_img(String p_img) {
		this.p_img = p_img;
	}
	public void setP_subtitle(String p_subtitle) {
		this.p_subtitle = p_subtitle;
	}
	public void setP_desc(String p_desc) {
		this.p_desc = p_desc;
	}
	
	
	
	
}
