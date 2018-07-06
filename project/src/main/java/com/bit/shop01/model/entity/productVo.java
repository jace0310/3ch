package com.bit.shop01.model.entity;

public class productVo {
	private int productNum;
	private String productType;
	private String productName;
	private String explan;
	private int price;
	private int inventory;
	
	public productVo() {
		
	}
	
	public productVo(int productNum, String productType, String productName, String explan, int price, int inventory) {
		super();
		this.productNum = productNum;
		this.productType = productType;
		this.productName = productName;
		this.explan = explan;
		this.price = price;
		this.inventory = inventory;
	}
	
	public int getProductNum() {
		return productNum;
	}
	public void setProductNum(int productNum) {
		this.productNum = productNum;
	}
	public String getProductType() {
		return productType;
	}
	public void setProductType(String productType) {
		this.productType = productType;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getExplan() {
		return explan;
	}
	public void setExplan(String explan) {
		this.explan = explan;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getInventory() {
		return inventory;
	}
	public void setInventory(int inventory) {
		this.inventory = inventory;
	}
	
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((explan == null) ? 0 : explan.hashCode());
		result = prime * result + inventory;
		result = prime * result + price;
		result = prime * result + ((productName == null) ? 0 : productName.hashCode());
		result = prime * result + productNum;
		result = prime * result + ((productType == null) ? 0 : productType.hashCode());
		return result;
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		productVo other = (productVo) obj;
		if (explan == null) {
			if (other.explan != null)
				return false;
		} else if (!explan.equals(other.explan))
			return false;
		if (inventory != other.inventory)
			return false;
		if (price != other.price)
			return false;
		if (productName == null) {
			if (other.productName != null)
				return false;
		} else if (!productName.equals(other.productName))
			return false;
		if (productNum != other.productNum)
			return false;
		if (productType == null) {
			if (other.productType != null)
				return false;
		} else if (!productType.equals(other.productType))
			return false;
		return true;
	}
	@Override
	public String toString() {
		return "productVo [productNum=" + productNum + ", productType=" + productType + ", productName=" + productName
				+ ", explan=" + explan + ", price=" + price + ", inventory=" + inventory + "]";
	}
	
	
	
}
