<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Blue Moon - Responsive Admin Dashboard</title>
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
														法律事务处理记录-详情<span class="mini-title"> <a
															id="create-account"></a>
														</span>
													</div>
												</div>
												<div class="widget-body">
													<form class="form-horizontal row-border" id="flswclForm">
														<div class="form-group">

															<div class="col-md-15">

																<div>
																	<label class="col-md-2 control-label">公司名称：</label>
																	<div class="col-xs-5">
																		<input type="text" class="form-control" name="clientName"
																			id="clientName">
																	</div>
																</div>
																<div>
																	<label class="col-md-2 control-label">编号：</label>
																	<div class="col-xs-3">
																		<input type="text" class="form-control" placeholder="" name="reportNum"
																			id="reportNum">
																	</div>
																</div>


															</div>
														</div>
														<div class="form-group">
															<label class="col-md-2 control-label">咨询日期</label>
															<div class="col-sm-10">
																<div class="input-group date form_datetime col-md-5"
																	data-date-format="yyyy年mm月dd日  p HH:ii"
																	data-link-field="dtp_input1">
																	<input class="form-control" size="16" type="text"
																		 name="inquireTime"> <span
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
															<div class="col-md-10">
																<input class="form-control" type="text" name="inquireType"
																	id="inquireType">
															</div>
														</div>
														<div class="form-group">
															<label class="col-md-2 control-label">咨询人及所属部门、职务</label>
															<div class="col-md-10">
																<input class="form-control" type="text" name="inquireer"
																	value="">
															</div>
														</div>
														<div class="form-group">
															<label class="col-md-2 control-label">联系方式</label>
															<div class="col-md-10">
																<input type="text" name="inquireerPhone" class="form-control"
																	value="">
															</div>
														</div>
														<div class="form-group">
															<label class="col-md-2 control-label">电子邮箱</label>
															<div class="col-md-10">
																<input class="form-control" type="text" name="inquireerEmail"
																	value="">
															</div>
														</div>

														<div class="form-group">
															<label class="col-md-2 control-label">法律事务内容概述：</label>
															<div class="col-md-9">
																<textarea class="textarea form-control" placeholder="" name="reportBrief"></textarea>
															</div>
														</div>
														<div class="form-group">
															<label class="col-md-2 control-label">公司提供的文件材料</label>
															<div class="col-md-10">
																<input class="form-control" type="text" name="givenFiles">
															</div>
														</div>


														<div class="form-group">
															<label class="col-md-2 control-label">处理意见</label>
															<div class="col-md-10">
																<table
																	class="table table-responsive table-striped table-bordered table-hover no-margin">
																	<thead>
																		<tr>
																			<th style="width: 50%" rowspan="4"><textarea
																					cols="70" rows="9" placeholder="请填写处理意见" name="suggestions"></textarea>
																			</th>
																			<th style="width: 50%" class="hidden-xs"><div>
																					<label class="col-md-4 control-label">工作人员：</label>
																					<div class="col-xs-6">
																						<input type="text" class="form-control"
																							name="worker" value="江万东" readonly="readonly">
																					</div>
																				</div></th>
																		</tr>
																		<tr>
																			<th style="width: 50%">
																				<div>
																					<label class="col-md-4 control-label">工作时间：</label>
																					<div class="col-xs-6">
																						<input type="text" class="form-control"
																							name="workTime" placeholder="">
																					</div>
																				</div>小时
																			</th>
																		</tr>
																		<tr>
																			<th style="width: 50%"><div>
																					<label class="col-md-4 control-label">联系电话：</label>
																					<div class="col-xs-6">
																						<input type="text" class="form-control"
																							name="workerPhone" 
																							readonly="readonly" value="${sessionUser.PHONE }">
																					</div>
																				</div></th>

																		</tr>
																		<tr>
																			<th style="width: 50%">
																				<div>
																					<label class="col-md-4 control-label">审核人员：</label>
																					<div class="col-sm-6">
																						<select id="approver" class="form-control" name="approver">

																						</select>
																					</div>
																				</div>
																			</th>

																		</tr>
																	</thead>
																</table>
															</div>
														</div>
														<div class="form-group">
															<label class="col-md-2 control-label">结果性文件材料名称</label>
															<div class="col-md-10">
																<table
																	class="table table-responsive table-striped table-bordered table-hover no-margin">
																	<thead>
																		<tr>
																			<th style="width: 50%" rowspan="4"><textarea
																					cols="70" rows="9" placeholder="" name="resultFileName"></textarea></th>
																			<th style="width: 50%" class="hidden-xs"><div>
																					<label class="col-md-4 control-label">回复时间</label>
																					<div class="col-xs-6">
																						<input type="text" class="form-control"
																							name="replyTime" 
																							readonly="readonly" value="">
																					</div>
																				</div></th>
																		</tr>
																		<tr>
																			<th style="width: 50%"><div>
																					<label class="col-md-4 control-label">回复方式：</label>
																					<div class="col-xs-6">
																						<input type="text" class="form-control"
																							name="replyType" 
																							readonly="readonly" value="">
																							<input id="fileNameStore" style="display:none" name="suffixFileUrl"/>
																					</div>
																				</div></th>
																		</tr>
																	</thead>
																</table>
																</form>
															</div>
														</div>
														<div class="form-group">
															<label class="col-md-2 control-label">上传附件</label>
															<div class="col-md-10">
																<table
																	class="table table-responsive table-striped  table-hover no-margin">
																	<thead>
																		<tr>
																			<td width="30%"><input type="file" name="file"
																				id="upload" /></td>
																			<td><div class="details">
																					<span>上传进度</span> <span class="pull-right" id="uploadProcessing"></span>
																				</div>
																				<div class="progress progress-sm">
																					<div class="progress-bar" role="progressbar"
																						 aria-valuemin="0"
																						aria-valuemax="100" id="uploadProcessBar"></div>
																				</div></td>
																		</tr>
																		<tr>
																			<td colspan="2" id="uploadedFileName"></td>
																			
																		</tr>
																	</thead>
																</table>
															</div>
														</div>
													
												</div>
												<div class="container">
													<button type="button" id="submitButton" class="btn btn-success" onclick="checkAndSubmitForm()">提交并生成文件</button>
													<button type="button" class="btn btn-info">退出</button>
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
				<p>© BlueMoon 2013-14</p>
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
				$("#uploadProcessBar").attr("style","width:"+html+''+"%");
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
				processInterval=setInterval(process, 100);
				document.getElementById("uploadProcessing").innerHTML="正在上传...";
				
			},
			onComplete : function(file, response) {
				if(response=='typeerror'){
					alert("只能上传word格式的文件");
					document.getElementById("uploadProcessing").innerHTML="";
				}else{
					document.getElementById("uploadProcessing").innerHTML="上传成功";
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
		document.getElementById("submitButton").innerHTML="正在提交...";
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
	</script>

</body>
</html>