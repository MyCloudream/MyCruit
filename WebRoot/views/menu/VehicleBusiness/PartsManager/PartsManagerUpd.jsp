<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ include file="../../formBase.jsp"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link href="<%=path%>/plug-in/uploadify/css/uploadify.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="<%=path%>/plug-in/uploadify/jquery.uploadify-3.1.js"></script>
<style type="text/css">
.vtb {
	width: 100%;
}

.vtb tr td {
	width: 200px;
}

.vtb tr th {
	width: 100px;
}

.imgdiv {
	width: 980px;
	height: 250px;
	margin-top: 5px;
}

.imgdiv {
	width: 980px;
	height: 250px;
	margin-top: 20px;
}

.imgdiv ul li {
	float: left;
	margin: 0px 0px 0px 28px;
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
#carsshow ul li a{
white-space:nowrap;
text-overflow: ellipsis;
	display: block;
	width: 100%;
	height: 100%;
}
#modelshow{
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
white-space:nowrap;
text-overflow: ellipsis;
	height: 24px;
	line-height: 24px;
    padding: 0px 5px 0px 5px;
}
#modelshow ul li a{
    display: block;
	width: 100%;
	height: 100%;
}
</style>
</head>
<body>
	<form class="formobj" method="post" action="<%=path%>/busi/PartsManagerUpd.do">
		<table class="vtb">
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
				<th>总成:</th>
				<td><select id="gcode" name="gcode" datatype="*"><option value="">请选择</option></select><span class="Validform_checktip"></span></td>
			</tr>
			<tr>
				<th>车系:</th>
				<td><input id="carsname" name="carsname" type="text" value="请选择品牌" readonly="readonly"><input id="cars" name="cars" type="hidden" datatype="*"><span class="Validform_checktip">请选择车系</span>
					<div id="carsshow"></div></td>
					<th>总成类型:</th>
				<td><select id="ncode" name="ncode" datatype="*"><option value="">请选择</option></select><span class="Validform_checktip"></span></td>
			</tr>
			<tr>
				<th>型号:</th>
				<td><input  type="text" name="modelname" id="modelname" readonly="readonly" value="请选择车系" ><input id="modelcode" name="modelcode" type="hidden" datatype="*"><span class="Validform_checktip">请选择型号</span>
				<div id="modelshow"></div>
				</td>
				<th>注册时间:</th>
				<td><input type="text" name="regdate" datatype="*" onClick="WdatePicker()"><span class="Validform_checktip">请填写机动车购买日期</span></td>
			</tr>
			<tr>
				<th>车型:</th>
				<td><select name="type" datatype="*"><option value="0">无</option></select><span class="Validform_checktip">请选择车型</span></td>
				<th rowspan="2">备注:</th>
				<td rowspan="2"><textarea name="remark" rows="4" cols="22" ignore="ignore" datatype="s3-198"></textarea><span class="Validform_checktip">请选择区域</span></td>
			</tr>
				<tr>
				<th>货架:</th>
				<td><select id="pid" name="pid" datatype="*"><option value="0">默认区域</option></select><span class="Validform_checktip">请选择区域</span></td>
			
			</tr>
			<tr>
				<td colspan="4">
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
							<li>
								<p class="pimg">
									<img src="<%=path%>/images/defaultimg/2008062503053525[1].jpg" id="img4" width="210" height="150">
								</p>
								<p class="pfoot">
									<input type="file" name="uploads" id="file_upload_4" style="margin: 0px;padding: 0px;" /><input type="hidden" id="pic4" name="pic4">
								</p>
							</li>
						</ul>
					</div>
				</td>
			</tr>
		</table>
		<span class="thidden"><input type="hidden" name="pcode"><input type="hidden" name="ccode"><input type="hidden" name="id"><input type="hidden" name="subdate"><input type="hidden" name="uid1"><input type="hidden" name="uid2"><input type="hidden" name="status"><input type="button" id="btn_sub"></span>
	</form>
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
	
	function getLocalTime(x) {  
		  var now=new Date(x); 
	      var year=now.getYear()+1900;     
	      var month=now.getMonth()+1;     
	      var date=now.getDate();     
	      var hour=now.getHours();     
	      var minute=now.getMinutes();     
	      var second=now.getSeconds();   
        return  year+"-"+month+"-"+date+" "+hour+":"+minute+":"+second;
	}   
	$(function() {
		var subdate=getLocalTime(formdata[0].subdate);
		valform("id", formdata[0].id, "");
		valform("uid1", formdata[0].uid1, "");
		valform("uid2", formdata[0].uid2, "");
		valform("status", formdata[0].status, "");
		valform("pcode", formdata[0].pcode, "");
		valform("ccode", formdata[0].ccode, "");
 		valform("subdate", subdate, "");
		valform("regdate", formdata[0].regdate, "");
		valform("remark", formdata[0].remark, "textarea");
	 if(formdata[0].pic1!=null&&formdata[0].pic1.length>1){
		 $("#img1").attr("src", '<%=path%>/common/downloadimg.do?filename=' + formdata[0].pic1 + '&path=img\\parts\\'+formdata[0].pic1.substring(0,formdata[0].pic1.indexOf("_"))+'\\' );
		 $("#pic1").val(formdata[0].pic1);
	 } 
	 if(formdata[0].pic2!=null&&formdata[0].pic2.length>1){
		 $("#img2").attr("src", '<%=path%>/common/downloadimg.do?filename=' + formdata[0].pic2 + '&path=img\\parts\\'+formdata[0].pic2.substring(0,formdata[0].pic2.indexOf("_"))+'\\' );
		 $("#pic2").val(formdata[0].pic2);
	 } 
	 if(formdata[0].pic3!=null&&formdata[0].pic3.length>1){
		 $("#img3").attr("src", '<%=path%>/common/downloadimg.do?filename=' + formdata[0].pic3 + '&path=img\\parts\\'+formdata[0].pic3.substring(0,formdata[0].pic3.indexOf("_"))+'\\' );
		 $("#pic3").val(formdata[0].pic3);
	 } 
	 if(formdata[0].pic4!=null&&formdata[0].pic4.length>1){
		 $("#img4").attr("src", '<%=path%>/common/downloadimg.do?filename=' + formdata[0].pic4 + '&path=img\\parts\\'+formdata[0].pic4.substring(0,formdata[0].pic4.indexOf("_"))+'\\' );
		 $("#pic4").val(formdata[0].pic4);
	 } 
	 if(formdata[0].pic5!=null&&formdata[0].pic5.length>1){
		 $("#img5").attr("src", '<%=path%>/common/downloadimg.do?filename=' + formdata[0].pic5 + '&path=img\\parts\\'+formdata[0].pic5.substring(0,formdata[0].pic5.indexOf("_"))+'\\' );
		 $("#pic5").val(formdata[0].pic5);
	 } 
	 if(formdata[0].pic6!=null&&formdata[0].pic6.length>1){
		 $("#img6").attr("src", '<%=path%>/common/downloadimg.do?filename=' + formdata[0].pic6 + '&path=img\\parts\\'+formdata[0].pic6.substring(0,formdata[0].pic6.indexOf("_"))+'\\' );
		 $("#pic6").val(formdata[0].pic6);
	 } 
	    $("#gcode").live("change",function(){
	    	getncode(this.value);
		});
	    $("#ncode").live("click",function(){
	    	if(this.value==""){
	    		alert("请选择总类");
	    	}
		});
		getgcode();
		getncode(formdata[0].gcode);
		getEnterpriseArea();
		valform("gcode", formdata[0].gcode, "select");
		valform("ncode", formdata[0].ncode, "select");
		valform("pid", formdata[0].pid, "select");
		
		getCarbrand();
		$("#bl_"+formdata[0].brand).addClass("as_click");
		$("#brandname").val($("#bl_"+formdata[0].brand).html());
		$("#brand").val(formdata[0].brand);
		getCarseries(formdata[0].brand);
		$("#se_"+formdata[0].cars).addClass("as_click");
		$("#carsname").val($("#se_"+formdata[0].cars).html());
		$("#cars").val(formdata[0].cars);
	    getCarspec(formdata[0].cars);
		$("#md_"+formdata[0].modelcode).addClass("as_click");
		$("#modelname").val($("#md_"+formdata[0].modelcode).html());
		$("#modelcode").val(formdata[0].modelcode);
		
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
		        $("#modelcode").val(id);
		     	$(".md").removeClass("as_click");
				$(this).addClass("as_click");
		    	$("#modelshow").hide(200); 
			});
	});
	function getEnterpriseArea(){
		var str = "";
		$.ajax({
			type : "POST",
			cache : false,
			async : false,
			url : "<%=path%>/busi/common/findEnterpriseArea.do",
			data:{type:2},
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
	function getgcode(){
		var str = "";
		$.ajax({
			type : "POST",
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
		if(x!=null&&x.toString().length>0){
				$.ajax({
					type : "POST",
					async : false,
					url : "<%=path%>/busi/common/findPartstypencode.do",
					data:{code:x},
					dataType : "json",
					success : function(json) {
						for (var i = 0; i < json.length; i++) {
							str += "<option value=\""+json[i].ncode+"\">"+json[i].name+"</option>";
						}
					}
				});
			}else{
				str="<option value=''>请选择</option>";
			} 
		$("#ncode").append(str);
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
		});
	</script>
</body>
</html>