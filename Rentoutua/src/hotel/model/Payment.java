package hotel.model;

import java.io.Serializable;

public class Payment implements Serializable{
	int reNum;
	String payCardnum;
	String payType;
	int payTotal;
	String payDate;
	public int getReNum() {
		return reNum;
	}
	public void setReNum(int reNum) {
		this.reNum = reNum;
	}
	public String getPayCardnum() {
		return payCardnum;
	}
	public void setPayCardnum(String payCardnum) {
		this.payCardnum = payCardnum;
	}
	public String getPayType() {
		return payType;
	}
	public void setPayType(String payType) {
		this.payType = payType;
	}
	public int getPayTotal() {
		return payTotal;
	}
	public void setPayTotal(int payTotal) {
		this.payTotal = payTotal;
	}
	public String getPayDate() {
		return payDate;
	}
	public void setPayDate(String payDate) {
		this.payDate = payDate;
	}
	
}
