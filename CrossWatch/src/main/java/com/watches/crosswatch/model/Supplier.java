package com.watches.crosswatch.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

import com.google.gson.annotations.Expose;

@Entity
public class Supplier 
{
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Expose
	private int supplierId;
	
	@Expose
	@Pattern(regexp="[a-zA-Z0-9]+", message="Invalid Supplier Name")
	private String supplierName;
	@Expose
	@Size(min=15, message="Invalid Address")
	private String supplierAddress;
	@Expose
	@Pattern(regexp=".+@.+\\..+", message="Invalid EmailID")
	private String supplierEmail;
	
	
	public int getSupplierId() {
		return supplierId;
	}
	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}
	public String getSupplierName() {
		return supplierName;
	}
	public void setSupplierName(String supplierName) {
		this.supplierName = supplierName;
	}
	public String getSupplierAddress() {
		return supplierAddress;
	}
	public void setSupplierAddress(String supplierAddress) {
		this.supplierAddress = supplierAddress;
	}
	public String getSupplierEmail() {
		return supplierEmail;
	}
	public void setSupplierEmail(String supplierEmail) {
		this.supplierEmail = supplierEmail;
	}
}