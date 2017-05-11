package hotel.model;

import java.io.Serializable;

public class Customer implements Serializable{
	String cuEmail;
	String cuPass;
	String cuBirthday;
	String cuPhone;
	String cuTel;
	String cuKname;
	String cuLastname;
	String cuFirstname;
	
	public String getCuEmail() {
		return cuEmail;
	}
	public void setCuEmail(String cuEmail) {
		this.cuEmail = cuEmail;
	}
	public String getCuPass() {
		return cuPass;
	}
	public void setCuPass(String cuPass) {
		this.cuPass = cuPass;
	}
	public String getCuBirthday() {
		return cuBirthday;
	}
	public void setCuBirthday(String cuBirthday) {
		this.cuBirthday = cuBirthday;
	}
	public String getCuPhone() {
		return cuPhone;
	}
	public void setCuPhone(String cuPhone) {
		this.cuPhone = cuPhone;
	}
	public String getCuTel() {
		return cuTel;
	}
	public void setCuTel(String cuTel) {
		this.cuTel = cuTel;
	}
	public String getCuKname() {
		return cuKname;
	}
	public void setCuKname(String cuKname) {
		this.cuKname = cuKname;
	}
	public String getCuLastname() {
		return cuLastname;
	}
	public void setCuLastname(String cuLastname) {
		this.cuLastname = cuLastname;
	}
	public String getCuFirstname() {
		return cuFirstname;
	}
	public void setCuFirstname(String cuFirstname) {
		this.cuFirstname = cuFirstname;
	}
	
}
