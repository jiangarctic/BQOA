<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>八谦律师事务所</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Blue Moon - Responsive Admin Dashboard" />
<meta name="keywords"
	content="Notifications, Admin, Dashboard, Bootstrap3, Sass, transform, CSS3, HTML5, Web design, UI Design, Responsive Dashboard, Responsive Admin, Admin Theme, Best Admin UI, Bootstrap Theme, Wrapbootstrap, Bootstrap, bootstrap.gallery" />
<meta name="author" content="Bootstrap Gallery" />
<link rel="shortcut icon" href="img/favicon.ico">

<link href="static/bootStrapFiles/css/bootstrap.min.css"
	rel="stylesheet">
<link href="static/bootStrapFiles/css/wysi/bootstrap-wysihtml5.css"
	rel="stylesheet">

<link href="static/bootStrapFiles/css/new.css" rel="stylesheet">
<link
	href="static/commonJS/datePicker/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet" media="screen">
<!-- Important. For Theming change primary-color variable in main.css  -->

<!-- Color Picker -->
<link rel="stylesheet"
	href="static/bootStrapFiles/css/color-picker/jquery.minicolors.css">

<link href="static/bootStrapFiles/fonts/font-awesome.min.css"
	rel="stylesheet">

<!-- HTML5 shiv and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<c:set var="currentMain_Menu" value="办公" />
	<c:set var="currentSub_Menu" value="" />
	<!-- Header Start -->
	<%@ include file="/WEB-INF/jsp/system/admin/homeHeader.jsp"%>

	<!-- Header End -->

	<!-- Main Container start -->
	<div class="dashboard-container">
	
		<div class="container">
			<!-- Top Nav Start -->
			<%@ include file="/WEB-INF/jsp/system/admin/Menus.jsp"%>
			<!-- Top Nav End -->

			<!-- Sub Nav End -->

			<!-- Sub Nav End -->

			<!-- Dashboard Wrapper Start -->
			<div class="dashboard-wrapper">

				<!-- Left Sidebar Start -->
				<div class="left-sidebar">

					<!-- Row Start -->

					<!-- Row End -->

					<!-- Row Start -->

					<!-- Row End -->

					<!-- Row Start -->
            <div class="row">
              <div class="col-lg-12 col-md-12">
                <div class="widget">
                  <div class="widget-header">
                    <div class="title">
                     法律事务处理-新建
                    </div>
                    <span class="tools">
                      <i class="fa fa-cogs"></i>
                    </span>
                  </div>
                  <div class="widget-body">
                    <form class="form-horizontal row-border" action="generateFlswclReport.do" id="flswclForm" onsubmit="return checkSubmit();">
                      <div class="form-group">
                      <c:if test="${pd.clientName=='other' }">
                        <label class="col-md-2 control-label">公司名称</label>
                        <div class="col-xs-4">
                        
                          <input class="form-control" type="text" name="clientName"  placeholder="请手工填写客户名称" id="clientName">
                        </div>
						<label class="col-md-2 control-label">编号</label>
                        <div class="col-xs-4">
                          <input class="form-control" type="text" name="reportNum" id="reportNum"  placeholder="请手工填写合同编号">
                        </div>
                        </c:if>
                         <c:if test="${pd.clientName!='other' }">
                        <label class="col-md-2 control-label">公司名称</label>
                        <div class="col-xs-4">
                        
                          <input class="form-control" type="text" name="clientName" value="${pd.clientName }" id="clientName">
                        </div>
						<label class="col-md-2 control-label">编号</label>
                        <div class="col-xs-4">
                          <input class="form-control" type="text" name="reportNum" id="reportNum"  value="${pd.shortName }">
                        </div>
                        </c:if>
                      </div>


	                  <div class="form-group">
                        <label class="col-md-2 control-label">咨询日期</label>
											<div class="col-xs-10">
												<div class="input-group date form_datetime col-md-15"
													data-date-format="yyyy年mm月dd日  p HH:ii"
													data-link-field="dtp_input1">
													<input class="form-control" size="16" type="text" name="inquireTime"
														value="" required="required"> <span
														class="input-group-addon"><span
														class="glyphicon glyphicon-remove"></span></span> <span
														class="input-group-addon"><span
														class="glyphicon glyphicon-th"></span></span>
												</div>
												<input type="hidden" id="dtp_input1" value="" /><br />
											</div>
                      </div>

					    <div class="form-group">
                        <label class="col-md-2 control-label">咨询方式</label>
                        <div class="col-xs-4">
                          <input class="form-control" type="text" name="inquireType" id="inquireType" value="${pd.inquireType }">
                        </div>
						<label class="col-md-2 control-label">咨询人及所属部门、职务</label>
						<c:if test="${pd.clientName=='other' }">
							<div class="col-xs-4">
                          <input class="form-control" type="text"  placeholder="请手动填入：姓名_单位_职务" name="inquireer" required="required">
                        </div>
						</c:if>
						<c:if test="${pd.clientName!='other' }">
							<div class="col-xs-4">
                          <input class="form-control" type="text"  value="${pd.clientContactor }&nbsp;&nbsp;${pd.contactorDesc}" name="inquireer" required="required">
                        </div>
						</c:if>
                        
                      </div>
                      

					  <div class="form-group">	
					  <c:if test="${pd.clientName!='other' }">				  
                        <label class="col-md-2 control-label">联系方式</label>
                        <div class="col-xs-4">
                          <input class="form-control" type="text" value="${pd.clientPhone }" name="inquireerPhone" required="required">
                        </div>
						<label class="col-md-2 control-label">邮箱</label>
                        <div class="col-xs-4">
                          <input class="form-control" type="email" value="${pd.clientEmail }" name="inquireerEmail" >
                        </div>
                        </c:if>
                        <c:if test="${pd.clientName=='other' }">				  
                        <label class="col-md-2 control-label">联系方式</label>
                        <div class="col-xs-4">
                          <input class="form-control" type="text" placeholder="请手工填入联系方式" name="inquireerPhone" required="required">
                        </div>
						<label class="col-md-2 control-label">邮箱</label>
                        <div class="col-xs-4">
                          <input class="form-control" type="email" placeholder="请手工填入电子邮箱" name="inquireerEmail" >
                        </div>
                        </c:if>
                      </div>


                      <div class="form-group">
                        <label class="col-md-2 control-label">法律事务内容概述</label>
                        <div class="col-md-10">
                          <textarea placeholder="" name="reportBrief" style="width:100%;border:2px solid #d5d3e0" rows=3 required="required"></textarea>
                        </div>
                      </div>

					  
                      <div class="form-group">
                        <label class="col-md-2 control-label">公司提供的文件材料：</label>
                        <div class="col-md-10">
                          <textarea placeholder="" name="givenFiles" style="width:100%;border:2px solid #d5d3e0" rows=4 ></textarea>
                        </div>
                      </div>
		
		                 <div class="form-group">
                        <label class="col-md-2 control-label">处理意见（或结果）：</label>
                        <div class="col-md-10" >
                          <textarea placeholder="" name="suggestions" style="width:100%;border:2px solid #d5d3e0" rows=4 required="required"></textarea>
                        </div>	
                      </div>

					  	<div class="form-group">					  
                        <label class="col-md-2 control-label">工作人员</label>
                        <div class="col-xs-4">
                          <input class="form-control" type="text" name="worker" value="${sessionUser.NAME}" readonly>
                        </div>
						<label class="col-md-2 control-label">工作时间</label>
                        <div class="col-xs-4">
                          <input class="form-control" type="text" name="workTime" placeholder="单位：小时" required="required">
                        </div>
						 <label class="col-md-2 control-label">联系电话</label>
                        <div class="col-xs-4">
                          <input class="form-control" type="text" name="workerPhone" value="${sessionUser.PHONE}">
                        </div>
						<label class="col-md-2 control-label">审核人员</label>
                        <div class="col-xs-4">
                          <select id="approver" class="form-control" name="approver">
								<option value="邵钧">邵钧</option>
								<option value="徐博">徐博</option>
						</select>
                        </div>
                      </div>

					  	<div class="form-group">
                        <label class="col-md-2 control-label">结果性文件材料名称：</label>
                        <div class="col-md-10" >
                          <textarea placeholder="" name="resultFileName" style="width:100%;border:2px solid #d5d3e0" rows=4 required="required"></textarea>
                        </div>	
                      </div>

					  	<div class="form-group">					  
                        <label class="col-md-2 control-label">回复时间</label>
                        <div class="col-xs-4">
                          <input class="form-control" type="text" name="replyTime">
                        </div>
						<label class="col-md-2 control-label">回复方式</label>
                        <div class="col-xs-4">
                          <input class="form-control" type="text" name="replyType">
                        </div>
						<input id="fileNameStore" style="display:none" name="suffixFileUrl"/>
                      </div>

					  <div class="form-group">					  
                        <label class="col-md-2 control-label">附加文件</label>
                        <div class="col-xs-4" >
                          <input type="file" name="file" id="upload"  />
						  <span id="uploadedFileName"></span>
                        </div>
                      </div>
					  <div class="form-group">
					  <label class="col-md-2 control-label"></label>
					  <div class="col-xs-4" >
					 <div class="progress" >
                      <div class="progress-bar" role="progressbar"  aria-valuemin="0" aria-valuemax="100" style="width: 60%;" id="uploadProcessBar" >
                        <span id="uploadProcessing"></span>
                      </div>
                    </div>
					</div>
					</div>

						<div class="form-group">					  
                        <label class="col-md-2 control-label"></label>
                        <div class="col-xs-4">
                         <input class="btn btn-info btn-lg" type="submit" id="submitButton" value="提交并生成报表">
                     
                        </div>
                      </div>
                      <input style="display:none" value="${pd.clientName}" id="clientName" name="clientNameFlag"/>
                    </form>
                  </div>
                </div>
              </div>
            </div>
					<!-- Row End -->

				</div>
				<!-- Left Sidebar End -->

				<!-- Right Sidebar Start -->
				<div class="right-sidebar">
					<div class="wrapper">
						<button class="btn btn-block btn-info" type="button">
							Block level button</button>
					</div>
					<div class="wrapper">
						<button class="btn btn-block btn-success" type="button">
							Block level button</button>
					</div>
					<div class="wrapper">
						<button class="btn btn-block btn-warning" type="button">
							Block level button</button>
					</div>

					<hr class="hr-stylish-1">

					<div class="wrapper">
						<ul class="progress-stats">
							<li>
								<div class="details">
									<span>Windows</span> <span class="pull-right">78%</span>
								</div>
								<div class="progress progress-sm">
									<div class="progress-bar" role="progressbar" aria-valuenow="78"
										aria-valuemin="0" aria-valuemax="100" style="width: 78%">
									</div>
								</div>
							</li>
							<li>
								<div class="details">
									<span>Windows 8</span> <span class="pull-right">32%</span>
								</div>
								<div class="progress progress-sm">
									<div class="progress-bar progress-bar-danger"
										role="progressbar" aria-valuenow="32" aria-valuemin="0"
										aria-valuemax="100" style="width: 32%"></div>
								</div>
							</li>
							<li>
								<div class="details">
									<span>Mac</span> <span class="pull-right">84%</span>
								</div>
								<div class="progress progress-sm">
									<div class="progress-bar progress-bar-warning"
										role="progressbar" aria-valuenow="84" aria-valuemin="0"
										aria-valuemax="100" style="width: 84%"></div>
								</div>
							</li>
							<li>
								<div class="details">
									<span>Linux</span> <span class="pull-right">44%</span>
								</div>
								<div class="progress progress-sm">
									<div class="progress-bar progress-bar-info" role="progressbar"
										aria-valuenow="44" aria-valuemin="0" aria-valuemax="100"
										style="width: 44%"></div>
								</div>
							</li>
							<li>
								<div class="details">
									<span>IPhone/IPad</span> <span class="pull-right">67%</span>
								</div>
								<div class="progress progress-sm">
									<div class="progress-bar progress-bar-success"
										role="progressbar" aria-valuenow="67" aria-valuemin="0"
										aria-valuemax="100" style="width: 67%"></div>
								</div>
							</li>
						</ul>
					</div>

					<hr class="hr-stylish-1">

					<div class="wrapper">
						<div class="btn-toolbar no-margin">
							<div class="btn-group">
								<a href="#" class="btn btn-success"> <i
									class="fa fa-headphones"></i>
								</a> <a href="#" class="btn btn-warning"> <i
									class="fa fa-thumbs-down"></i>
								</a> <a href="#" class="btn btn-danger"> <i class="fa fa-tasks"></i>
								</a> <a href="#" class="btn btn-info"> <i
									class="fa fa-thumbs-up"></i>
								</a>
							</div>
							<div class="btn-group">
								<a href="#" class="btn btn-default"> <i
									class="fa fa-trash-o"></i>
								</a>
							</div>
						</div>
					</div>
				</div>
				<!-- Right Sidebar End -->
			</div>
			<!-- Dashboard Wrapper End -->

			<footer>
				<p>© 八谦律师事务所</p>
			</footer>

		</div>
	</div>
	<!-- Main Container end -->

	<script src="static/bootStrapFiles/js/wysi/wysihtml5-0.3.0.min.js"></script>
	<script src="static/bootStrapFiles/js/jquery.js"></script>
	<script src="static/bootStrapFiles/js/bootstrap.min.js"></script>
	<script src="static/bootStrapFiles/js/wysi/bootstrap3-wysihtml5.js"></script>
	<script src="static/bootStrapFiles/js/jquery.scrollUp.js"></script>
		<script type="text/javascript"
		src="static/commonJS/datePicker/js/bootstrap-datetimepicker.js"
		charset="UTF-8"></script>
	<script type="text/javascript"
		src="static/commonJS/datePicker/js/locales/bootstrap-datetimepicker.fr.js"
		charset="UTF-8"></script>
		<script type="text/javascript"
		src="static/commonJS/ajaxupload.js"></script>

	<!-- Color Picker -->
	<script
		src="static/bootStrapFiles/js/color-picker/jquery.minicolors.js"></script>

	<!-- Custom JS -->
	<script src="static/bootStrapFiles/js/menu.js"></script>

	<script type="text/javascript">
		function changeBar() {
			alert('ss');
			document.getElementById("uploadProcess").innerHTML = 'sd';
			$("#processBar").attr("style", "width:90%");
		}
		//ScrollUp
		$(function() {
			$.scrollUp({
				scrollName : 'scrollUp', // Element ID
				topDistance : '300', // Distance from top before showing element (px)
				topSpeed : 300, // Speed back to top (ms)
				animation : 'fade', // Fade, slide, none
				animationInSpeed : 400, // Animation in speed (ms)
				animationOutSpeed : 400, // Animation out speed (ms)
				scrollText : 'Top', // Text for element
				activeOverlay : false, // Set CSS color to display scrollUp active point, e.g '#00FFFF'
			});
		});

		//Tooltip
		$('a').tooltip('hide');

		//Popover
		$('.popover-pop').popover('hide');

		//Dropdown
		$('.dropdown-toggle').dropdown();

		//wysihtml5
		$('.textarea').wysihtml5();

		//Color Pickers
		$(document)
				.ready(
						function() {

							$('.demo')
									.each(
											function() {
												$(this)
														.minicolors(
																{
																	control : $(
																			this)
																			.attr(
																					'data-control')
																			|| 'hue',
																	defaultValue : $(
																			this)
																			.attr(
																					'data-defaultValue')
																			|| '',
																	inline : $(
																			this)
																			.attr(
																					'data-inline') === 'true',
																	letterCase : $(
																			this)
																			.attr(
																					'data-letterCase')
																			|| 'lowercase',
																	opacity : $(
																			this)
																			.attr(
																					'data-opacity'),
																	position : $(
																			this)
																			.attr(
																					'data-position')
																			|| 'bottom left',
																	change : function(
																			hex,
																			opacity) {
																		if (!hex)
																			return;
																		if (opacity)
																			hex += ', '
																					+ opacity;
																		try {
																			console
																					.log(hex);
																		} catch (e) {
																		}
																	},
																	theme : 'bootstrap'
																});

											});

						});
	</script>
	
		<script type="text/javascript">
		
		
		$(function() {
			$.scrollUp({
				scrollName : 'scrollUp', // Element ID
				topDistance : '300', // Distance from top before showing element (px)
				topSpeed : 300, // Speed back to top (ms)
				animation : 'fade', // Fade, slide, none
				animationInSpeed : 400, // Animation in speed (ms)
				animationOutSpeed : 400, // Animation out speed (ms)
				scrollText : 'Top', // Text for element
				activeOverlay : false, // Set CSS color to display scrollUp active point, e.g '#00FFFF'
			});
		});

		
		$('.form_datetime').datetimepicker({
			language : 'fr',
			weekStart : 1,
			todayBtn : 1,
			autoclose : 1,
			todayHighlight : 1,
			startView : 2,
			forceParse : 0,
			showMeridian : 1
		});
	</script>
	
	<script>
	var processInterval=null;
	var process = 0;
	function process(){
		$.ajax({
			url : "uploadProcess",
			type : 'GET',
			dataType : 'html',
			success : function(html) {
				alert(html);
				document.getElementById("uploadProcessing").innerHTML=html+"%";
				$("#uploadProcessBar").attr("style","width:"+html+"%");
				process = html;
			}
		});
	}
	$(function() {
		document.getElementById("uploadProcessing").innerHTML="";
		$("#uploadProcessBar").attr("style","width:0%");
		new AjaxUpload($('#upload'),{
			
			action : 'uploadFile',
			name : 'file',
			onSubmit : function(file, ext) {
				processInterval=setInterval(process, 50);
	
			},
			onComplete : function(file, response) {
				if(response=='typeerror'){
					alert("只能上传word格式的文件");
					document.getElementById("uploadProcessing").innerHTML="";
				}else{
					document.getElementById("uploadProcessing").innerHTML="100%";
					clearInterval(processInterval);
					$("#uploadProcessBar").attr("style","width:100%");
					var result = response.split(",");
					var oriName = result[0];
					var fileName = result[1];
					$("#fileNameStore").val(fileName);
					document.getElementById("uploadedFileName").innerHTML=oriName+'   &nbsp;<span class="fa fa-times" onclick="javascript:cancelFile()"></span>';
				}
				
			}
		});
	});
	
	function cancelFile(){
		var fileName= $("#fileNameStore").val();
		$.ajax({
			data:'fileUrl='+fileName,
			url:'deleteUploadedFile',
			dataType:'json',
			type:'post',
			success:function(data){
				if(data.msg=='success'){
					document.getElementById("uploadedFileName").innerHTML="";
					$("#fileNameStore").val("");
					document.getElementById("uploadProcessing").innerHTML="";
					$("#uploadProcessBar").attr("style","width:0%");
				}else{
					alert("删除文件失败");
				}
			}
		});
	}
	
	function checkAndSubmitForm(){
		$("#submitButton").attr("disabled","true");
		document.getElementById("submitButton").innerHTML="正在解析合并文件,请稍后...";
		var tableData = $("#flswclForm").serialize();
		$.ajax({
			data:tableData,
			url:'generateFlswclReport',
			dataType:'json',
			type:'post',
			success:function(data){
				if(data.msg=='success'){
					location.href="flswclReportList.do";
				}else{
					alert('发生未知错误，请联系管理员');
				}
			}
		});
	}
	
	function checkSubmit(){
		var fileName = document.getElementById("uploadedFileName").innerHTML;
		if(fileName=="" || fileName==null){
			alert("请选择上传文件");
			return false;
		}else{
			return true;
		}
		
	}
	
	
	</script>


</body>
</html>