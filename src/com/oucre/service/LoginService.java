package com.oucre.service;

import java.util.Map;

public interface LoginService {
	/**
	 * 
	 * @date 2015��3��30�� ����11:12:08
	 * @author haoli_jun
	 * @param name   �û���¼�ʺ�
	 * @param password  �û�����
	 * @return  
	 */
	public Map<String, Object> loginUser(String name, String password);
	
	
}
