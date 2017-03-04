package com.oucre.core.mode.json;


public class AjaxJson {

	private boolean success = false;// �Ƿ�ɹ�
	private String msg = "����ʧ��";// ��ʾ��Ϣ
	private Object obj = null;// ������Ϣ
	
	

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Object getObj() {
		return obj;
	}

	public void setObj(Object obj) {
		this.obj = obj;
	}

	public boolean isSuccess() {
		return success;
	}

	public void setSuccess(boolean success) {
		this.success = success;
	}

	public AjaxJson() {
		super();
	}

	public AjaxJson(boolean success) {
		super();
		this.success = success;
	}

	public AjaxJson(boolean success, String msg) {
		super();
		this.success = success;
		this.msg = msg;
	}

	public AjaxJson(boolean success, String msg, Object obj) {
		super();
		this.success = success;
		this.msg = msg;
		this.obj = obj;
	}

	/*public String getJsonStr() {
		JSONObject obj = new JSONObject();
		obj.put("success", this.isSuccess());
		obj.put("msg", this.getMsg());
		obj.put("obj", this.obj);
		return obj.toJSONString();
	}*/
}
