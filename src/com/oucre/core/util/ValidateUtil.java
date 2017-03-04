/**
 * Filename��ValidateUtil.java
 * Created by: ë��
 * Created on: 2004-12-26 15:00:59
 * Last modified by��$Author: maoxiang $
 * Last modified on: $Date: 2006/08/30 07:14:21 $
 * Revision: $Revision: 1.1 $
 */
package com.oucre.core.util;

import java.text.SimpleDateFormat;

/**
 * 
 * ������Form����Ч��
 */
public class ValidateUtil {
	/**
	 * �����ڿ�
	 * 
	 * @date 2015-1-16 ����10:25:44
	 * @param str
	 * @return
	 */
	public static boolean neNull(Object str) {
		if (str != null && str.toString().trim().length() > 0)
			return true;
		return false;
	}

	/**
	 * �ж��Ƿ�Ϊ����
	 * 
	 * @param arg
	 * @return boolean true ��������Ϊ����
	 */
	public static boolean isInt(String arg) {
		if (arg == null) {
			return false;
		}
		try {
			Integer.valueOf(arg);
			return true;
		} catch (NumberFormatException e) {
			return false;
		}
	}

	/**
	 * �ж��Ƿ�Ϊ������
	 * 
	 * @param arg
	 * @return boolean true ��������Ϊ����
	 */
	public static boolean isFloat(String arg) {
		if (arg == null) {
			return false;
		}
		try {
			Float.valueOf(arg);
			return true;
		} catch (NumberFormatException e) {
			return false;
		}
	}

	/**
	 * �ж��Ƿ�Ϊ������
	 * 
	 * @param arg
	 * @return boolean true ��������Ϊ����
	 */
	public static boolean isLong(String arg) {
		if (arg == null) {
			return false;
		}
		try {
			Long.valueOf(arg);
			return true;
		} catch (NumberFormatException e) {
			return false;
		}
	}

	/**
	 * �ж��Ƿ�Ϊ����
	 * 
	 * @param arg
	 *            ��ʽΪ yyyy-mm-dd hh:mm:ss.fffffffff ���� yyyy-mm-dd
	 * @return
	 */
	public static boolean isDateTime(String arg) {
		if (arg == null) {
			return false;
		}
		try {
			// �ж��Ƿ�Ϊ yyyy-mm-dd hh:mm:ss.fffffffff
			if (ConvertUtil.toDateTime(arg) != null) {
				return true;
			}
		} catch (IllegalArgumentException e) {
			return false;
		}
		return false;
	}

	public static boolean isNull(String value) {
		return (value == null || "".equals(value.trim()) || "null".equals(value
				.trim()));
	}

	public static boolean isNull(Object value) {
		if (value == null) {
			return true;
		}
		if (value instanceof String) {
			return isNull((String) value);
		}
		return false;
	}

	public static boolean exceedLength(String value, int length) {
		return (value == null || "".equals(value.trim())
				|| "null".equals(value.trim()) || value.length() > length);
	}

	public static boolean containHTML(String value) {
		if (value.indexOf("<") >= 0 || value.indexOf(">") >= 0
				|| value.indexOf("&") >= 0 || value.indexOf("\"") >= 0
				|| value.indexOf("'") >= 0 || value.indexOf("\\") >= 0) {

			return true;
		}
		return false;
	}

	public static boolean contains(String[] array, String value) {
		for (int i = 0; array != null && i < array.length; i++) {
			if (array[i].equals(value)) {
				return true;
			}
		}
		return false;
	}

	public static boolean isEmail(String email) {
		// return (/^\w+@\w+\.[\w.]+$/.test(s) && s.charAt(s.length-1) != ".");
		if (ValidateUtil.isNull(email)) {
			return false;
		}

		if (!allValidChars(email)) { // check to make sure all characters are
										// valid
			return false;
		}
		if (email.indexOf("@") < 1) { // must contain @, and it must not be the
										// first character
			return false;
		} else if (email.lastIndexOf(".") <= email.indexOf("@")) { // last dot
																	// must be
																	// after the
																	// @
			return false;
		} else if (email.indexOf("@") == email.length()) { // @ must not be the
															// last character
			return false;
		} else if (email.indexOf("..") >= 0) { // two periods in a row is not
												// valid
			return false;
		} else if (email.indexOf(".") == email.length()) { // . must not be the
															// last character
			return false;
		}
		return true;
	}

