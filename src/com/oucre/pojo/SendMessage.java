package com.oucre.pojo;

import static javax.persistence.GenerationType.IDENTITY;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "sendmessage", catalog = "mycruit")
public class SendMessage implements Serializable {
	private Integer id;
	private String gnum;
	private String gname;
	private String message;
	private String mtime;

	public SendMessage() {

	}

	public SendMessage(Integer id) {
		this.id = id;
	}

	public SendMessage(Integer id, String gnum, String gname, String message, String mtime) {
		this.id = id;
		this.gnum = gnum;
		this.gname = gname;
		this.message = message;
		this.mtime = mtime;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "gnum", length = 15)
	public String getGnum() {
		return gnum;
	}

	public void setGnum(String gnum) {
		this.gnum = gnum;
	}

	@Column(name = "gname", length = 30)
	public String getGname() {
		return gname;
	}

	public void setGname(String gname) {
		this.gname = gname;
	}

	@Column(name = "message")
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Column(name = "mtime", length = 20)
	public String getMtime() {
		return mtime;
	}

	public void setMtime(String mtime) {
		this.mtime = mtime;
	}

}
