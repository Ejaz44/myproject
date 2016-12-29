package com.watches.crosswatch.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Brand 
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int brandId;
	
	@NotEmpty(message = "Brand name cannot be Empty")
	@Pattern(regexp="[a-zA-Z]{1}+[a-zA-Z0-9]+", message="Invalid Brand Name")
	private String brandName;
	
	@NotEmpty(message = "Brand Desc cannot be Empty")
	@Pattern(regexp="[a-zA-Z]{1}+[a-zA-Z0-9]+", message="Invalid Description")
	private String brandDescription;
	
	public int getBrandId() 
	{
		return brandId;
	}
	
	public void setBrandId(int brandId) 
	{
		this.brandId = brandId;
	}
	
	public String getBrandName() 
	{
		return brandName;
	}
	
	public void setBrandName(String brandName) 
	{
		this.brandName = brandName;
	}
	
	public String getBrandDescription() 
	{
		return brandDescription;
	}
	
	public void setBrandDescription(String brandDescription) 
	{
		this.brandDescription = brandDescription;
	}
}
