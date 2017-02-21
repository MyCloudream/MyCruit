<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../formBase.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<style type="text/css">
.vtb {
	width: 100%;
}

.vtb tr td {
	width: 40%;
}

.vtb tr th {
	width: 10%;
}
</style>
<link href="<%=path%>/plug-in/uploadify/css/uploadify.css"
	type="text/css" rel="stylesheet" />
<script type="text/javascript"
	src="<%=path%>/plug-in/uploadify/jquery.uploadify-3.1.js"></script>
<script type="text/javascript">
	$(function() {
		for (var i = 0; i < win.Areas.length; i++) {
			if (win.Areas[i].ccode == '0') {
				$("#pcode").append(
						"<option value='"+win.Areas[i].pcode+"'>"
								+ win.Areas[i].name + "</option>");
			}
		}
		for (var i = 0; i < win.Areas.length; i++) {
			if (formdata[0].pcode == win.Areas[i].pcode) {
				$("#ccode").append(
						"<option value='"+win.Areas[i].ccode+"'>"
								+ win.Areas[i].name + "</option>");
			}
		}
		$("#pcode").change(function() {
			findcity(this.value);
		});
		valform("id", formdata[0].id, "");
		valform("name", formdata[0].name, "");
		valform("qq", formdata[0].qq, "");
		valform("tel", formdata[0].tel, "");
		valform("mobile", formdata[0].mobile, "");
		valform("email", formdata[0].email, "");
		valform("person", formdata[0].person, "");
		valform("address", formdata[0].address, "");
		valform("remark", formdata[0].remark, "textarea");
		valform("pcode", formdata[0].pcode, "select");
		valform("ccode", formdata[0].ccode, "select");
		valform("web", formdata[0].web, "");
		valform("shortname", formdata[0].shortname, "");
		valform("edesc", formdata[0].edesc, "textarea");
		 if(formdata[0].logo!=null&&formdata[0].logo.length>1){
			 $("#logo_img").attr("src", '<%=path%>/common/downloadimg.do?filename=' + formdata[0].logo + '&path=img\\enterprise\\logo\\');
			 $("#logo").val(formdata[0].logo);
		 } 
	});
	function findcity(x) {
		$("#ccode").empty();
		if (x != "") {
			for (var i = 0; i < win.Areas.length; i++) {
				if (x == win.Areas[i].pcode) {
					if (win.Areas[i].ccode != '0') {
						$("#ccode").append(
								"<option value='"+win.Areas[i].ccode+"'>"
										+ win.Areas[i].name + "</option>");
					}
				}
			}
		} else {
			$("#ccode").append("<option value=''>请选择省</option>");
		}
	}
	$(document).ready(function() {
		$("#file_logo").uploadify({
			height        : 25,
			width         : 50,
			swf           : '<%=path%>/plug-in/uploadify/uploadify.swf',
			uploader      : '<%=path%>/common/upload.do',
			'buttonText' : '上传图片',
			'fileTypeDesc' : 'Image Files',
			'fileTypeExts' : '*.gif; *.jpg; *.png',
			'fileObjName' : 'file',
			'fileSizeLimit' : '10000KB',
			 multi : false,
			'onUploadSuccess' : function(file, data, response) {
				var json = eval('(' + data + ')');
				if (json.success) {
	                $("#logo_img").attr("src","<%=path%>/common/downloadimg.do?filename="
													+ json.obj[1] + "&path="
													+ json.obj[0]);
									$("#logo").val(json.obj[1]);
								} else {
									alert(json.msg);
								}
							}
			});
    });
</script>
</head>
<body>
	<form class="formobj" method="post" action="/busi/EnterpriseManagerUpd.do">
		<table class="vtb">
			<tr>
				<th><span class="t_t">*</span>省:</th>
				<td><select id="pcode" name="pcode" datatype="*"><option
							value="">请选择省</option>
				</select><span class="Validform_checktip">省</span></td>
				<th><span class="t_t">*</span>市:</th>
				<td><select id="ccode" name="ccode" datatype="*"
					nullmsg="请填写信息！"><option value="">请选择市</option>
				</select><span class="Validform_checktip">市</span></td>
			</tr>
			<tr>
				<th><span class="t_t">*</span>公司名称:</th>
				<td><input type="text" name="name" datatype="s3-30"
					errormsg="请输入正确的名称" nullmsg="请填写信息！"><span
					class="Validform_checktip">企业名称</span></td>
				<th><span class="t_t"></span>企业简称:</th>
				<td><input type="text" name="shortname" ignore="ignore"
					datatype="s2-9" errormsg="请输入正确的联络人姓名" nullmsg="请填写信息！"><span
					class="Validform_checktip">可不填写</span></td>
			</tr>
			<tr>
				<th><span class="t_t">*</span>手机:</th>
				<td><input type="text" name="tel" datatype="m"
					errormsg="请输入正确的手机号码" nullmsg="请填写信息！"><span
					class="Validform_checktip">手机</span></td>
				<th>电话-座机:</th>
				<td><input type="text" name="mobile" datatype="*"
					ignore="ignore"><span class="Validform_checktip">电话可以不填写</span></td>
			</tr>
			<tr>
				<th><span class="t_t">*</span>邮箱:</th>
				<td><input type="text" name="email" datatype="e"
					errormsg="请输入正确的邮箱格式" nullmsg="请填写信息！"><span
					class="Validform_checktip">企业邮箱</span></td>
				<th><span class="t_t">*</span>企业QQ:</th>
				<td><input type="text" name="qq" datatype="qq"
					errormsg="请输入正确的QQ号码" nullmsg="请填写信息！"><span
					class="Validform_checktip">QQ</span></td>

			</tr>
			<tr>
				<th><span class="t_t">*</span>详细地址:</th>
				<td><input type="text" name="address" datatype="s5-100"
					errormsg="请输入正确的链接地址" nullmsg="请填写信息！"><span
					class="Validform_checktip">详细地址</span></td>
				<th><span class="t_t"></span>公司官网:</th>
				<td><input type="text" ignore="ignore" name="web"
					datatype="url" errormsg="请输入正确的链接地址" nullmsg="请填写信息！"><span
					class="Validform_checktip">网址,可不填写</span></td>
			</tr>
			<tr>
				<th><span class="t_t">*</span>联络人:</th>
				<td><input type="text" name="person" datatype="zh2-10"
					errormsg="请输入正确的联络人姓名" nullmsg="请填写信息！"><span
					class="Validform_checktip">联络人姓名必须是中文</span></td>

				<th rowspan="2">公司简介:</th>
				<td rowspan="2"><textarea rows="6" cols="25" name="edesc"
						datatype="*3-50" ignore="ignore" errormsg="描述在3~50位字符"></textarea>
					<span class="Validform_checktip">可以不填写</span></td>
			</tr>
			<tr>
				<th>备注:</th>
				<td><textarea rows="4" cols="20" name="remark" datatype="*3-50"
						ignore="ignore" errormsg="描述在3~50位字符"></textarea> <span
					class="Validform_checktip">可以不填</span></td>
			</tr>
			<tr>
				<th>Logo:</th>
				<td colspan="3">
					<p>
						<img src="<%=path%>/images/defaultimg/planal_flat.png"
							id="logo_img" width="210" height="150">
					</p>
					<p>
						<input type="file" name="file_logo" id="file_logo"
							style="margin: 0px;padding: 0px;" /><input type="hidden"
							id="logo" name="logo">
					</p>
				</td>
			</tr>
		</table>
		<span class="thidden"><input type="hidden" name="id"
			type="text"><input type="button" id="btn_sub"></span>
	</form>
</body>
</html>