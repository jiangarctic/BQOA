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

<link href="static/bootStrapFiles/css/new.css" rel="stylesheet">
<!-- Important. For Theming change primary-color variable in main.css  -->

<link href="static/bootStrapFiles/css/alertify.core.css"
	rel="stylesheet" id="toggleCSS">

<link href="static/bootStrapFiles/fonts/font-awesome.min.css"
	rel="stylesheet">
<link
	href="static/commonJS/datePicker/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet" media="screen">

<!-- HTML5 shiv and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<c:set var="currentMain_Menu" value="办公" />
	<c:set var="currentSub_Menu" value="生成报告" />
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

					<!-- Row starts -->
					<div class="row">
						<div class="col-lg-4 col-md-4 col-sm-12 col-sx-12">
							<div class="panel panel-success">
								<div class="panel-heading">
									<h4 class="panel-title">
										<i class="icon ion-clock text-success"></i>诉讼业务
									</h4>
								</div>
								<div class="panel-body">
									<button type="button" class="btn btn-success"
										onclick="javascript:loadmodal1();">法律事务处理记录</button>
									<button type="button" id="modaltoggle1" data-toggle="modal"
										data-target="#myModal" style="display: none"></button>
									<button type="button" id="modaltoggle2" data-toggle="modal"
										data-target="#myModal2" style="display: none"></button>
								</div>
							</div>
						</div>

						<div class="col-lg-4 col-md-4 col-sm-12 col-sx-12">
							<div class="panel panel-success">
								<div class="panel-heading">
									<h4 class="panel-title">
										<i class="icon ion-clock text-success"></i>非诉业务
									</h4>
								</div>
								<div class="panel-body">
									<button type="button" class="btn btn-success">待开发</button>
								</div>
							</div>
						</div>
					</div>
					<!-- Row ends -->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog" style="width: 45%">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										id="modal_close" aria-hidden="true">&times;</button>

								</div>
								<div class="modal-body">
									<div class="row">
										<div class="col-lg-12 col-md-12">
											<div class="widget">
												<div class="widget-header">
													<div class="title">
														法律事务处理记录-预设信息<span class="mini-title"> <a
															id="create-account"></a>
														</span>
													</div>
												</div>
												<div class="widget-body">
													<form class="form-horizontal no-margin" id="ClientInfoForm"
														action="">
														<div class="form-group">
															<label for="waitClient" class="col-sm-2 control-label">客户名称：</label>
															<div class="col-sm-10">
																<select id="waitClient" class="form-control">

																</select>
															</div>
														</div>
														<div class="form-group">
															<label for="emailId" class="col-sm-2 control-label">咨询方式</label>
															<div class="col-sm-10">
																<div class="col-sm-10">
																	<select id="inquireType" class="form-control">
																		<option value="面谈">面谈</option>
																		<option value="面谈">电话</option>
																	</select>
																</div>
															</div>
														</div>
														<div class="form-group">
															<div class="col-sm-offset-2 col-sm-10">
																<button type="button" class="btn btn-info"
																	onclick="javascript:loadmodal2();">下一步</button>
																&nbsp;&nbsp;
																<button type="button" id="close_Modal1"
																	class="btn btn-default" data-dismiss="modal">关闭</button>
															</div>

														</div>


													</form>
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>

					<!-- MOdql fade 2 Start -->
					<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog"
							style="width: 75%; height: 90%; overflow-y: auto;">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										id="modal_close2" aria-hidden="true">&times;</button>

								</div>
								<div class="modal-body">
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
													<form class="form-horizontal row-border" action="">
														<div class="form-group">

															<div class="col-md-15">

																<div>
																	<label class="col-md-2 control-label">公司名称：</label>
																	<div class="col-xs-5">
																		<input type="text" class="form-control"
																			id="clientName">
																	</div>
																</div>
																<div>
																	<label class="col-md-2 control-label">编号：</label>
																	<div class="col-xs-3">
																		<input type="text" class="form-control" placeholder=""
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
																		value="" readonly> <span
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
																<input class="form-control" type="text" name="pass"
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
																<input type="text" name="regular" class="form-control"
																	value="${user.PHONE }">
															</div>
														</div>
														<div class="form-group">
															<label class="col-md-2 control-label">电子邮箱</label>
															<div class="col-md-10">
																<input class="form-control" type="text" name="pass"
																	value="${user.EMAIL }">
															</div>
														</div>

														<div class="form-group">
															<label class="col-md-2 control-label">法律事务内容概述：</label>
															<div class="col-md-9">
																<textarea class="textarea form-control" placeholder=""></textarea>
															</div>
														</div>
														<div class="form-group">
															<label class="col-md-2 control-label">公司提供的文件材料</label>
															<div class="col-md-10">
																<input class="form-control" type="text" name="pass">
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
																					cols="70" rows="9" placeholder="请填写处理意见"></textarea>
																			</th>
																			<th style="width: 50%" class="hidden-xs"><div>
																					<label class="col-md-4 control-label">工作人员：</label>
																					<div class="col-xs-6">
																						<input type="text" class="form-control"
																							name="workTime" value="江万东" readonly="readonly">
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
																							name="workTime" value="123457"
																							readonly="readonly">
																					</div>
																				</div></th>

																		</tr>
																		<tr>
																			<th style="width: 50%">
																				<div>
																					<label class="col-md-4 control-label">审核人员：</label>
																					<div class="col-sm-6">
																						<select id="approver" class="form-control">

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
																					cols="70" rows="9" placeholder=""></textarea></th>
																			<th style="width: 50%" class="hidden-xs">回复时间：</th>
																		</tr>
																		<tr>
																			<th style="width: 50%">回复方式：</th>
																		</tr>
																	</thead>
																</table>
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
																			<input id="fileNameStore" style="display:none" />
																		</tr>
																	</thead>
																</table>
															</div>
														</div>
													</form>
												</div>
												<div class="container">
													<button type="button" class="btn btn-success">提交</button>
													<button type="button" class="btn btn-info">退出</button>
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
					<!-- MOdal fade 2 End -->
					<!-- Row starts -->
					<div class="row"></div>
					<!-- Row ends -->

					<!-- Row starts -->
					<div class="row"></div>
					<!-- Row ends -->

					<!-- Row starts -->
					<div class="row"></div>
					<!-- Row ends -->

					<!-- Row starts -->
					<div class="row"></div>
					<!-- Row ends -->

					<!-- Row starts -->
					<div class="row"></div>
					<!-- Row ends -->

					<!-- Row Start -->
					<div class="row"></div>
					<!-- Row End -->

				</div>
				<!-- Left Sidebar End -->

				<!-- Right Sidebar Start -->
				<div class="right-sidebar">
					<div class="wrapper">
						<div class="list-group no-margin">
							<a href="javascript:;" class="list-group-item"> <span
								class="pull-right"> <i class="fa fa-file fa-3x text-info"></i>
							</span>
								<h4 class="list-group-item-heading">239</h4>
								<p class="list-group-item-text">Files</p>
							</a> <a href="javascript:;" class="list-group-item"> <span
								class="pull-right"> <i
									class="fa fa-check-square-o fa-3x text-warning"></i>
							</span>
								<h4 class="list-group-item-heading">11689</h4>
								<p class="list-group-item-text">Paid</p>
							</a> <a href="javascript:;" class="list-group-item"> <span
								class="pull-right"> <i
									class="fa fa-users fa-3x text-success"></i>
							</span>
								<h4 class="list-group-item-heading">831</h4>
								<p class="list-group-item-text">Friends</p>
							</a>
						</div>
					</div>

				</div>
				<!-- Right Sidebar End -->

			</div>
			<!-- Dashboard Wrapper End -->

			<footer>
				<p>八谦律师事务所</p>
			</footer>

		</div>
	</div>
	<!-- Main Container end -->

	<script src="static/bootStrapFiles/js/jquery.js"></script>
	<script src="static/bootStrapFiles/js/bootstrap.min.js"></script>
	<script src="static/bootStrapFiles/js/jquery.scrollUp.js"></script>
	<script type="text/javascript"
		src="static/commonJS/datePicker/js/bootstrap-datetimepicker.js"
		charset="UTF-8"></script>
	<script type="text/javascript"
		src="static/commonJS/datePicker/js/locales/bootstrap-datetimepicker.fr.js"
		charset="UTF-8"></script>
		<script type="text/javascript"
		src="static/commonJS/ajaxupload.js"></script>

	<!-- Custom JS -->
	<script src="static/bootStrapFiles/js/menu.js"></script>

	<script type="text/javascript">
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
		var map = {};
		function loadmodal1() {
			$("#modaltoggle1").click();
			$("#waitClient").empty();
			$.ajax({
				type : 'POST',
				url : 'clientListData.do',
				dataType : 'json',
				success : function(data) {
					for (var i = 0; i < data.length; i++) {
						var opt = '<option value="'+data[i].clientName+'">'
								+ data[i].clientName + '</option>';
						$("#waitClient").append(opt);
						map[data[i].clientName] = data[i].shortName;
					}
				},
				error : function(data) {
					alert("客户加载失败");
				}
			});
		}
		function loadmodal2() {
			var clientName = $("#waitClient").val();
			var type = $("#inquireType").val();
			var shortName = map[clientName];
			var date = new Date();
			var time = date.toLocaleString();
			var fullyear = date.getFullYear() + "";
			var year = fullyear.substring(2, 4);
			var mon = date.getMonth() + 1;
			var day = date.getDate();
			if (day < 10) {
				day = "0" + day;
			}
			if (mon < 10) {
				mon = "0" + mon;
			}
			var reportNum = shortName + year + mon + day + "H";
			$("#close_Modal1").trigger("click");
			$("#modaltoggle2").click();
			$("#clientName").val(clientName);
			$("#reportNum").val(reportNum);
		}
		
		
	</script>

	<script type="text/javascript">
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
				document.getElementById("uploadProcessing").innerHTML="上传成功";
				clearInterval(processInterval);
				$("#uploadProcessBar").attr("style","width:100%");
				var result = response.split(",");
				var oriName = result[0];
				var fileName = result[1];
				$("#fileNameStore").val(fileName);
				document.getElementById("uploadedFileName").innerHTML=oriName+'   &nbsp;<span class="fa fa-times" onclick="javascript:cancelFile()"></span>';			
			}
		});
	});
	
	function cancelFile(){
		alert("calce");
		var fileName= $("#fileNameStore").val();
		alert(fileName);
	}
	</script>


</body>
</html>