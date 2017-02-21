package com.oucre.core.mode.search;

public class EasyUiPager {
	private Integer rows; // ÿҳ��ʾ��������
	private Integer page;// �ڼ�ҳ
	private String sort;// �����ĸ��ֶ�Ҫ����
	private String order;// ����ķ�ʽĬ�� ������ 'asc' ���� 'desc', Ĭ��ֵ�� 'asc'
	private String ids;// ѡ�е�ID

	public String getOrderby() {
		if (sort != null && order != null) {
			return ("order by " + sort + " " + order);// �������ǰ����Ϣ��������
		}
		return null;
	}

	public EasyUiPager(Integer rows, Integer page, String sort, String order) {
		super();
		this.rows = rows;
		this.page = page;
		this.sort = sort;
		this.order = order;
	}

	public EasyUiPager(Integer rows, Integer page, String sort, String order,
			String ids) {
		super();
		this.rows = rows;
		this.page = page;
		this.sort = sort;
		this.order = order;
		this.ids = ids;
	}

	public EasyUiPager() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Integer getRows() {
		return rows;
	}

	public void setRows(Integer rows) {
		this.rows = rows;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}

	public String getIds() {
		return ids;
	}

	public void setIds(String ids) {
		this.ids = ids;
	}

}
