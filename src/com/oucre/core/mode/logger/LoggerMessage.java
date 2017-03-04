package com.oucre.core.mode.logger;

public class LoggerMessage {
	private String code;// �������
	private String message; // ������Ϣ
	private String classs;// �쳣��
	private String method;// ����

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getClasss() {
		return classs;
	}

	public void setClasss(String classs) {
		this.classs = classs;
	}

	public String getMethod() {
		return method;
	}

	public void setMethod(String method) {
		this.method = method;
	}

	@Override
	public String toString() {
		return "LoggerMessage [�������=" + code + ", ������Ϣ=" + message + ", ������="
				+ classs + ", ���󷽷�=" + method + "]";
	}

	public LoggerMessage(String code, String message, String classs,
			String method) {
		super();
		this.code = code;
		this.message = message;
		this.classs = classs;
		this.method = method;
	}

	public LoggerMessage() {
		super();
	}

}
