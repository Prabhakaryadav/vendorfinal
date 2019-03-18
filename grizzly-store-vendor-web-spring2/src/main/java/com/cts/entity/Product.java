package com.cts.entity;
import javax.persistence.*;



@Entity
@Table(name="product_tab")
public class Product {
	@Id
	@Column(name="product_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int product_id;
	
	@Column(name="category",length=50)
	String category;
	
	@Column(name="name")
	String name;
	@Column(name="discription")
	String discription;
	
	
	@Column(name="price")
	float price;

	@Column(name="stock")
	int stock;
	
	@Column(name="req")
	int req;
	
	@Column(name="rating")
	float rating;
	
	
	public Product(int product_id, String category , String name,String discription, float price,int stock,	int req,float rating) {
		
		this.product_id = product_id;
		this.category = category;
		this.name = name;
		this.discription=discription;
		this.price = price;
		this.stock=stock;
		this.req=req;
		this.rating=rating;
	}
	public Product() {
		
	}
	public int getId() {
		return product_id;
	}
	public void setId(int product_id) {
		this.product_id = product_id;
	}
	public String getcategory() {
		return category;
	}
	public void setcategory(String category) {
		this.category = category;
	}
	public String getname() {
		return name;
	}
	public void setname(String name) {
		this.name = name;
	}
	public String getdiscription() {
		return discription;
	}
	public void setdiscription(String discription) {
		this.discription = discription;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public int getReq() {
		return req;
	}
	public void setReq(int req) {
		this.req = req;
	}
	public float getRating() {
		return rating;
	}
	public void setRating(float rating) {
		this.rating = rating;
	}
	public Product(String category, String name,String discription, float price,int stock,	int req,float rating) {
		
		this.category = category;
		this.name = name;
		this.discription=discription;
		this.price = price;
		this.stock=stock;
		this.req=req;
		this.rating=rating;
	}
	@Override
	public String toString() {
		return "Product [produtc_id=" + product_id + ", category=" + category + ", name=" + name + ",discription="+discription +", price=" + price + ",stock="+ stock +",req="+ req +",rating="+ rating + "]";
	}
	
	
	
	
	

}
