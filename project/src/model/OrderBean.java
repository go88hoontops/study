// DTO(Data Transfer Object)

package model;

import java.sql.Timestamp;

public class OrderBean {
	private int order_number;
	private String id;
	private int store_code ;
	private int c_num ;
	private int product_number ;
	private int o_price ;
	private int o_quantity ;
	private String o_paytype ;
	private int o_totalprice;
	private String o_req;
	private String o_confirm;
	private Timestamp o_check ;
	
	public int getOrder_number() {
		return order_number;
	}
	public String getId() {
		return id;
	}
	public int getStore_code() {
		return store_code;
	}
	public int getC_num() {
		return c_num;
	}
	public int getProduct_number() {
		return product_number;
	}
	public int getO_price() {
		return o_price;
	}
	public int getO_quantity() {
		return o_quantity;
	}
	public String getO_paytype() {
		return o_paytype;
	}
	public int getO_totalprice() {
		return o_totalprice;
	}
	public String getO_req() {
		return o_req;
	}
	public String getO_confirm() {
		return o_confirm;
	}
	public Timestamp getO_check() {
		return o_check;
	}
	public void setOrder_number(int order_number) {
		this.order_number = order_number;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setStore_code(int store_code) {
		this.store_code = store_code;
	}
	public void setC_num(int c_num) {
		this.c_num = c_num;
	}
	public void setProduct_number(int product_number) {
		this.product_number = product_number;
	}
	public void setO_price(int o_price) {
		this.o_price = o_price;
	}
	public void setO_quantity(int o_quantity) {
		this.o_quantity = o_quantity;
	}
	public void setO_paytype(String o_paytype) {
		this.o_paytype = o_paytype;
	}
	public void setO_totalprice(int o_totalprice) {
		this.o_totalprice = o_totalprice;
	}
	public void setO_req(String o_req) {
		this.o_req = o_req;
	}
	public void setO_confirm(String o_confirm) {
		this.o_confirm = o_confirm;
	}
	public void setO_check(Timestamp o_check) {
		this.o_check = o_check;
	}
	
}
