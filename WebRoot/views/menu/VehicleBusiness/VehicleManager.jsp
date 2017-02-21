<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../menuBase.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title></title>
<style type="text/css">
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
<body>
	<div class="p">
		<form id="ff" method="post">
			<table cellpadding="0" cellspacing="0" border="0" >
				<tr>
					<th>品牌:</th>
					<td><input type="text" name="brandname" id="brandname"
						readonly="readonly" value="请选择"><input
						style="display: none;" type="text" id="brand" name="brand">
						<div id="brandshow">
							<div id="brandshowl">
								<ul>
									<li><a href="#"
										onclick="javascript:document.getElementById('BA').scrollIntoView()">A</a></li>
									<li><a href="#"
										onclick="javascript:document.getElementById('BB').scrollIntoView()">B</a></li>
									<li><a href="#"
										onclick="javascript:document.getElementById('BC').scrollIntoView()">C</a></li>
									<li><a href="#"
										onclick="javascript:document.getElementById('BD').scrollIntoView()">D</a></li>
									<li><a href="#"
										onclick="javascript:document.getElementById('BE').scrollIntoView()">E</a></li>
									<li><a href="#"
										onclick="javascript:document.getElementById('BF').scrollIntoView()">F</a></li>
									<li><a href="#"
										onclick="javascript:document.getElementById('BG').scrollIntoView()">G</a></li>
									<li><a href="#"
										onclick="javascript:document.getElementById('BH').scrollIntoView()">H</a></li>
									<li><a href="#"
										onclick="javascript:document.getElementById('BJ').scrollIntoView()">J</a></li>
									<li><a href="#"
										onclick="javascript:document.getElementById('BK').scrollIntoView()">K</a></li>
									<li><a href="#"
										onclick="javascript:document.getElementById('BL').scrollIntoView()">L</a></li>
									<li><a href="#"
										onclick="javascript:document.getElementById('BM').scrollIntoView()">M</a></li>
									<li><a href="#"
										onclick="javascript:document.getElementById('BN').scrollIntoView()">N</a></li>
									<li><a href="#"
										onclick="javascript:document.getElementById('BO').scrollIntoView()">O</a></li>
									<li><a href="#"
										onclick="javascript:document.getElementById('BP').scrollIntoView()">P</a></li>
									<li><a href="#"
										onclick="javascript:document.getElementById('BQ').scrollIntoView()">Q</a></li>
									<li><a href="#"
										onclick="javascript:document.getElementById('BR').scrollIntoView()">R</a></li>
									<li><a href="#"
										onclick="javascript:document.getElementById('BS').scrollIntoView()">S</a></li>
									<li><a href="#"
										onclick="javascript:document.getElementById('BT').scrollIntoView()">T</a></li>
									<li><a href="#"
										onclick="javascript:document.getElementById('BU').scrollIntoView()">U</a></li>
									<li><a href="#"
										onclick="javascript:document.getElementById('BV').scrollIntoView()">V</a></li>
									<li><a href="#"
										onclick="javascript:document.getElementById('BW').scrollIntoView()">W</a></li>
									<li><a href="#"
										onclick="javascript:document.getElementById('BX').scrollIntoView()">X</a></li>
									<li><a href="#"
										onclick="javascript:document.getElementById('BY').scrollIntoView()">Y</a></li>
									<li><a href="#"
										onclick="javascript:document.getElementById('BZ').scrollIntoView()">Z</a></li>
								</ul>
							</div>
							<div id="brandshowr"></div>
						</div></td>
					<th>车系:</th>
					<td><input id="carsname" name="carsname" type="text"
						value="请选择品牌" readonly="readonly"><input id="cars"
						name="cars" style="display: none;" type="text">
						<div id="carsshow"></div></td>
					<th>车型:</th>
					<td><input type="text" name="modelname" id="modelname"
						readonly="readonly" value="请选择车系"><input id="modelcode"
						name="modelcode" style="display: none;" type="text">
						<div id="modelshow"></div></td>
					<th>车辆年限:</th>
					<td><select name="regdate">
							<option value="">不限</option>
							<option value="3">3年内</option>
							<option value="4">4年内</option>
							<option value="5">5年内</option>
							<option value="6">6年内</option>
							<option value="7">7年内</option>
							<option value="8">8年内</option>
							<option value="9">9年内</option>
							<option value="10">10年内</option>
							<option value="-10">10年以上</option>
					</select></td>	
				</tr>
				<tr>
					<th>总成:</th>
					<td><select id="gcode" name="gcode"><option value="">全部</option></select>
					</td>
					<th>总成类型:</th>
					<td><select id="ncode" name="ncode"><option value="">全部</option></select>
					</td>
					<th>停车区:</th>
					<td><select name="pid" id="pid"><option value="">全部区域</option>
							<option value="0">默认区域</option></select></td>
					<th align="right" colspan="2"><a id="btn" onclick="btn()"
						class="easyui-linkbutton" data-options="iconCls:'icon-search'">查询</a>&nbsp;&nbsp;<a
						id="btn" onclick="reload()" class="easyui-linkbutton"
						data-options="iconCls:'icon-reload'">重置 </a></th>
				</tr>
			</table>
			<hr style="border: 1px solid #D4D4D4; margin: 0px 0px 4px 0px">
		</form>
	</div>
	<table id="tt">
	</table>
