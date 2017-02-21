<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../formBase.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link rel="stylesheet" href="<%=path%>/plug-in/easyui/themes/bootstrap/easyui.css" type="text/css"></link>
<link rel="stylesheet" href="<%=path%>/plug-in/easyui/themes/icon.css" type="text/css">
<link rel="stylesheet" href="<%=path%>/plug-in/lhgDialog/skins/iblue.css">
<script type="text/javascript" src="<%=path%>/plug-in/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=path%>/plug-in/easyui/locale/easyui-lang-zh_CN.js"></script>
<link href="<%=path%>/plug-in/uploadify/css/uploadify.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="<%=path%>/plug-in/uploadify/jquery.uploadify-3.1.js"></script>
<style type="text/css">
.vtbv {
	width: 100%;
}

.vtbv tr td {
	border: solid #B8CCE2 1px;
	width: 260px;
}

.vtbv tr th {
	text-align: right;
	border: solid #B8CCE2 1px;
	background-color: #F2F7FE;
	color: #5E7595;
	width: 75px;
}

.vtbv input {
	vertical-align: middle;
}

.vtbv input[type="text"] {
	width: 120px;
	height: 25px;
}

.vtbv select {
	font-size: 18px;
	width: 120px;
		height: 25px;
}

.imgdiv {
	width: 680px;
	height: 250px;
	margin-top: 5px;
}

.imgdiv ul li {
	float: left;
	margin: 0px 8px 0px 8px;
	width: 210px;
}

.imgdiv ul li p {
	margin: 0px;
	padding: 0px;
	width: 100%
}

.ptop {
	height: 30px;
	width: 210px;
	text-align: center;
}

.pimg {
	height: 152px;
	width: 210px;
	border: solid 2px #D4D4D4;
}

.pfoot {
	height: 30px;
	width: 210px;
	border-left: solid 2px #D4D4D4;
	border-right: solid 2px #D4D4D4;
	border-bottom: solid 2px #D4D4D4;
}

#brandshow {
	width: 160px;
	height: 350px;
	background-color: #FFFFFF;
	z-index: 10;
	position: absolute;
	display: none;
	margin-top: 2px;
	border: 1px solid #B8CCE2;
	position: absolute;
}

#brandshowl {
	height: 350px;
	width: 24px;
	float: left;
	text-align: center;
}

#brandshowr {
	height: 350px;
	width: 134px;
	border-left: 1px solid #B8CCE2;
	float: left;
	text-overflow: ellipsis;
	overflow: auto;
}

#brandshowl ul li a {
	font-size: 12px;
	text-decoration: none;
}

#brandshowl ul li {
	height: 3.8%;
}

#brandshowr ul li {
	float: left;
	height: 24px;
	width: 110px;
	line-height: 24px;
}

#brandshowr ul li a {
	display: block;
	width: 100%;
	height: 100%;
	padding-left: 5px;
}

.brandtopligray {
	background-color: #EFEFEF;
	padding-left: 5px;
}

.brandligray {
	background-color: #DBEAF9;
}

.as_click {
	background-color: #DBEAF9;
}

a:link {
	color: #000000;
	text-decoration: none;
}

a:visited {
	color: #000000;
	text-decoration: none;
}

ul {
	list-style-type: none;
	padding: 0px;
	margin: 0px
}

#carsshow {
	height: 300px;
	background-color: #FFFFFF;
	z-index: 10;
	position: absolute;
	display: none;
	margin-top: 2px;
	border: 1px solid #B8CCE2;
	position: absolute;
	text-overflow: ellipsis;
	overflow: auto;
}

#carsshow ul li {
	height: 24px;
	line-height: 24px;
	padding: 0px 5px 0px 5px;
}

#carsshow ul li a {
	white-space: nowrap;
	text-overflow: ellipsis;
	display: block;
	width: 100%;
	height: 100%;
}

#modelshow {
	height: 300px;
	background-color: #FFFFFF;
	z-index: 10;
	position: absolute;
	display: none;
	margin-top: 2px;
	border: 1px solid #B8CCE2;
	position: absolute;
	text-overflow: ellipsis;
	overflow: auto;
}

#modelshow ul li {
	white-space: nowrap;
	text-overflow: ellipsis;
	height: 24px;
	line-height: 24px;
	padding: 0px 5px 0px 5px;
}

