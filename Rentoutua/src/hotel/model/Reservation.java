package hotel.model;

import java.io.Serializable;

public class Reservation implements Serializable{
	int reNum;
	String reDate;
	String reCheckin;
	String reCheckout;
	int reAdult;
	int reChild;
	String reState;
	String reMeal;
	int accNum;
	String cuEmail;
	String brNum;
	public int getReNum() {
		return reNum;
	}
	public void setReNum(int reNum) {
		this.reNum = reNum;
	}
	public String getReDate() {
		return reDate;
	}
	public void setReDate(String reDate) {
		this.reDate = reDate;
	}
	public String getReCheckin() {
		return reCheckin;
	}
	public void setReCheckin(String reCheckin) {
		this.reCheckin = reCheckin;
	}
	public String getReCheckout() {
		return reCheckout;
	}
	public void setReCheckout(String reCheckout) {
		this.reCheckout = reCheckout;
	}
	public int getReAdult() {
		return reAdult;
	}
	public void setReAdult(int reAdult) {
		this.reAdult = reAdult;
	}
	public int getReChild() {
		return reChild;
	}
	public void setReChild(int reChild) {
		this.reChild = reChild;
	}
	public String getReState() {
		return reState;
	}
	public void setReState(String reState) {
		this.reState = reState;
	}
	public String getReMeal() {
		return reMeal;
	}
	public void setReMeal(String reMeal) {
		this.reMeal = reMeal;
	}
	public int getAccNum() {
		return accNum;
	}
	public void setAccNum(int accNum) {
		this.accNum = accNum;
	}
	public String getCuEmail() {
		return cuEmail;
	}
	public void setCuEmail(String cuEmail) {
		this.cuEmail = cuEmail;
	}
	public String getBrNum() {
		return brNum;
	}
	public void setBrNum(String brNum) {
		this.brNum = brNum;
	}
	
}
