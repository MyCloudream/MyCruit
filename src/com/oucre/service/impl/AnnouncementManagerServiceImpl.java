package com.oucre.service.impl;

import java.util.Date;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.oucre.core.mode.json.AjaxJson;
import com.oucre.core.mode.search.EasyUiPager;
import com.oucre.core.util.ValidateUtil;
import com.oucre.dao.AnnouncementDao;
import com.oucre.pojo.Announcement;
import com.oucre.service.AnnouncementManagerService;

@Service
public class AnnouncementManagerServiceImpl implements AnnouncementManagerService {
	@Autowired
	private AnnouncementDao announcementDao;

	@Override
	public AjaxJson addAnnouncementManager(Announcement entity) {
		AjaxJson a = new AjaxJson();
		entity.setSubdate(new Date());
		entity.setUpddate(new Date());
		if (announcementDao.add(entity) > 0) {
			a.setSuccess(true);
			a.setMsg("��ӳɹ�");
			return a;
		}
		return a;
	}

	@Override
	public AjaxJson updAnnouncementManager(Announcement entity) {
		AjaxJson a = new AjaxJson();
		entity.setUpddate(new Date());
		if (announcementDao.upd(entity)) {
			a.setSuccess(true);
			a.setMsg("�޸ĳɹ�");
			return a;
		}
		return a;
	}

	@Override
	public AjaxJson delAnnouncementManager(String id) {
		AjaxJson a = new AjaxJson();
		if (ValidateUtil.isInt(id)) {
			if (announcementDao.del(Integer.parseInt(id))) {
				a.setSuccess(true);
				a.setMsg("�����ɹ�");
			} else {
				a.setSuccess(false);
				a.setMsg("ɾ��ʧ��");
			}
		} else {
			a.setSuccess(false);
			a.setMsg("�Ƿ�����");
		}
		return a;
	}

	@Override
	public Map<String, Object> findAnnouncementSearch(Map<String, Object> map, EasyUiPager easyUiPager) {
		return announcementDao.findAnnouncementSearch(map, easyUiPager);
	}

	@Override
	public Announcement findAnnouncement(Integer id) {
		return announcementDao.findById(id);
	}

}
