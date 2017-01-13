package com.watches.crosswatch.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class UserRole implements Serializable
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	private int roleId;
	private int userId;
	
	@OneToOne
	@JoinColumn(name="userId", insertable=false, nullable=false, updatable=false)
	private User user;
	
	@OneToOne
	@JoinColumn(name="roleId", insertable=false, nullable=false, updatable=false)
	private Role role;
	
	public int getRoleId() 
	{
		return roleId;
	}
	
	public void setRoleId(int roleId) 
	{
		this.roleId = roleId;
	}
	
	public int getUserId() 
	{
		return userId;
	}
	
	public void setUserId(int userId) 
	{
		this.userId = userId;
	}
	
	
}
