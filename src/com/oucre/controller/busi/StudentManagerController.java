package com.oucre.controller.busi;

import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oucre.core.mode.json.AjaxJson;
import com.oucre.core.mode.search.EasyUiPager;
import com.oucre.core.util.ValidateUtil;
import com.oucre.pojo.Student;
import com.oucre.pojo.User;
import com.oucre.service.StudentManagerService;

@Controller
@RequestMapping(value = "/busi")
public class StudentManagerController {
	@Resource
	private StudentManagerService studentService;
	
	@RequestMapping(value = "/StudentManager.do")
	public @ResponseBody
	Map<String, Object> findStudentSearch(@ModelAttribute EasyUiPager easyUiPager, HttpServletRequest req) {
		Map<String, Object> map = new HashMap<String, Object>();
		String name = req.getParameter("name");
		String code = req.getParameter("mobile");
		if (ValidateUtil.neNull(name)) {
			map.put("name", name);
		}
		if (ValidateUtil.neNull(code)) {
			map.put("mobile", code);
		}
		return studentService.findStudentSearch(map, easyUiPager,(User)req.getSession().getAttribute("user_info"));
	}

	@RequestMapping(value = "/StudentManagerUpd.do")
	public @ResponseBody
	AjaxJson updStudent(@ModelAttribute Student Student,HttpSession session) {
		System.out.println("----------------"+Student+"-----------------");
		return studentService.updStudent(Student,(User)session.getAttribute("user_info"));
	}

	@RequestMapping(value = "/StudentManagerAdd.do")
	public @ResponseBody
	AjaxJson addStudent(@ModelAttribute Student Student,HttpSession session) {
		return studentService.addStudent(Student,(User)session.getAttribute("user_info"));
	}

	@RequestMapping(value = "/StudentManagerDel.do")
	public @ResponseBody
	AjaxJson delStudent(@RequestParam(value = "id") Integer id, HttpSession session) {
		return studentService.delStudent(id, (User)session.getAttribute("user_info"));
	}
}
