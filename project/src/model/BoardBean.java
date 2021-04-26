// DTO(Data Transfer Object)

package model;

import java.sql.Timestamp;

public class BoardBean {
	private int b_num ;
	private String id ;
	private String b_title ;
	private String b_cont ;
	private String b_img ;
	private Timestamp b_reg ;
	private int b_hits;
	private float b_mark;
	
	public int getB_num() {
		return b_num;
	}
	public String getId() {
		return id;
	}
	public String getB_title() {
		return b_title;
	}
	public String getB_cont() {
		return b_cont;
	}
	public String getB_img() {
		return b_img;
	}
	public Timestamp getB_reg() {
		return b_reg;
	}
	public int getB_hits() {
		return b_hits;
	}
	public float getB_mark() {
		return b_mark;
	}
	public void setB_num(int b_num) {
		this.b_num = b_num;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public void setB_cont(String b_cont) {
		this.b_cont = b_cont;
	}
	public void setB_img(String b_img) {
		this.b_img = b_img;
	}
	public void setB_reg(Timestamp b_reg) {
		this.b_reg = b_reg;
	}
	public void setB_hits(int b_hits) {
		this.b_hits = b_hits;
	}
	public void setB_mark(float b_mark) {
		this.b_mark = b_mark;
	}
	
}
