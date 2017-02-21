package com.oucre.core.mode.entity;

import java.math.BigInteger;
import java.sql.Timestamp;
import java.util.Date;

public class PartsBaen implements java.io.Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer id;
	private Integer pcode;
	private Integer ccode;
	private Integer eid;
	private Integer pid;
	private Integer brand;
	private Integer cars;
	private Integer type;
	private Integer modelcode;
	private String model;
	private Timestamp subdate;
	private Date regdate;
	private Timestamp outdate;
	private Double price;
	private Integer gcode;
	private Integer ncode;
	private Character status;
	private String pic1;
	private String pic2;
	private String pic3;
	private String pic4;
	private String remark;
	private Integer uid1;
	private Integer uid2;

	private String brandname;
	private String carsname;
	private String modelname;
	
	
	private String gcodename;
	private String ncodename;
	
	
	private String pcodename;
	private String ccodename;
	
	private String ename;
	private String etel;
	private BigInteger eqq;
	private String eaddress;
	private String eperson;
	private String edesc;
	private String eweb;
	private String elogo;
	private String eshortname;
	
	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getPcodename() {
		return pcodename;
	}

	public void setPcodename(String pcodename) {
		this.pcodename = pcodename;
	}

	public String getCcodename() {
		return ccodename;
	}

	public void setCcodename(String ccodename) {
		this.ccodename = ccodename;
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

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getPcode() {
		return pcode;
	}

	public void setPcode(Integer pcode) {
		this.pcode = pcode;
	}

	public Integer getCcode() {
		return ccode;
	}

	public void setCcode(Integer ccode) {
		this.ccode = ccode;
	}

	public Integer getEid() {
		return eid;
	}

	public void setEid(Integer eid) {
		this.eid = eid;
	}

	public Integer getPid() {
		return pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public Integer getBrand() {
		return brand;
	}

	public void setBrand(Integer brand) {
		this.brand = brand;
	}

	public Integer getCars() {
		return cars;
	}

	public void setCars(Integer cars) {
		this.cars = cars;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public Integer getModelcode() {
		return modelcode;
	}

	public void setModelcode(Integer modelcode) {
		this.modelcode = modelcode;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public Timestamp getSubdate() {
		return subdate;
	}

	public void setSubdate(Timestamp subdate) {
		this.subdate = subdate;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	public Timestamp getOutdate() {
		return outdate;
	}

	public void setOutdate(Timestamp outdate) {
		this.outdate = outdate;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
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

	public Character getStatus() {
		return status;
	}

	public void setStatus(Character status) {
		this.status = status;
	}

	public String getPic1() {
		return pic1;
	}

	public void setPic1(String pic1) {
		this.pic1 = pic1;
	}

	public String getPic2() {
		return pic2;
	}

	public void setPic2(String pic2) {
		this.pic2 = pic2;
	}

	public String getPic3() {
		return pic3;
	}

	public void setPic3(String pic3) {
		this.pic3 = pic3;
	}

	public String getPic4() {
		return pic4;
	}

	public void setPic4(String pic4) {
		this.pic4 = pic4;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Integer getUid1() {
		return uid1;
	}

	public void setUid1(Integer uid1) {
		this.uid1 = uid1;
	}

	public Integer getUid2() {
		return uid2;
	}

	public void setUid2(Integer uid2) {
		this.uid2 = uid2;
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

	public String getEtel() {
		return etel;
	}

	public void setEtel(String etel) {
		this.etel = etel;
	}

	public BigInteger getEqq() {
		return eqq;
	}

	public void setEqq(BigInteger eqq) {
		this.eqq = eqq;
	}

	public String getEaddress() {
		return eaddress;
	}

	public void setEaddress(String eaddress) {
		this.eaddress = eaddress;
	}

	public String getEperson() {
		return eperson;
	}

	public void setEperson(String eperson) {
		this.eperson = eperson;
	}

	public String getEdesc() {
		return edesc;
	}

	public void setEdesc(String edesc) {
		this.edesc = edesc;
	}

	public String getEweb() {
		return eweb;
	}

	public void setEweb(String eweb) {
		this.eweb = eweb;
	}

	public String getElogo() {
		return elogo;
	}

	public void setElogo(String elogo) {
		this.elogo = elogo;
	}

	public String getEshortname() {
		return eshortname;
	}

	public void setEshortname(String eshortname) {
		this.eshortname = eshortname;
	}

}
