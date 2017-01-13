package com.watches.crosswatch.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;


@Entity
public class BillingAddress implements Serializable 
{
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int billingAddressId;
	private String flatNo;
	private String streetName;
	private String locality;
	private String city;
	private String state;
	private String pincode;

	@OneToOne
	private UserDetail userDetail;
	
	public int getBillingAddressId() 
	{
		return billingAddressId;
	}

	public void setBillingAddressId(int billingAddressId) 
	{
		this.billingAddressId = billingAddressId;
	}

	public String getFlatNo() 
	{
		return flatNo;
	}

	public void setFlatNo(String flatNo) 
	{
		this.flatNo = flatNo;
	}


	public String getLocality() 
	{
		return locality;
	}

	public void setLocality(String locality) 
	{
		this.locality = locality;
	}



	public String getPincode() 
	{
		return pincode;
	}

	public void setPincode(String pincode) 
	{
		this.pincode = pincode;
	}

	public UserDetail getUserDetail() {
		return userDetail;
	}

	public void setUserDetail(UserDetail userDetail) {
		this.userDetail = userDetail;
	}

	public String getStreetName() {
		return streetName;
	}

	public void setStreetName(String streetName) {
		this.streetName = streetName;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}
	
	
}
