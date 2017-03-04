package com.oucre.core.mode.module;

import java.util.List;

import com.oucre.pojo.Resource;

public class ModelInfo implements java.io.Serializable {
	private static final long serialVersionUID = 1L;
	private Integer id; // һ���˵�id
	private String name; // �˵�����
	private String link;
	private List<Resource> submenus;// �����˵��б�

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Resource> getSubmenus() {
		return submenus;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public void setSubmenus(List<Resource> submenus) {
		this.submenus = submenus;
	}
}
