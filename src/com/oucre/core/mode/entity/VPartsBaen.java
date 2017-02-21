package com.oucre.core.mode.entity;

import java.sql.Timestamp;
import java.util.Date;

public class VPartsBaen implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	
	
	private Integer id;
//	private Integer vid;
//	private Integer eid;
//	private Double price;
	private Integer gcode;
	private Integer ncode;
	private Character status;
	private Timestamp outdate;
	private String remark;

	private String gcodename;
	private String ncodename;

	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
//	public Integer getVid() {
//		return vid;
//	}
//	public void setVid(Integer vid) {
//		this.vid = vid;
//	}
//	public Integer getEid() {
//		return eid;
//	}
//	public void setEid(Integer eid) {
//		this.eid = eid;
//	}
//	public Double getPrice() {
//		return price;
//	}
//	public void setPrice(Double price) {
//		this.price = price;
//	}
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
	public Character getStatus() {
		return status;
	}
	public void setStatus(Character status) {
		this.status = status;
	}
	public Timestamp getOutdate() {
		return outdate;
	}
	public void setOutdate(Timestamp outdate) {
		this.outdate = outdate;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
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
	
}
