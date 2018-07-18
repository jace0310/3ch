package com.bit.shop01.model.entity;

import java.sql.Date;

public class productVo {
	
	//상품 
	private int productNum;
	private String productType;
	private String productName;
	private String explan;
	private int price;
	private int inventory;
	private String proImg;
	
	//후기
	private int reviewNum;
	private String memId;
	private String title;
	private String contents;
	private Date review_date;
	
	public productVo() {
		
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


	public String getProImg() {
		return proImg;
	}


	public void setProImg(String proImg) {
		this.proImg = proImg;
	}


	public int getReviewNum() {
		return reviewNum;
	}


	public void setReviewNum(int reviewNum) {
		this.reviewNum = reviewNum;
	}


	public String getMemId() {
		return memId;
	}


	public void setMemId(String memId) {
		this.memId = memId;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getContents() {
		return contents;
	}


	public void setContents(String contents) {
		this.contents = contents;
	}


	public Date getReview_date() {
		return review_date;
	}


	public void setReview_date(Date review_date) {
		this.review_date = review_date;
	}


	public productVo(int productNum, String productType, String productName, String explan, int price, int inventory,
			String proImg, int reviewNum, String memId, String title, String contents, Date review_date) {
		super();
		this.productNum = productNum;
		this.productType = productType;
		this.productName = productName;
		this.explan = explan;
		this.price = price;
		this.inventory = inventory;
		this.proImg = proImg;
		this.reviewNum = reviewNum;
		this.memId = memId;
		this.title = title;
		this.contents = contents;
		this.review_date = review_date;
	}


	@Override
	public String toString() {
		return "productVo [productNum=" + productNum + ", productType=" + productType + ", productName=" + productName
				+ ", explan=" + explan + ", price=" + price + ", inventory=" + inventory + ", proImg=" + proImg
				+ ", reviewNum=" + reviewNum + ", memId=" + memId + ", title=" + title + ", contents=" + contents
				+ ", review_date=" + review_date + "]";
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((contents == null) ? 0 : contents.hashCode());
		result = prime * result + ((explan == null) ? 0 : explan.hashCode());
		result = prime * result + inventory;
		result = prime * result + ((memId == null) ? 0 : memId.hashCode());
		result = prime * result + price;
		result = prime * result + ((proImg == null) ? 0 : proImg.hashCode());
		result = prime * result + ((productName == null) ? 0 : productName.hashCode());
		result = prime * result + productNum;
		result = prime * result + ((productType == null) ? 0 : productType.hashCode());
		result = prime * result + reviewNum;
		result = prime * result + ((title == null) ? 0 : title.hashCode());
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
		if (contents == null) {
			if (other.contents != null)
				return false;
		} else if (!contents.equals(other.contents))
			return false;
		if (explan == null) {
			if (other.explan != null)
				return false;
		} else if (!explan.equals(other.explan))
			return false;
		if (inventory != other.inventory)
			return false;
		if (memId == null) {
			if (other.memId != null)
				return false;
		} else if (!memId.equals(other.memId))
			return false;
		if (price != other.price)
			return false;
		if (proImg == null) {
			if (other.proImg != null)
				return false;
		} else if (!proImg.equals(other.proImg))
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
		if (reviewNum != other.reviewNum)
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		return true;
	}


	
}
