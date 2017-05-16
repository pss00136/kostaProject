package hotel.model;

import java.io.Serializable;

public class Eventinfo implements Serializable{

	int evNum;
	String evTitle;
	String evContents;
	String imagePath;
	String thumbPath;
	String imageName;
	String thumbName;
	String evDate;
	
	
	public int getEvNum() {
		return evNum;
	}
	public void setEvNum(int evNum) {
		this.evNum = evNum;
	}
	public String getEvTitle() {
		return evTitle;
	}
	public void setEvTitle(String evTitle) {
		this.evTitle = evTitle;
	}
	public String getEvContents() {
		return evContents;
	}
	public void setEvContents(String evContents) {
		this.evContents = evContents;
	}
	public String getImagePath() {
		return imagePath;
	}
	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}
	public String getThumbPath() {
		return thumbPath;
	}
	public void setThumbPath(String thumbPath) {
		this.thumbPath = thumbPath;
	}
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	public String getThumbName() {
		return thumbName;
	}
	public void setThumbName(String thumbName) {
		this.thumbName = thumbName;
	}
	public String getEvDate() {
		return evDate;
	}
	public void setEvDate(String evDate) {
		this.evDate = evDate;
	}
	
	
}
