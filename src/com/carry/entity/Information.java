package com.carry.entity;

import java.sql.Date;
import java.sql.Timestamp;

public class Information 
{
	private  Integer pageid;
	private  Integer id;
	private Integer  category_id;
	private String sport_name;
	private String sport_name1;
	private String sport_detail;
	private Integer  user_id;
	private String name;
	private String   phone;
	private  String  picture;
	private  Timestamp time;
	private String text;
	private String address;
	private Integer demandnumber;
	private Integer checknumber;
	private  Integer state;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getCategory_id() {
		return category_id;
	}
	public void setCategory_id(Integer category_id) {
		this.category_id = category_id;
	}
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Integer getDemandnumber() {
		return demandnumber;
	}
	public void setDemandnumber(Integer demandnumber) {
		this.demandnumber = demandnumber;
	}
	public Integer getChecknumber() {
		return checknumber;
	}
	public void setChecknumber(Integer checknumber) {
		this.checknumber = checknumber;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	
	
	
	public Timestamp getTime() {
		return time;
	}
	public void setTime(Timestamp time) {
		this.time = time;
	}
	public String getSport_name() {
		return sport_name;
	}
	public void setSport_name(String sport_name) {
		this.sport_name = sport_name;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public Integer getPageid() {
		return pageid;
	}
	public void setPageid(Integer pageid) {
		this.pageid = pageid;
	}
	public String getSport_name1() {
		return sport_name1;
	}
	public void setSport_name1(String sport_name1) {
		this.sport_name1 = sport_name1;
	}
	public String getSport_detail() {
		return sport_detail;
	}
	public void setSport_detail(String sport_detail) {
		this.sport_detail = sport_detail;
	}
	

}