</body>
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
			data : {
				type : 1
			},
			dataType : "json",
			success : function(json) {
				if (json.success) {
					for (var i = 0; i < json.obj.length; i++) {
						str += "<option value=\""+json.obj[i].id+"\">"
								+ json.obj[i].name + "</option>";
					}
				}
				$("#pid").append(str);
			}
		});
	}
	
function getgcode(){
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
function getncode(x){
	$("#ncode option").remove();
    var str = "";
	if(x!=null&&x.length>0){
			$.ajax({
				type : "POST",
				async : false,
				url : "<%=path%>/busi/common/findPartstypencode.do",
				data : {
					code : x
				},
				dataType : "json",
				success : function(json) {
					str += "<option value=''>全部</option>";
					for (var i = 0; i < json.length; i++) {
						str += "<option value=\""+json[i].ncode+"\">"
								+ json[i].name + "</option>";
					}
				}
			});
		} else {
			str = "<option value=''>请选择</option>";
		}
		$("#ncode").append(str);
	}
	var datagrid;
	$(function() {
		getdatagrid();
		getCarbrand();
		getgcode();
		getEnterpriseArea();
		$(".as").live("mouseover", function() {
			$(this).css("background-color", "#DBEAF9");
		});
		$(".as").live("mouseout", function() {
			$(this).css("background-color", "");
		});
		$(".bl").live("click", function() {
			$("#brandname").val($(this).html());
			var thisid = $(this).attr("id");
			var bid = thisid.substring(thisid.indexOf("_") + 1, thisid.length);
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
			var thisid = $(this).attr("id");
			var bid = thisid.substring(thisid.indexOf("_") + 1, thisid.length);
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
			var thisid = $(this).attr("id");
			var id = thisid.substring(thisid.indexOf("_") + 1, thisid.length);
			$(".md").removeClass("as_click");
			$(this).addClass("as_click");
			$("#modelcode").val(id);
			$("#modelshow").hide(200);
		});
		$("#gcode").live("change", function() {
			getncode(this.value);
		});
	});
	function getLocalTime(x) {
		var now = new Date(x);
		var year = now.getYear() + 1900;
		var month = now.getMonth() + 1;
		var date = now.getDate();
		var hour = now.getHours();
		var minute = now.getMinutes();
		var second = now.getSeconds();
		return year + "-" + month + "-" + date + " " + hour + ":" + minute
				+ ":" + second;
	}
	function btn() {
		datagrid.datagrid('load', {
			regdate : ff.find('[name="regdate"]').val(),
			pid : ff.find('[name="pid"]').val(),
			cars : ff.find('[name="cars"]').val(),
			brand : ff.find('[name="brand"]').val(),
			modelcode : ff.find('[name="modelcode"]').val(),
			ncode : ff.find('[name="ncode"]').val(),
			gcode : ff.find('[name="gcode"]').val()
		});
	}
	function reload() {
		ff[0].reset();
		btn();
	}
	function VehicleManagerUpd() {
		updateobj(gb("VehicleManagerUpd").name, gb("VehicleManagerUpd").link,
				1000, 600);
	}
	function VehicleManagerAdd() {
		addobj(gb("VehicleManagerAdd").name, gb("VehicleManagerAdd").link,
				1000, 600);
	}
	function VehicleManagerDel() {
		delobj("/busi/VehicleManagerDel.do");
	}
	function VehicleManagerUpdOut() {
		$('#cc').layout('collapse', 'east');
	}
	function createFrame(url) {
		var s = '<iframe scrolling="auto" frameborder="0"  src="' + url
				+ '" style="width:100%;height:100%;"></iframe>';
		return s;
	}

	function getdatagrid() {
		datagrid = $("#tt").datagrid({
			url : '/busi/VehicleManager.do',
			fitColumns : true,//设置为true将自动使列适应表格宽度以防止出现水平滚动 */
			pagination : true,// 分页控件
			pageSize : 20,//默认显示大小
			fit : true,// 自动大小
			rownumbers : true,// 行号
			singleSelect : true,//只能选中一行
			pageList : [ 10, 20, 50 ],
			sortName : 'id',//排序
			sortOrder : 'desc',// asc desc
			idField : 'id',
			columns : [ [ {
				field : 'brandname',
				title : '品牌',
				width : 300
			}, {
				field : 'carsname',
				title : '车系',
				width : 300
			}, {
				field : 'modelname',
				title : '型号',
				width : 300
			}, {
				field : 'regdate',
				title : '车辆注册日期',
				width : 300
			}, {
				field : 'subdate',
				title : '录入日期',
				width : 300,
				formatter : function(value, row, index) {
					return getLocalTime(value);
				}
			} ] ],
			toolbar : ".p",
			onRowContextMenu : function(e, rowIndex, rowData) { // 右击事件
				e.preventDefault(); // 阻止浏览器自带的右键菜单弹出
				$('#menu').menu('show', {
					left : e.pageX, // 弹出窗口的方位坐标
					top : e.pageY
				});
			}
		});
	}
</script>
</html>
