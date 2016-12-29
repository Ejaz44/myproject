package com.watches.crosswatch.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;


@Entity
public class ShippingAddress 
{	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int shippingAddressId;
	private String flatNo;
	private String streetName;
	private String locality;
	private String city;
	private String state;
	private String pincode;

	public UserDetail getUserDetail() {
		return userDetail;
	}

	public void setUserDetail(UserDetail userDetail) {
		this.userDetail = userDetail;
	}

	@OneToOne
	private UserDetail userDetail;
	
	public int getShippingAddressId() 
	{
		return shippingAddressId;
	}

	public void setShippingAddressId(int shippingAddressId) 
	{
		this.shippingAddressId = shippingAddressId;
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