package com.rn.command;

public class WhetherCommand {
	
	private String city="nagpur";
	private double temp;
	private String skyInfo;
	private double temp_min;
	private double temp_max;
	private String humidity;
	
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public double getTemp() {
		return temp;
	}
	public void setTemp(double temp) {
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
	public void setTemp_min(double temp_min) {
		this.temp_min = temp_min;
	}
	public double getTemp_max() {
		return temp_max;
	}
	public void setTemp_max(double temp_max) {
		this.temp_max = temp_max;
	}
	public String getHumidity() {
		return humidity;
	}
	public void setHumidity(String humidity) {
		this.humidity = humidity;
	}
	
	
}
