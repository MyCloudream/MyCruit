package com.oucre.core.mode.entity;

import java.sql.Timestamp;

public class MessageBean {
	private Integer id;
	
	private String phone;
	private String name;
	private Integer uid;
	private Timestamp msgdate;
	
	
	private Integer fid;
	private Integer gcode;
	private Integer ncode;
	private Integer eid;
	private Character type;
	
	private Character status;
	
	private String gcodename;
	private String ncodename;
	
	private String brandname;
	private String carsname;
	private String modelname;
	
	private String aaddress;
	
	private Double price;
	

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getAaddress() {
		return aaddress;
	}

	public void setAaddress(String aaddress) {
		this.aaddress = aaddress;
	}

	public Character getStatus() {
		return status;
	}

	public void setStatus(Character status) {
		this.status = status;
	}

	public String getBrandname() {
		return brandname;
	}

	public void setBrandname(String brandname) {
		this.brandname = brandname;
	}

	public String getCarsname() {
		return carsname;
	}

	public void setCarsname(String carsname) {
		this.carsname = carsname;
	}

	public String getModelname() {
		return modelname;
	}

	public void setModelname(String modelname) {
		this.modelname = modelname;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getFid() {
		return fid;
	}

	public void setFid(Integer fid) {
		this.fid = fid;
	}

	public Integer getGcode() {
		return gcode;
	}

	public void setGcode(Integer gcode) {
		this.gcode = gcode;
	}

	public Integer getNcode() {
		return ncode;
	}

	public void setNcode(Integer ncode) {
		this.ncode = ncode;
	}

	public Integer getEid() {
		return eid;
	}

	public void setEid(Integer eid) {
		this.eid = eid;
	}

	public Character getType() {
		return type;
	}

	public void setType(Character type) {
		this.type = type;
	}

	public String getGcodename() {
		return gcodename;
	}

	public void setGcodename(String gcodename) {
		this.gcodename = gcodename;
	}

	public String getNcodename() {
		return ncodename;
	}

	public void setNcodename(String ncodename) {
		this.ncodename = ncodename;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public Timestamp getMsgdate() {
		return msgdate;
	}

	public void setMsgdate(Timestamp msgdate) {
		this.msgdate = msgdate;
	}

}
