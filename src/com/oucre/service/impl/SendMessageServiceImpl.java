package com.oucre.service.impl;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oucre.core.mode.json.AjaxJson;
import com.oucre.core.mode.search.EasyUiPager;
import com.oucre.core.util.ValidateUtil;
import com.oucre.dao.SendMessageDao;
import com.oucre.pojo.SendMessage;
import com.oucre.pojo.User;
import com.oucre.service.SendMessageService;

@Service
public class SendMessageServiceImpl implements SendMessageService {
	@Autowired
	private SendMessageDao sendMessageDao;

	@Override
	public Map<String, Object> findSendMessageSearch(Map<String, Object> map, EasyUiPager easyUiPager) {
		return sendMessageDao.findSendMessageSearch(map, easyUiPager);
	}

	@Override
	public AjaxJson addSendMessage(SendMessage entity) {
		AjaxJson a = new AjaxJson();
		entity.setMtime(System.currentTimeMillis()+"");
		if (sendMessageDao.add(entity) > 0) {
			a.setSuccess(true);
			a.setMsg("添加成功");
			return a;
		}
		return a;
	}

	@Override
	public AjaxJson delSendMessage(Integer id, User attribute) {
		AjaxJson a = new AjaxJson();
		if (ValidateUtil.isInt(id+"")) {
			if (sendMessageDao.del(id)) {
				a.setSuccess(true);
				a.setMsg("操作成功");
			} else {
				a.setSuccess(false);
				a.setMsg("操作失败");
			}
		} else {
			a.setSuccess(false);
			a.setMsg("操作失败");
		}
		return a;
	}

}
