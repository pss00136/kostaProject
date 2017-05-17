package hotel.model;

import java.io.Serializable;

public class Accommodation implements Serializable{
	int accNum;
	String brNum;
	String accType;
	String accName;
	int accPeople;
	int accWeekFee;
	int accWeekendFee;
	
	public int getAccNum() {
		return accNum;
	}
	public void setAccNum(int accNum) {
		this.accNum = accNum;
	}
	public String getBrNum() {
		return brNum;
	}
	public void setBrNum(String brNum) {
		this.brNum = brNum;
	}
	public String getAccType() {
		return accType;
	}
	public void setAccType(String accType) {
		this.accType = accType;
	}
	public String getAccName() {
		return accName;
	}
	public void setAccName(String accName) {
		this.accName = accName;
	}
	public int getAccPeople() {
		return accPeople;
	}
	public void setAccPeople(int accPeople) {
		this.accPeople = accPeople;
	}
	public int getAccWeekFee() {
		return accWeekFee;
	}
	public void setAccWeekFee(int accWeekFee) {
		this.accWeekFee = accWeekFee;
	}
	public int getAccWeekendFee() {
		return accWeekendFee;
	}
	public void setAccWeekendFee(int accWeekendFee) {
		this.accWeekendFee = accWeekendFee;
	}
	
}
