package com.internousdev.template.dto;

public class PayDTO {


	public String userId;

	public String username;

	public String address;

	public String tel;

	public String itemName;

	public int itemId;

	public int itemPrice;

	public int itemCount;

	public String payment;

	public String transport;





	public String getUserId(){
		return userId;
	}
	public void setUserId(String userId){
		this.userId = userId;
	}

	public String getUserName(){
		return username;
	}
	public void setUserName(String username){
		this.username = username;
	}

	public String getAddress(){
		return address;
	}
	public void setAddress(String address){
		this.address = address;
	}

	public String getTel(){
		return tel;
	}
	public void setTel(String tel){
		this.tel = tel;
	}

	public String getItemName(){
		return itemName;
	}
	public void setItemName(String itemName){
		this.itemName = itemName;
	}

	public int getItemId(){
		return itemId;
	}
	public void setItemId(int itemId){
		this.itemId = itemId;
	}

	public int getItemPrice(){
		return itemPrice;
	}
	public void setItemPrice(int itemPrice){
		this.itemPrice = itemPrice;
	}

	public int getItemCount(){
		return itemCount;
	}
	public void setItemCount(int itemCount){
		this.itemCount = itemCount;
	}

	public String getPaymaent(){
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}

	public String getTransport() {
		return transport;
	}
	public void setTransport(String transport){
		this.transport = transport;
	}


}
