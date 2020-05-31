package com.rn.command;

public class WhetherCommand {
	
	private String city="nagpur";
	private int temp;
	private String skyInfo;
	private int temp_min;
	private int temp_max;
	private String humidity;
	private String desc;
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getTemp() {
		return temp;
	}
	public void setTemp(int temp) {
		this.temp = temp;
	}
	public String getSkyInfo() {
		return skyInfo;
	}
	public void setSkyInfo(String skyInfo) {
		this.skyInfo = skyInfo;
	}
	public double getTemp_min() {
		return temp_min;
	}
	public void setTemp_min(int temp_min) {
		this.temp_min = temp_min;
	}
	public int getTemp_max() {
		return temp_max;
	}
	public void setTemp_max(int temp_max) {
		this.temp_max = temp_max;
	}
	public String getHumidity() {
		return humidity;
	}
	public void setHumidity(String humidity) {
		this.humidity = humidity;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	
	
}
