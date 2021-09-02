package com.three.dog.domain;

public class AuctionVO {
	private int auction_id;
	private String member_id;
	private int product_id;
	private int auction_price;
	private String auction_time;
	private int auction_soldprice;
	public int getAuction_id() {
		return auction_id;
	}
	public void setAuction_id(int auction_id) {
		this.auction_id = auction_id;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getAuction_price() {
		return auction_price;
	}
	public void setAuction_price(int auction_price) {
		this.auction_price = auction_price;
	}
	public String getAuction_time() {
		return auction_time;
	}
	public void setAuction_time(String auction_time) {
		this.auction_time = auction_time;
	}
	public int getAuction_soldprice() {
		return auction_soldprice;
	}
	public void setAuction_soldprice(int auction_soldprice) {
		this.auction_soldprice = auction_soldprice;
	}
	@Override
	public String toString() {
		return "AuctionVO [auction_id=" + auction_id + ", member_id=" + member_id + ", product_id=" + product_id
				+ ", auction_price=" + auction_price + ", auction_time=" + auction_time + ", auction_soldprice="
				+ auction_soldprice + "]";
	}
	
	
}
