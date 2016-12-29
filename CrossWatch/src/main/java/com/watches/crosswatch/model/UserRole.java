package com.watches.crosswatch.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
public class UserRole 
{
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