#modelshow ul li a {
	display: block;
	width: 100%;
	height: 100%;
}
</style>
</head>
<body class="easyui-layout">
	<div data-options="region:'center',title:'信息录入'">
		<form class="formobj" method="post" action="<%=path%>/busi/VehicleManagerAdd.do">
			<table class="vtbv">
				<tr>
					<th>品牌:</th>
					<td><input type="text" name="brandname" id="brandname" readonly="readonly" value="请选择"><input type="hidden" id="brand" name="brand" datatype="*"><span class="Validform_checktip">请选择品牌</span>
						<div id="brandshow">
							<div id="brandshowl">
								<ul>
									<li><a href="#" onclick="javascript:document.getElementById('BA').scrollIntoView()">A</a></li>
									<li><a href="#" onclick="javascript:document.getElementById('BB').scrollIntoView()">B</a></li>
									<li><a href="#" onclick="javascript:document.getElementById('BC').scrollIntoView()">C</a></li>
									<li><a href="#" onclick="javascript:document.getElementById('BD').scrollIntoView()">D</a></li>
									<li><a href="#" onclick="javascript:document.getElementById('BE').scrollIntoView()">E</a></li>
									<li><a href="#" onclick="javascript:document.getElementById('BF').scrollIntoView()">F</a></li>
									<li><a href="#" onclick="javascript:document.getElementById('BG').scrollIntoView()">G</a></li>
									<li><a href="#" onclick="javascript:document.getElementById('BH').scrollIntoView()">H</a></li>
									<li><a href="#" onclick="javascript:document.getElementById('BJ').scrollIntoView()">J</a></li>
									<li><a href="#" onclick="javascript:document.getElementById('BK').scrollIntoView()">K</a></li>
									<li><a href="#" onclick="javascript:document.getElementById('BL').scrollIntoView()">L</a></li>
									<li><a href="#" onclick="javascript:document.getElementById('BM').scrollIntoView()">M</a></li>
									<li><a href="#" onclick="javascript:document.getElementById('BN').scrollIntoView()">N</a></li>
									<li><a href="#" onclick="javascript:document.getElementById('BO').scrollIntoView()">O</a></li>
									<li><a href="#" onclick="javascript:document.getElementById('BP').scrollIntoView()">P</a></li>
									<li><a href="#" onclick="javascript:document.getElementById('BQ').scrollIntoView()">Q</a></li>
									<li><a href="#" onclick="javascript:document.getElementById('BR').scrollIntoView()">R</a></li>
									<li><a href="#" onclick="javascript:document.getElementById('BS').scrollIntoView()">S</a></li>
									<li><a href="#" onclick="javascript:document.getElementById('BT').scrollIntoView()">T</a></li>
									<li><a href="#" onclick="javascript:document.getElementById('BU').scrollIntoView()">U</a></li>
									<li><a href="#" onclick="javascript:document.getElementById('BV').scrollIntoView()">V</a></li>
									<li><a href="#" onclick="javascript:document.getElementById('BW').scrollIntoView()">W</a></li>
									<li><a href="#" onclick="javascript:document.getElementById('BX').scrollIntoView()">X</a></li>
									<li><a href="#" onclick="javascript:document.getElementById('BY').scrollIntoView()">Y</a></li>
									<li><a href="#" onclick="javascript:document.getElementById('BZ').scrollIntoView()">Z</a></li>
								</ul>
							</div>
							<div id="brandshowr"></div>
						</div></td>
					<th>注册时间:</th>
					<td><input type="text" name="regdate" datatype="*" onClick="WdatePicker()"><span class="Validform_checktip">请填写机动车购买日期</span></td>
				</tr>
				<tr>
					<th>车系:</th>
					<td><input id="carsname" name="carsname" type="text" value="请选择品牌" readonly="readonly"><input id="cars" name="cars" type="hidden" datatype="*"><span class="Validform_checktip">请选择车系</span>
						<div id="carsshow"></div></td>
					<th>车型:</th>
					<td><select name="type" datatype="*"><option value="0">无</option></select><span class="Validform_checktip">请选择车型</span></td>
				</tr>
				<tr>
					<th>型号:</th>
					<td><input type="text" name="modelname" id="modelname" readonly="readonly" value="请选择车系"><input id="modelcode" name="modelcode" type="hidden" datatype="*"><span class="Validform_checktip">请选择型号</span>
						<div id="modelshow"></div></td>
					<th  rowspan="2">备注:</th>
					<td rowspan="2"><textarea name="remark" rows="3" cols="12" ignore="ignore" datatype="s3-198"></textarea><span class="Validform_checktip">备注可不填写</span></td>
				</tr>
				<tr>
					<th>停车区域:</th>
					<td><select id="pid" name="pid" datatype="*"><option value="0">默认区域</option></select><span class="Validform_checktip">请选择区域</span></td>
				</tr>
			</table>
			<div class="imgdiv">
				<ul>
					<li>
						<p class="pimg">
							<img src="<%=path%>/images/defaultimg/2008062503053525[1].jpg" id="img1" width="210" height="150">
						</p>
						<p class="pfoot">
							<input type="file" name="uploads" id="file_upload_1" style="margin: 0px;padding: 0px;" /><input id="pic1" name="pic1" type="hidden" datatype="*" nullmsg="最少上传一张整车图"><span class="Validform_checktip"></span>
						</p>
					</li>
					<li>
						<p class="pimg">
							<img src="<%=path%>/images/defaultimg/2008062503053525[1].jpg" id="img2" width="210" height="150">
						</p>
						<p class="pfoot">
							<input type="file" name="uploads" id="file_upload_2" style="margin: 0px;padding: 0px;" /><input type="hidden" id="pic2" name="pic2">
						</p>
					</li>
					<li>
						<p class="pimg">
							<img src="<%=path%>/images/defaultimg/2008062503053525[1].jpg" id="img3" width="210" height="150">
						</p>
						<p class="pfoot">
							<input type="file" name="uploads" id="file_upload_3" style="margin: 0px;padding: 0px;" /><input type="hidden" id="pic3" name="pic3">
						</p>
					</li>
				</ul>
			</div>
			<div class="imgdiv">
				<ul>
					<li>
						<p class="pimg">
							<img src="<%=path%>/images/defaultimg/2008062503053525[1].jpg" id="img4" width="210" height="150">
						</p>
						<p class="pfoot">
							<input type="file" name="uploads" id="file_upload_4" style="margin: 0px;padding: 0px;" /><input type="hidden" id="pic4" name="pic4">
						</p>
					</li>
					<li>
						<p class="pimg">
							<img src="<%=path%>/images/defaultimg/2008062503053525[1].jpg" id="img5" width="210" height="150">
						</p>
						<p class="pfoot">
							<input type="file" name="uploads" id="file_upload_5" style="margin: 0px;padding: 0px;" /><input type="hidden" id="pic5" name="pic5">
						</p>
					</li>
					<li>
						<p class="pimg">
							<img src="<%=path%>/images/defaultimg/2008062503053525[1].jpg" id="img6" width="210" height="150">
						</p>
						<p class="pfoot">
							<input type="file" name="uploads" id="file_upload_6" style="margin: 0px;padding: 0px;" /><input type="hidden" id="pic6" name="pic6">
						</p>
					</li>
				</ul>
			</div>
			<span class="thidden"> <input type="hidden" id="ncodes" name="ncodes"><input type="button" id="btn_sub"></span>
		</form>
	</div>
	<div data-options="region:'east',title:'不包涵零配件的选择'" style="width:300px;">
		<table id="tt">
		</table>
	</div>
	<div class="p" style="height: 30px; line-height: 30px;">
		<form id="ff" method="post">
			<span class="spanr">名称:<input name="name" style="width: 80px;">&nbsp;类型:<select name="gcode" id="gcode" style="width: 60px;"><option value="">全部</option></select>&nbsp;<a id="btn" onclick="btn()" class="easyui-linkbutton" data-options="iconCls:'icon-search'">查询</a>&nbsp;<!-- <a id="btn" onclick="reload()" class="easyui-linkbutton" data-options="iconCls:'icon-reload'">重置 </a> --></span>
		</form>
	</div>
	<script type="text/javascript">
	$(document).click(function(e) {
		e = window.event || e; // 兼容IE7
		obj = $(e.srcElement || e.target);
		if ($(obj).is("#brandname,#brandshowl ul li,#brandshowl ul li a,#brandshowr ul li")) {
			$("#brandshow").show(200);
		} else {
			$("#brandshow").hide(200);
		}
	});
	$(document).click(function(e) {
		e = window.event || e; // 兼容IE7
		obj = $(e.srcElement || e.target);
		if ($(obj).is("#carsname,#carsshow ul li")&&$("#carsshow").html()!=null&&$("#carsshow").html().length>10) {
			$("#carsshow").show(200);
		} else {
			$("#carsshow").hide(200);
		}
	});
	$(document).click(function(e) {
		e = window.event || e; // 兼容IE7
		obj = $(e.srcElement || e.target);
		if ($(obj).is("#modelname,#modelshow ul li")&&$("#modelshow").html()!=null&&$("#modelshow").html().length>10) {
			$("#modelshow").show(200);
		} else {
			$("#modelshow").hide(200);
		}
	});
	function getCarbrand(){
		var str = "";
		$.ajax({
			type : "POST",
			async : false,
			url : "<%=path%>/busi/common/findCarbrand.do",
			dataType : "json",
			success : function(json) {
				$.each(json,function(key,values){   
					str+="<li  class='brandtopligray'  id='B"+key+"' >"+key+"</li>";
				   for (var i = 0; i < values.length; i++) {
						str+="<li><a href='#' class='as bl'  id='bl_"+values[i].id+"' >"+values[i].name+"</a></li>";
				}
			});  
		}
		});
	$("#brandshowr").append("<ul>"+str+"</ul>"); 
	}
	function getCarseries(x){
		$("#carsshow ul").remove();
		var str = "";
		$.ajax({
			type : "POST",
			async : false,
			url : "<%=path%>/busi/common/findCarseriesOrderAsc.do",
			data:{code:x},
			dataType : "json",
			success : function(json) {
			 	$.each(json,function(key,values){
			 	if(key=="&nbsp;"){
			 		 str+="<li class='brandtopligray'  id='se"+key+"' >其他</li>";
			 	}else{
			 		 str+="<li class='brandtopligray'  id='se"+key+"' >"+key+"</li>";
			 	}
				   for (var i = 0; i < values.length; i++) {
						str+="<li><a href='#' class='as se'  id='se_"+values[i].id+"' >"+values[i].name+"</a></li>";
				}
			});   
		}
	});
	 $("#carsshow").append("<ul>"+str+"</ul>");
	}
	function getCarspec(x){
		$("#modelshow ul").remove();
		var str = "";
		$.ajax({
			type : "POST",
			async : false,
			url : "<%=path%>/busi/common/findCarspecOrderByYearDesc.do",
			data:{code:x},
			dataType : "json",
			success : function(json) {
			 	$.each(json,function(key,values){
			 	if(key=="&nbsp;"){
			 		 str+="<li class='brandtopligray'  id='md"+key+"' >其他</li>";
			 	}else{
			 		 str+="<li class='brandtopligray'  id='md"+key+"' >"+key+"&nbsp;款</li>";
			 	}
				   for (var i = 0; i < values.length; i++) {
						str+="<li><a href='#' class='as md'  id='md_"+values[i].id+"' >"+values[i].name+"</a></li>";
				}
			});   
		}
	});
	 $("#modelshow").append("<ul>"+str+"</ul>");
	}
	function getEnterpriseArea(){
		var str = "";
		$.ajax({
			type : "POST",
			async : false,
			url : "<%=path%>/busi/common/findEnterpriseArea.do",
			data:{type:1},
			dataType : "json",
			success : function(json) {
			  if(json.success){
				  for (var i = 0; i < json.obj.length; i++) {
						str += "<option value=\""+json.obj[i].id+"\">"+json.obj[i].name+"</option>";
				}	
			}
		$("#pid").append(str);
		}
	});
	}
	$(function() {
		getgcode();
		getdatagrid();
		getCarbrand();
		getEnterpriseArea();
		  $(".as").live("mouseover", function() {
				$(this).css("background-color", "#DBEAF9");
		   });
		  $(".as").live("mouseout", function() {
				$(this).css("background-color", "");
		 });
			$(".bl").live("click", function() {
		        $("#brandname").val($(this).html());
		        var thisid=$(this).attr("id");
		        var bid= thisid.substring(thisid.indexOf("_")+1,thisid.length);
		        $("#brand").val(bid); 
		        getCarseries(bid);
		        $("#carsname").val("请选择");
		        $("#cars").val(null);
		        $("#modelname").val("请选择车系");
		        $("#modelcode").val(null);
		    	$("#modelshow ul").remove();
		    	$(".bl").removeClass("as_click");
				$(this).addClass("as_click");
		    	$("#brandshow").hide(200);
			});
			$(".se").live("click", function() {
		        $("#carsname").val($(this).html());
		        var thisid=$(this).attr("id");
		        var bid= thisid.substring(thisid.indexOf("_")+1,thisid.length);
		        getCarspec(bid);
		        $("#cars").val(bid);
		        $("#modelname").val("请选择");
		        $("#modelcode").val(null);
		    	$(".se").removeClass("as_click");
				$(this).addClass("as_click");
		    	$("#carsshow").hide(200); 
			});
			$(".md").live("click", function() {
		        $("#modelname").val($(this).html());
		        var thisid=$(this).attr("id");
		        var id= thisid.substring(thisid.indexOf("_")+1,thisid.length);
		    	$(".md").removeClass("as_click");
				$(this).addClass("as_click");
		        $("#modelcode").val(id);
		    	$("#modelshow").hide(200); 
			});
	});
	function getgcode() {
		var str = "";
		$.ajax({
			type : "POST",
			cache : false,
			async : false,
			url : "<%=path%>/busi/common/findPartstypegcode.do",
			dataType : "json",
			success : function(json) {
				for (var i = 0; i < json.length; i++) {
					str += "<option value=\""+json[i].gcode+"\">"+json[i].name+"</option>";
				}
			}
		});
		$("#gcode").append(str);
	}
	var datagrid;
	var ff;
	function getdatagrid(){
		ff = $("#ff").form();
		getgcode();
		datagrid = $("#tt").datagrid({
			url : '<%=path%>/busi/common/findPartstype.do',
			fitColumns : true,//设置为true将自动使列适应表格宽度以防止出现水平滚动 */
			pagination : true,// 分页控件
			pageSize : 15,//默认显示大小
			fit : true,// 自动大小  
			rownumbers : true,// 行号
			/* 			singleSelect : true,//只能选中一行 */
			pageList : [ 10,15, 20, 50 ],
			sortName : 'id',//排序
			sortOrder : 'asc',// asc desc
			idField : 'id',
			columns : [ [ {
				field : 'id',
				width : 300,
				checkbox : true
			}, {
				field : 'name',
				title : '名称',
				width : 300,
				sortable : true
			} ] ],
			toolbar : ".p",
			onSelect : function(index, row) {
				ncodevalue();
			},
			onUnselect : function(index, row) {
				ncodevalue();
			},
			onRowContextMenu : function(e, rowIndex, rowData) { // 右击事件
				e.preventDefault(); // 阻止浏览器自带的右键菜单弹出
				$('#menu').menu('show', {
					left : e.pageX, // 弹出窗口的方位坐标
					top : e.pageY
				});
			}
		});
	}
	function ncodevalue() {
		var data = datagrid.datagrid("getSelections");
		if (data != null) {
			if (data != 0) {
				var str = "";
				for (var i = 0; i < data.length; i++) {
					str += data[i].ncode + ",";
				}
				$("#ncodes").val(str.substring(0, str.length - 1));
			} else {
				$("#ncodes").val("");
			}
		} else {
			$("#ncodes").val("");
		}

	}
	function btn() {
		datagrid.datagrid("load", {
			gcode : ff.find('[name="gcode"]').val(),
			name : ff.find('[name="name"]').val()
		});
	}
	function reload() {
		ff[0].reset();
		btn();
	}
	 $(document).ready(function(){
		$("#file_upload_1").uploadify({
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
					$("#img1").attr("src", "<%=path%>/common/downloadimg.do?filename=" + json.obj[1] + "&path=" + json.obj[0]);
					$("#pic1").val(json.obj[1]);
				} else {
					alert(json.msg);
				}
			}
		});
		$("#file_upload_2").uploadify({
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
					$("#img2").attr("src", "<%=path%>/common/downloadimg.do?filename=" + json.obj[1] + "&path=" + json.obj[0]);
					$("#pic2").val(json.obj[1]);
				} else {
					alert(json.msg);
				}
			}
		});
		$("#file_upload_3").uploadify({
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
					$("#img3").attr("src", "<%=path%>/common/downloadimg.do?filename=" + json.obj[1] + "&path=" + json.obj[0]);
					$("#pic3").val(json.obj[1]);
				} else {
					alert(json.msg);
				}
			}
		});
		$("#file_upload_4").uploadify({
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
					$("#img4").attr("src","<%=path%>/common/downloadimg.do?filename=" + json.obj[1] + "&path=" + json.obj[0]);
					$("#pic4").val(json.obj[1]);
				} else {
					alert(json.msg);
				}
			}
		});
		$("#file_upload_5").uploadify({
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
					$("#img5").attr("src","<%=path%>/common/downloadimg.do?filename=" + json.obj[1] + "&path=" + json.obj[0]);
					$("#pic5").val(json.obj[1]);
				} else {
					alert(json.msg);
				}
			}
		});
		$("#file_upload_6").uploadify({
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
					$("#img6").attr("src","<%=path%>/common/downloadimg.do?filename=" + json.obj[1] + "&path=" + json.obj[0]);
						$("#pic6").val(json.obj[1]);
					} else {
						alert(json.msg);
					}
				}
			});
		});
	</script>

</body>
</html>