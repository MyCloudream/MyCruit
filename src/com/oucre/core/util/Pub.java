package com.oucre.core.util;

/**
 * ȫ�ֹ���������
 */
public interface Pub {
	/** ���Լ�ת�� **/
	String CONVER_BY_MYSELF = "1";
	/** �����˿���ת�� **/
	String CONVER_BY_ANYONE = "0";
	/** ת��ʣ������ **/
	int CONVER_DAYS = 30;
	
	
	/** --------------------------------------ѧ��״̬------------------------------------ **/
	/** ѧ��¼��״̬���ύ���� **/
	String STATUS_APPLY_ENTRING = "1";
	/** ѧ����Ϣ���ͨ�� **/
	String STATUS_VARIFY_INFO_SUCCESS = "2";
	/** ѧ����Ϣ��˲�ͨ�� **/
	String STATUS_VERIFY_INFO_FAILD = "3";
	/** ת��������� **/
	String STATUS_APPLY_COVER = "4";
	/** ת�����ͨ�� **/
	String STATUS_VERIFY_COVER_SUCCESS = "5";
	/** ת�����ʧ�� **/
	String STATUS_VERIFY_COVER_FAILD = "6";
	/** ת��ʧ�� **/
	String STATUS_COVER_FAILD = "7";
	
	/** --------------------------------------ϵͳ��ɫID------------------------------------ **/
	/** ������ **/
	Integer ROLE_ID_USER_INTRODUCER = 22;
	
	/** ����� **/
	Integer ROLE_ID_USER_VERIFYER = 24;
}
