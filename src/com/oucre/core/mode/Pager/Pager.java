package com.oucre.core.mode.Pager;

import java.util.List;

/**
 * ��ҳʵ����
 */
public class Pager {
	private int currentPage;	//��ǰҳ��
	private int pageSize;		//ҳ���С
	private int pageTotal;		//��ҳ��
	private int recordTotal;	//�ܼ�¼��
	private int firstRecord;	//��ǰ��¼�ĵ�һ��
	private int maxRecord;		//��ǰ��¼������¼��
	
	private List<?> pageData = null;

	public Pager(int currentPage, int pageSize) {
		this.currentPage = currentPage;
		this.pageSize = pageSize;
	}
	
	public Pager() {
		this.currentPage = 1;
		this.pageSize = 5;
		this.firstRecord = (this.currentPage-1)*this.pageSize;
		this.maxRecord = currentPage*this.pageSize;
	}

	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getPageTotal() {
		return pageTotal;
	}
	public int getRecordTotal() {
		return recordTotal;
	}
	public void setRecordTotal(int recordTotal) {
		int pageNumber = 0;
		int firstNumber = 0;
		//�ܼ�¼��
		this.recordTotal = recordTotal;
		//�ܼ�ҳ��
		if(this.recordTotal%this.pageSize == 0){
			pageNumber = this.recordTotal/this.pageSize;
		}else{
			pageNumber = this.recordTotal/this.pageSize+1;
		}
		setPageTotal(pageNumber);
		
		//��һ����¼
		firstNumber = (this.currentPage-1)<=0?1:(this.currentPage-1);
		setFirstRecord(firstNumber*this.pageSize+1);
		
		//����¼
		setMaxRecord(this.currentPage*this.pageSize);
		
	}

	public int getFirstRecord() {
		return firstRecord;
	}

	public void setFirstRecord(int firstRecord) {
		this.firstRecord = firstRecord;
	}

	public int getMaxRecord() {
		return maxRecord;
	}

	public void setMaxRecord(int maxRecord) {
		this.maxRecord = maxRecord;
	}

	public List<?> getPageData() {
		return pageData;
	}

	public void setPageData(List<?> pageData) {
		this.pageData = pageData;
	}

	public void setPageTotal(int pageTotal) {
		this.pageTotal = pageTotal;
	}

}
