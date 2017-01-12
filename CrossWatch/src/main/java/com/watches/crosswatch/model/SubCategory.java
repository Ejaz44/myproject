
package com.watches.crosswatch.model;




import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.NotEmpty;

import com.google.gson.annotations.Expose;

@Entity
public class SubCategory
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Expose
	private int subCategoryId;
	
	@Pattern(regexp="[a-zA-Z0-9]+", message="Invalid SubCategory Name")
	@Expose
	private String subCategoryName;
	
	@Expose
	@NotEmpty(message = "Enter the Category Description")
	private String subCategoryDescription;
	
	private int categoryId;
	
	@ManyToOne
	@JoinColumn(name="categoryId", updatable=false, insertable=false, nullable=false)
	private Category category;
	
	public int getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	public int getSubCategoryId() {
		return subCategoryId;
	}
	public void setSubCategoryId(int subCategoryId) {
		this.subCategoryId = subCategoryId;
	}
	public String getSubCategoryName() {
		return subCategoryName;
	}
	public void setSubCategoryName(String subCategoryName) {
		this.subCategoryName = subCategoryName;
	}
	public String getSubCategoryDescription() {
		return subCategoryDescription;
	}
	public void setSubCategoryDescription(String subCategoryDescription) {
		this.subCategoryDescription = subCategoryDescription;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
}