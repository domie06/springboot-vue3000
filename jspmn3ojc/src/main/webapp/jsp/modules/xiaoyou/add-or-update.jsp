<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
	<%@ include file="../../static/head.jsp"%>
	<link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css" rel="stylesheet">
	<script type="text/javascript" charset="utf-8">
	    window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
	</script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
  	<style>
		.error{
			color:red;
		}
	</style>
<body>
	<!-- Pre Loader -->
	<div class="loading">
		<div class="spinner">
			<div class="double-bounce1"></div>
			<div class="double-bounce2"></div>
		</div>
	</div>
	<!--/Pre Loader -->
	<div class="wrapper">
		<!-- Page Content -->
		<div id="contentText">
				<!-- Top Navigation -->
				<%@ include file="../../static/topNav.jsp"%>
				<!-- Menu -->
				<div class="container menu-nav">
					<nav class="navbar navbar-expand-lg lochana-bg text-white">
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
						 aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<span class="ti-menu text-white"></span>
						</button>
				
						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<!-- <div class="z-navbar-nav-title">$template2.back.menu.title.text</div> -->
							<ul id="navUl" class="navbar-nav mr-auto">
							
							</ul>
						</div>
					</nav>
				</div>
				<!-- /Menu -->
				<!-- Breadcrumb -->
				<!-- Page Title -->
				<div class="container mt-0">
					<div class="row breadcrumb-bar">
						<div class="col-md-6">
							<h3 class="block-title">编辑校友</h3>
						</div>
						<div class="col-md-6">
							<ol class="breadcrumb">
								<li class="breadcrumb-item">
									<a href="${pageContext.request.contextPath}/index.jsp">
										<span class="ti-home"></span>
									</a>
								</li>
								<li class="breadcrumb-item"><span>校友管理</span></li>
								<li class="breadcrumb-item active"><span>编辑校友</span></li>
							</ol>
						</div>
					</div>
				</div>
			<!-- /Page Title -->

			<!-- /Breadcrumb -->
			<!-- Main Content -->
			<div class="container">

				<div class="row">
					<!-- Widget Item -->
					<div class="col-md-12">
						<div class="widget-area-2 lochana-box-shadow">
							<h3 class="widget-title">校友信息</h3>
							<form id="addOrUpdateForm">
								<div class="form-row">
									<input id="updateId" name="id" type="hidden">
									<div class="form-group col-md-6">
										<label>账号</label>
										<input name="zhanghao" id="zhanghao" name="zhanghao" class="form-control" placeholder="账号">
									</div>
									<div class="form-group col-md-6">
										<label>密码</label>
										<input name="mima" id="mima" name="mima" class="form-control" placeholder="密码">
									</div>
									<div class="form-group col-md-6">
										<label>姓名</label>
										<input name="xingming" id="xingming" name="xingming" class="form-control" placeholder="姓名">
									</div>
									<div class="form-group col-md-6">
										<label>性别</label>
										<select id="xingbieSelect" name="xingbie" class="form-control">
												<option value=""></option>
												<option class="xingbieOption" value="男">
													男
												</option>
												<option class="xingbieOption" value="女">
													女
												</option>
										</select>	
									</div>	
									<div class="form-group col-md-6">
										<label>邮箱</label>
										<input name="youxiang" id="youxiang" name="youxiang" class="form-control" placeholder="邮箱">
									</div>
									<div class="form-group col-md-6">
										<label>手机号码</label>
										<input name="shoujihaoma" id="shoujihaoma" name="shoujihaoma" class="form-control" placeholder="手机号码">
									</div>
									<div class="form-group col-md-6">
										<label>班级名称</label>
										<select id="banjimingchengSelect" name="banjimingcheng" class="form-control">
										</select>	
									</div>	
									<div class="form-group col-md-6">
										<label>学院名称</label>
										<select id="xueyuanmingchengSelect" name="xueyuanmingcheng" class="form-control">
										</select>	
									</div>	
									<div class="form-group col-md-6">
										<label>学校名称</label>
										<select id="xuexiaomingchengSelect" name="xuexiaomingcheng" class="form-control">
										</select>	
									</div>	
									<div class="form-group col-md-6">
										<label>相片</label>
										<div><img id="xiangpianImg" src="" width="100" height="100">
										<div class="upload">选择文件<input name="file" type="file" id="xiangpianupload" class="form-control-file"></div>
										<input name="xiangpian" id="xiangpian-input" type="hidden"></div>
									</div>
										
									<div class="form-group-1 col-md-6 mb-3" style="display: flex;flex-wrap: wrap;">
										<button  id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
										<button id="exitBtn" type="button" class="btn btn-primary btn-lg">取消</button>
									</div>
								</div>
							</form>
						</div>
					</div>
					<!-- /Widget Item -->
				</div>
			</div>
			<!-- /Main Content -->
		</div>
		<!-- /Page Content -->
	</div>
	<!-- Back to Top -->
	<a id="back-to-top" href="#" class="back-to-top">
		<span class="ti-angle-up"></span>
	</a>
	<!-- /Back to Top -->
	<%@ include file="../../static/foot.jsp"%>
	<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
	<script>
		<%@ include file="../../utils/menu.jsp"%>
		<%@ include file="../../static/setMenu.js"%>
		<%@ include file="../../static/utils.js"%>
		<%@ include file="../../utils/baseUrl.jsp"%>   	

		var tableName = "xiaoyou";
		var pageType = "add-or-update";
		var updateId = "";
		var crossTableId = -1;
		var crossTableName = '';
		var ruleForm = {};
		var crossRuleForm = {};

		var banjimingchengOptions = [];
		var xueyuanmingchengOptions = [];
		var xuexiaomingchengOptions = [];

		function banjimingchengSelect(){
			http("option/banjixiaoyou/banjimingcheng","GET",{},(res)=>{
				if(res.code == 0){
					banjimingchengOptions = res.data;
					var nullOption = document.createElement('option');
					var banjimingchengSelect = document.getElementById('banjimingchengSelect');
					banjimingchengSelect.appendChild(nullOption);
					for(var i=0;i<banjimingchengOptions.length;i++){
						var banjimingchengOption = document.createElement('option');
						banjimingchengOption.setAttribute('name','banjimingchengOption');
						banjimingchengOption.setAttribute('value',banjimingchengOptions[i]);
						banjimingchengOption.innerHTML = banjimingchengOptions[i];									
						if(ruleForm.banjimingcheng == banjimingchengOptions[i]){
							banjimingchengOption.setAttribute('selected','selected');
						}
						banjimingchengSelect.appendChild(banjimingchengOption);
					}
				}
			});
		}	
		function xueyuanmingchengSelect(){
			http("option/xueyuanzhuguan/xueyuanmingcheng","GET",{},(res)=>{
				if(res.code == 0){
					xueyuanmingchengOptions = res.data;
					var nullOption = document.createElement('option');
					var xueyuanmingchengSelect = document.getElementById('xueyuanmingchengSelect');
					xueyuanmingchengSelect.appendChild(nullOption);
					for(var i=0;i<xueyuanmingchengOptions.length;i++){
						var xueyuanmingchengOption = document.createElement('option');
						xueyuanmingchengOption.setAttribute('name','xueyuanmingchengOption');
						xueyuanmingchengOption.setAttribute('value',xueyuanmingchengOptions[i]);
						xueyuanmingchengOption.innerHTML = xueyuanmingchengOptions[i];									
						if(ruleForm.xueyuanmingcheng == xueyuanmingchengOptions[i]){
							xueyuanmingchengOption.setAttribute('selected','selected');
						}
						xueyuanmingchengSelect.appendChild(xueyuanmingchengOption);
					}
				}
			});
		}	
		function xuexiaomingchengSelect(){
			http("option/xuexiaozhuguan/xuexiaomingcheng","GET",{},(res)=>{
				if(res.code == 0){
					xuexiaomingchengOptions = res.data;
					var nullOption = document.createElement('option');
					var xuexiaomingchengSelect = document.getElementById('xuexiaomingchengSelect');
					xuexiaomingchengSelect.appendChild(nullOption);
					for(var i=0;i<xuexiaomingchengOptions.length;i++){
						var xuexiaomingchengOption = document.createElement('option');
						xuexiaomingchengOption.setAttribute('name','xuexiaomingchengOption');
						xuexiaomingchengOption.setAttribute('value',xuexiaomingchengOptions[i]);
						xuexiaomingchengOption.innerHTML = xuexiaomingchengOptions[i];									
						if(ruleForm.xuexiaomingcheng == xuexiaomingchengOptions[i]){
							xuexiaomingchengOption.setAttribute('selected','selected');
						}
						xuexiaomingchengSelect.appendChild(xuexiaomingchengOption);
					}
				}
			});
		}	

		var ruleForm = {};
		var vm = new Vue({
		  el: '#addOrUpdateForm',
		  data:{
			  ruleForm : {},
			},
		  beforeCreate: function(){
			  var id = window.sessionStorage.getItem("id");
				if(id != null && id != "" && id != "null"){
					$.ajax({ 
		                type: "GET",
		                url: baseUrl + "xiaoyou/info/" + id,
		                beforeSend: function(xhr) {xhr.setRequestHeader("token", window.sessionStorage.getItem('token'));},
		                success: function(res){               	
		                	if(res.code == 0){
		                		vm.ruleForm = res.data;
				    		}else if(res.code == 401) {
				    			<%@ include file="../../static/toLogin.jsp"%>    
				    		}else{ alert(res.msg)}
		                },
		            });
				}
			},
			methods: { }
	  	});		

		// 文件上传
		function upload(){
			$('#xiangpianupload').fileupload({
				url: baseUrl + 'file/upload',
				headers:{ token: window.sessionStorage.getItem("token")},
				dataType: 'json',
				done: function (e, data) {				
					document.getElementById('xiangpian-input').setAttribute('value',"upload/"+data.result.file);
					if(document.getElementById('xiangpianFileName') != null){
						document.getElementById('xiangpianFileName').innerHTML = "上传成功!";
					}				
					$("#xiangpianImg").attr("src",baseUrl+"upload/"+data.result.file);								
				}
			});
		}  
		//取消 
		function cancel() {
            window.location.href = "list.jsp";
		}
		function getQueryString(name) { 
			var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i"); 
			var r = window.location.search.substr(1).match(reg); 
			if (r != null) return unescape(r[2]); 
			return null; 
		}

		// 表单提交
		function submit() {

			var crossFlag = getQueryString("cross");
			if(validform() ==true && compare() == true){
				if(crossFlag) {
				}
				let data = {};
				getContent();
				let value = $('#addOrUpdateForm').serializeArray();
				$.each(value, function (index, item) { 
							data[item.name] = item.value;
						});
				let json = JSON.stringify(data);
				var urlParam;
				var successMes = '';
				if(updateId!=null && updateId!="null" && updateId!=''){
					urlParam = 'update';
					successMes = '修改成功';
				}else{		
					urlParam = 'save';
					successMes = '添加成功';
				}
				//更新跨表属性
			       var crossuserid;
			       var crossrefid;
			       var crossoptnum;
				if(crossFlag) {
					var statusColumnName = window.sessionStorage.getItem('statusColumnName'); 
					var statusColumnValue = window.sessionStorage.getItem('statusColumnValue'); 
					var obj = JSON.parse(window.sessionStorage.getItem('crossObj'));
					if(statusColumnName!='') {
						if(!statusColumnName.startsWith("[")) {
							for (var o in obj){
								if(o==statusColumnName){
									obj[o] = statusColumnValue;
								}
							}
							var table = window.sessionStorage.getItem('crossTableName');
							httpJson(crossTableName + "/update","POST",obj,(res)=>{
								if(res.code == 0){
									console.log('更新属性成功');
								}
							});   
						} else  {
							crossuserid = Number(window.sessionStorage.getItem('userid'));
							crossrefid = obj["id"];
							crossoptnum = window.sessionStorage.getItem('statusColumnName');
							crossoptnum=crossoptnum.replace(/\[/,"").replace(/\]/,"");
						}
					}
				}
				if(crossrefid && crossuserid) {
					data.crossuserid=crossuserid;
					data.crossrefid=crossrefid;
					http("xiaoyou/page","GET",{
						page:1,
						limit:10,
						crossuserid:data.crossuserid,
						crossrefid:data.crossrefid,			
					},(res)=>{
						if(res.data.total >= crossoptnum){
							alert(window.sessionStorage.getItem('tips'));
							return false;
						} else {
							httpJson("xiaoyou/"+urlParam,"POST",data,(res)=>{
								if(res.code == 0){
									window.sessionStorage.removeItem('id');
									let flag = true;
									if(crossFlag) {
									}

									if(flag){
										alert(successMes);
									}
									if(window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true"){
										window.sessionStorage.removeItem('onlyme');
										window.location.href="${pageContext.request.contextPath}/index.jsp";
									}else{
                                        window.location.href = "list.jsp";
									}
									
								}
							});
						}
					});
				} else {
					httpJson("xiaoyou/"+urlParam,"POST",data,(res)=>{
						if(res.code == 0){
							window.sessionStorage.removeItem('id');
							let flag = true;
							if(crossFlag) {
							}

							if(flag){
								alert(successMes);
							}
							if(window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true"){
								window.sessionStorage.removeItem('onlyme');
								window.location.href="${pageContext.request.contextPath}/index.jsp";
							}else{
                                        window.location.href = "list.jsp";
							}
							
						}
					});
				}
			}else{
				alert("表单未填完整或有错误");
			}
		}

		// 填充富文本框
		function setContent(){
		}  

		// 获取富文本框内容
		function getContent(){
		}

		// 表单校验
		function validform() {
			return $("#addOrUpdateForm").validate({ 
				rules: {
				    mima: {
					required: true,
					},
				    xingming: {
					required: true,
					},
				    xingbie: {
					},
				    youxiang: {
					email: true,
					},
				    shoujihaoma: {
					isPhone: true,
					},
				    banjimingcheng: {
					},
				    xueyuanmingcheng: {
					},
				    xuexiaomingcheng: {
					},
				    xiangpian: {
					},
				},
				messages: {
					mima: {
						required: "密码不能为空",
					},
					xingming: {
						required: "姓名不能为空",
					},
					xingbie: {
					},
					youxiang: {
						email: "请输入正确格式的邮箱",
					},
					shoujihaoma: {
					},
					banjimingcheng: {
					},
					xueyuanmingcheng: {
					},
					xuexiaomingcheng: {
					},
					xiangpian: {
					},
				}
			}).form();
		}
		// 添加表单校验方法
		function addValidation(){
			jQuery.validator.addMethod("isPhone", function(value, element) {
					var length = value.length;
					var mobile = /^(((13[0-9]{1})|(15[0-9]{1})|(18[0-9]{1})|(17[0-9]{1}))+\d{8})$/;
					return this.optional(element) || (length == 11 && mobile.test(value));
			}, "请填写正确的手机号码");
                        jQuery.validator.addMethod("isIdCardNo", function(value, element) {
                                return this.optional(element) || value.length == 18;
                        }, "请正确输入您的身份证号码");
                        jQuery.validator.addMethod("isTel", function(value, element) {
                          var length = value.length;
                          var phone = /(^(\d{3,4}-)?\d{6,8}$)|(^(\d{3,4}-)?\d{6,8}(-\d{1,5})?$)|(\d{11})/;
                          return this.optional(element) || (phone.test(value));
                         }, "请填写正确的固定电话");//可以自定义默认提示信息
		}
		// 获取当前详情
		function getDetails() {
			var id = window.sessionStorage.getItem("id");
			if(id != null && id != "" && id != "null"){
				updateId = id;
				window.sessionStorage.removeItem('id');
				http("xiaoyou/info/" + id,"GET",{},(res)=>{
					if(res.code == 0){
						ruleForm = res.data
						// 是/否下拉框回显
						setSelectOption();
						// 设置图片src
						showImg();
						// 数据填充
						dataBind();
						// 富文本框回显	
						setContent();
												banjimingchengSelect();
						xueyuanmingchengSelect();
						xuexiaomingchengSelect();
						//注册表单验证
						$(validform());	
					}
				});
			}else{
				banjimingchengSelect();	
				xueyuanmingchengSelect();	
				xuexiaomingchengSelect();	



		 		fill()
				//注册表单验证
		    		$(validform());
			}
		}	
		// 下拉框选项回显
		function setSelectOption(){
		}			
		// 关联下拉框改变
		function lvSelectChange(level){
			let data = {};
			let value = $('#addOrUpdateForm').serializeArray();
			$.each(value, function (index, item) { 
			            data[item.name] = item.value;
			        });
			
		}		
		// 清除可能会重复渲染的selection
		function clear(className){
			var elements = document.getElementsByClassName(className);
        	for(var i = elements.length - 1; i >= 0; i--) { 
        	  elements[i].parentNode.removeChild(elements[i]); 
        	}
		}		
		function dateTimePick(){
			$.fn.datetimepicker.dates['zh-CN'] = { 
		            days: ["星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日"],
		            daysShort: ["周日", "周一", "周二", "周三", "周四", "周五", "周六", "周日"],
		            daysMin:  ["日", "一", "二", "三", "四", "五", "六", "日"],
		            months: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            monthsShort: ["一月", "二月", "三月", "四月", "五月", "六月", "七月", "八月", "九月", "十月", "十一月", "十二月"],
		            today: "今天",
		            suffix: [],
		            meridiem: ["上午", "下午"]
		    };

		}		
		
		function calculation(){
			//积
			var x = 0;
			//和
			var y = 0;
			var flag = 0;



		}		
		function calculationSE(colName){
			//单列求和接口
			http("xiaoyou"+colName,"GET",{
				tableName: "xiaoyou",
				columnName: colName
			},(res)=>{
				if(res.code == 0){
					$("#"+colName).attr("value",res.data);
				}
			});
		}	
		function calculationPre(){
			//进入该页面就填充"单列求和"的列
		}			
		
		
			//新增时填充字段
			function fill(){
				var username = window.sessionStorage.getItem('username');
				var accountTableName = window.sessionStorage.getItem('accountTableName');
				http(accountTableName+'/session','GET',{},(res)=>{
					if(res.code == 0){
						var myId = res.data.id;
						$(validform());
					}
				});
							
			}	
			
		function dataBind(){
			$("#updateId").val(ruleForm.id);	
			$("#zhanghao").val(ruleForm.zhanghao);	
			$("#mima").val(ruleForm.mima);	
			$("#xingming").val(ruleForm.xingming);	
			var xingbieOptions = document.getElementsByClassName("xingbieOption");
			for(var xingbieCount = 0; xingbieCount < xingbieOptions.length;xingbieCount++){
				if(xingbieOptions[xingbieCount].getAttribute('value') == ruleForm.xingbie){
					xingbieOptions[xingbieCount].setAttribute('selected','selected');
				}
			}
			$("#youxiang").val(ruleForm.youxiang);	
			$("#shoujihaoma").val(ruleForm.shoujihaoma);	
			var banjimingchengOptions = document.getElementsByClassName("banjimingchengOption");
			for(var banjimingchengCount = 0; banjimingchengCount < banjimingchengOptions.length;banjimingchengCount++){
				if(banjimingchengOptions[banjimingchengCount].getAttribute('value') == ruleForm.banjimingcheng){
					banjimingchengOptions[banjimingchengCount].setAttribute('selected','selected');
				}
			}
			var xueyuanmingchengOptions = document.getElementsByClassName("xueyuanmingchengOption");
			for(var xueyuanmingchengCount = 0; xueyuanmingchengCount < xueyuanmingchengOptions.length;xueyuanmingchengCount++){
				if(xueyuanmingchengOptions[xueyuanmingchengCount].getAttribute('value') == ruleForm.xueyuanmingcheng){
					xueyuanmingchengOptions[xueyuanmingchengCount].setAttribute('selected','selected');
				}
			}
			var xuexiaomingchengOptions = document.getElementsByClassName("xuexiaomingchengOption");
			for(var xuexiaomingchengCount = 0; xuexiaomingchengCount < xuexiaomingchengOptions.length;xuexiaomingchengCount++){
				if(xuexiaomingchengOptions[xuexiaomingchengCount].getAttribute('value') == ruleForm.xuexiaomingcheng){
					xuexiaomingchengOptions[xuexiaomingchengCount].setAttribute('selected','selected');
				}
			}
			$("#xiangpian-input").val(ruleForm.xiangpian);
		}		
		//图片显示
		function showImg(){
			var xiangpianFileName = "\"" + ruleForm.xiangpian + "\"";
			$("#xiangpianImg").attr("src",baseUrl+ruleForm.xiangpian);
		}		
		//跨表

        //跨表
        function crossTable(){
		crossTableName = window.sessionStorage.getItem('crossTableName');
		crossTableId = window.sessionStorage.getItem('crossTableId');
		if(crossTableName != null && crossTableName != '' && crossTableId != null && crossTableId != '' && crossTableId != -1){
			http(crossTableName + "/info/" + crossTableId,"GET",{},(res)=>{
				if(res.code == 0){
					crossRuleForm = res.data;
					$('#updateId').val(crossTableId);
					if(res.data != null && res.data != '' && res.data.zhanghao != null && res.data.zhanghao != ''){

						$("#zhanghao").val(res.data.zhanghao);
						$("#zhanghao").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.mima != null && res.data.mima != ''){

						$("#mima").val(res.data.mima);
						$("#mima").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.xingming != null && res.data.xingming != ''){

						$("#xingming").val(res.data.xingming);
						$("#xingming").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.xingbie != null && res.data.xingbie != ''){

						var xingbieOptions = document.getElementsByClassName("xingbieOption");
						for(var xingbieCount = 0; xingbieCount < xingbieOptions.length;xingbieCount++){
							if(xingbieOptions[xingbieCount].getAttribute('value') == res.data.xingbie){
								xingbieOptions[xingbieCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.youxiang != null && res.data.youxiang != ''){

						$("#youxiang").val(res.data.youxiang);
						$("#youxiang").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.shoujihaoma != null && res.data.shoujihaoma != ''){

						$("#shoujihaoma").val(res.data.shoujihaoma);
						$("#shoujihaoma").attr('readonly','readonly');
					}
					if(res.data != null && res.data != '' && res.data.banjimingcheng != null && res.data.banjimingcheng != ''){

						var banjimingchengOptions = document.getElementsByClassName("banjimingchengOption");
						for(var banjimingchengCount = 0; banjimingchengCount < banjimingchengOptions.length;banjimingchengCount++){
							if(banjimingchengOptions[banjimingchengCount].getAttribute('value') == res.data.banjimingcheng){
								banjimingchengOptions[banjimingchengCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.xueyuanmingcheng != null && res.data.xueyuanmingcheng != ''){

						var xueyuanmingchengOptions = document.getElementsByClassName("xueyuanmingchengOption");
						for(var xueyuanmingchengCount = 0; xueyuanmingchengCount < xueyuanmingchengOptions.length;xueyuanmingchengCount++){
							if(xueyuanmingchengOptions[xueyuanmingchengCount].getAttribute('value') == res.data.xueyuanmingcheng){
								xueyuanmingchengOptions[xueyuanmingchengCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.xuexiaomingcheng != null && res.data.xuexiaomingcheng != ''){

						var xuexiaomingchengOptions = document.getElementsByClassName("xuexiaomingchengOption");
						for(var xuexiaomingchengCount = 0; xuexiaomingchengCount < xuexiaomingchengOptions.length;xuexiaomingchengCount++){
							if(xuexiaomingchengOptions[xuexiaomingchengCount].getAttribute('value') == res.data.xuexiaomingcheng){
								xuexiaomingchengOptions[xuexiaomingchengCount].setAttribute('selected','selected');
							}
						}
					}
					if(res.data != null && res.data != '' && res.data.xiangpian != null && res.data.xiangpian != ''){

						$("#xiangpianImg").attr("src",baseUrl+res.data.xiangpian);
						$("#xiangpian-input").val(res.data.xiangpian);
					}
				}
			});  
            }
		window.sessionStorage.removeItem('crossTableName');
		window.sessionStorage.removeItem('crossTableId');
        }
		
		//跨表更新字段
		function crossTableUpdate(){
			let flag = crossTableUpdateValidation();
			if(flag){
				httpJson(crossTableName + "/update","POST",{
					id: crossTableId,
				},(res)=>{
					if(res.code == 0){
						console.log('跨表更新成功');
						return true;
					}
				});   
			}
			return false;
		}

		//跨表更新前验证
		function crossTableUpdateValidation(){
			//防止减法导致库存负值
			return true;
		}
		$(document).ready(function() { 
			//设置右上角用户名
			$('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
			//设置项目名
			$('.sidebar-header h3 a').html(projectName)
			//设置导航栏菜单
			setMenu();
			//初始化时间插件
			dateTimePick();
			//添加表单校验信息文本
			addValidation();
			getDetails();
			//初始化上传按钮
			upload();
			//单列求和
			calculationPre();
			//跨表
			crossTable();
			<%@ include file="../../static/myInfo.js"%>
			$('#submitBtn').on('click', function(e) {
			    e.preventDefault();
			    //console.log("点击了...提交按钮");
			    submit();
			});
			$('#exitBtn').on('click', function(e) {
			    cancel();
			});
			readonly();
		});		

		function readonly(){
            if(window.sessionStorage.getItem('role')!="管理员") {
				$('#money').attr('readonly','readonly');
            }
		}

		//比较大小
		function compare(){
			var largerVal = null;
			var smallerVal = null;
			if(largerVal !=null && smallerVal != null){
				if(parseInt(largerVal)<=parseInt(smallerVal)){
					alert(smallerName+'不能大于等于'+largerName);
					return false;
				}
			}
			return true;
		}


		// 用户登出
        <%@ include file="../../static/logout.jsp"%>		
	</script>
</body>

</html>