	public static boolean isIDCard(String value, String provinceCode,
			String birthday) {
		// ʡ��code
		String value1 = provinceCode;
		String value2 = birthday;
		try {
			// log.debug("validate value=" + value);
			// ����Ч��
			final int[] weight = { 7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5,
					8, 4, 2 };
			final char[] checkSum = { '1', '0', 'X', '9', '8', '7', '6', '5',
					'4', '3', '2' };
			final String area = "11-22-35-44-53-12-23-36-45-54-13-31-37-46-61-14-32-41-50-62-15-33-42-51-63-21-34-43-52-64-65-71-81-82-91";
			char[] element;
			int len = value.length();
			element = new char[len];
			value.getChars(0, len, element, 0);
			// log.debug("check length=" + len);
			// Check the lenghth.
			if (len != 18 && len != 15) {
				// FieldChecks.rejectValue(errors, field, va);
				return false;
			}

			// log.debug("Check the format.");
			for (int i = 0; i < len; i++) {
				char ch = element[i];
				if ((!Character.isDigit(ch) && i < 17)
						|| (i == 17 && !Character.isDigit(ch) && !(Character
								.toUpperCase(ch) == 'X'))) {
					// FieldChecks.rejectValue(errors, field, va);
					return false;
				}
			}
			// log.debug("Check whether the area code is valid.");
			if (-1 == area.indexOf(String.copyValueOf(element, 0, 2))) {
				// FieldChecks.rejectValue(errors, field, va);
				return false;
			}
			if (!isNull(value1)) {
				// log.debug("�ж��Ƿ��ѡ���ʡ��һ��");
				// log.debug("province=" + value1);
				if (!value1.equals(String.copyValueOf(element, 0, 2))) {
					// FieldChecks.rejectValue(errors, field, va);
					return false;
				}
			}
			//
			String birthDate;
			if (len == 15) {
				birthDate = "19" + value.substring(6, 12);
			} else { // 18
				birthDate = value.substring(6, 14);
			}
			// log.debug("check whether Birth date is valide.=" + birthDate);
			try {
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
				if (!sdf.format(sdf.parse(birthDate)).equals(birthDate)) {
					throw new Exception("��Ч����");
				}
			} catch (Exception e1) {
				// log.debug(e1.getMessage());
				// FieldChecks.rejectValue(errors, field, va);
				return false;
			}
			if (!isNull(value2)) {
				// 1log.debug("�ж��Ƿ��ѡ�������һ��=" + value2);
				SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
				SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
				if (!sdf1.format(sdf.parse(birthDate)).equals(value2)) {
					// log.debug("�����������ڲ�һ��.");
					// FieldChecks.rejectValue(errors, field, va);
					return false;
				}
			}
			// log.debug("check the checkSum is valide.");
			if (len == 18) {
				int sum = 0;
				for (int i = 0; i < 17; i++) {
					sum += Character.getNumericValue(element[i]) * weight[i];
				}
				if (checkSum[sum % 11] != Character.toUpperCase(element[17])) {
					// FieldChecks.rejectValue(errors, field, va);
					return false;
				}
			}
			return true;
		} catch (Exception e) {
			// log.debug(e.getMessage());
			// FieldChecks.rejectValue(errors, field, va);
			return false;
		}
	}

	private static boolean allValidChars(String c) {
		boolean parsed = true;
		String validchars = "abcdefghijklmnopqrstuvwxyz0123456789@.-_";
		for (int i = 0; i < c.length(); i++) {
			char letter = c.charAt(i);
			if (validchars.indexOf(letter) != -1) {
				continue;
			}
			parsed = false;
			break;
		}
		return parsed;
	}

	public static boolean isMobile(String value) {
		if (ValidateUtil.isNull(value)) {
			return false;
		}
		String strTemp = "0123456789";
		if (value.indexOf("13") != 0 && value.indexOf("0") != 0) {
			// ('���󣺲�����Ч���ֻ�/С��ͨ/�̶��绰���룡');
			return false;
		}
		if (value.length() < 11) {
			// alert ('�����ֻ�/С��ͨ/�̶��绰���볤�Ȳ���С��11��');
			return false;
		}
		for (int i = 0; i < 11; i++) {
			if (strTemp.indexOf(value.charAt(i)) < 0) {
				return false;
			}
			// '�����ֻ����벻�ܺ����ַ���');
		}
		return true;
	}
}
