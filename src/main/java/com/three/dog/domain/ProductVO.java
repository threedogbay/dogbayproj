package com.three.dog.domain;

public class ProductVO {
	private int product_id;
	private String product_name;
	private int product_initprice;
	private String product_closedate;
	private String product_regidate;
	private String product_img;
	private String product_detail;
	private String product_soldout;
	
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	public int getProduct_initprice() {
		return product_initprice;
	}
	public void setProduct_initprice(int product_initprice) {
		this.product_initprice = product_initprice;
	}
	public String getProduct_closedate() {
		return product_closedate;
	}
	public void setProduct_closedate(String product_closedate) {
		this.product_closedate = product_closedate;
	}
	public String getProduct_regidate() {
		return product_regidate;
	}
	public void setProduct_regidate(String product_regidate) {
		this.product_regidate = product_regidate;
	}
	public String getProduct_img() {
		return product_img;
	}
	public void setProduct_img(String product_img) {
		this.product_img = product_img;
	}
	public String getProduct_detail() {
		return product_detail;
	}
	public void setProduct_detail(String product_detail) {
		this.product_detail = product_detail;
	}
	public String getProduct_soldout() {
		return product_soldout;
	}
	public void setProduct_soldout(String product_soldout) {
		this.product_soldout = product_soldout;
	}
	@Override
	public String toString() {
		return "ProductVO [product_id=" + product_id + ", product_name=" + product_name + ", product_initprice="
				+ product_initprice + ", product_closedate=" + product_closedate + ", product_regidate="
				+ product_regidate + ", product_img=" + product_img + ", product_detail=" + product_detail
				+ ", product_soldout=" + product_soldout + "]";
	}
	
	
}
