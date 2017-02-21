package com.oucre.core.util;

import java.io.BufferedInputStream;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;
import java.util.Properties;

public class PropertiesUtil {
	/**
	 * �������ƻ�����ƶ�Ӧ�ı�� ���߷�֮��ɡ�
	 * 
	 * @param c
	 *            �����Ķ���
	 * @param strProName
	 *            ������Ϣ������
	 * @param strProName
	 *            ���������
	 */
	public static String getProperties(String strPropertiesName,
			String strName) {
		Properties properties = new Properties();
		try {
			// ͨ��activity�е�context��ȡsetting.properties��FileInputStream
			InputStream in = new BufferedInputStream(new FileInputStream(
					strPropertiesName));
			properties.load(in);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		return properties.get(strName).toString();
	}

	public static List<String> getAllKeys(String strPropertiesName) {
		List<String> list = new ArrayList<String>();
		Properties props = new Properties();
		try {
			InputStream in = new BufferedInputStream(new FileInputStream(
					strPropertiesName));
			props.load(in);
			Enumeration en = props.propertyNames();
			while (en.hasMoreElements()) {
				String key = (String) en.nextElement();
				// ����key���value
//				String value = props.getProperty(key);
				list.add(key);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
}