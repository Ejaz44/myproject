package com.watches.crosswatch.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
public class ProductDetail 
{
	@Id
	private int productId;
	private String productName;
	private String categoryName;
	private String subCategoryName;
	private String brandName;
	private String productDescription;
	private String additionalInformation;
	private int productPrice;
	private int productDiscount;
	private String supplierName;
	
	@Transient
	MultipartFile productImage1;
	
	@Transient
	MultipartFile productImage2;
	
	@Transient
	MultipartFile productImage3;
	
	@Transient
	MultipartFile productImage4;
	
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}
	public int getProductId() {
		return productId;
	}
	public MultipartFile getProductImage1() {
		return productImage1;
	}
	public void setProductImage1(MultipartFile productImage1) {
		this.productImage1 = productImage1;
	}
	public MultipartFile getProductImage2() {
		return productImage2;
	}
	public void setProductImage2(MultipartFile productImage2) {
		this.productImage2 = productImage2;
	}
	public MultipartFile getProductImage3() {
		return productImage3;
	}
	public void setProductImage3(MultipartFile productImage3) {
		this.productImage3 = productImage3;
	}
	public MultipartFile getProductImage4() {
		return productImage4;
	}
	public void setProductImage4(MultipartFile productImage4) {
		this.productImage4 = productImage4;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getSubCategoryName() {
		return subCategoryName;
	}
	public void setSubCategoryName(String subCategoryName) {
		this.subCategoryName = subCategoryName;
	}
	public String getProductDescription() {
		return productDescription;
	}
	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public int getProductDiscount() {
		return productDiscount;
	}
	public void setProductDiscount(int productDiscount) {
		this.productDiscount = productDiscount;
	}
	public String getSupplierName() {
		return supplierName;
	}
	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}
	
	public String getBrandName() {
		return brandName;
	}
	public void setBrandName(String brandName) {
		this.brandName = brandName;
	}
	public String getAdditionalInformation() {
		return additionalInformation;
	}
	public void setAdditionalInformation(String additionalInformation) {
		this.additionalInformation = additionalInformation;
	}
}
