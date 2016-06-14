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
<div class="row">
              <div class="col-lg-12 col-md-12">
                <div class="widget">
                  <div class="widget-header">
                    <div class="title">
                      Input <a id="inputs">s</a>
                    </div>
                    <span class="tools">
                      <i class="fa fa-cogs"></i>
                    </span>
                  </div>
                  <div class="widget-body">
                    <form class="form-horizontal row-border" action="#">
                      <div class="form-group">
                        <label class="col-md-2 control-label">Default input</label>
                        <div class="col-md-10">
                          <input type="text" name="regular" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="col-md-2 control-label">Password</label>
                        <div class="col-md-10">
                          <input class="form-control" type="password" name="pass">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="col-md-2 control-label">Placeholder</label>
                        <div class="col-md-10">
                          <input class="form-control" type="text" name="placeholder" placeholder="placeholder">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="col-md-2 control-label">Disabled</label>
                        <div class="col-md-10">
                          <input type="text" name="disabled" disabled="disabled" value="disabled" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="col-md-2 control-label">Read only</label>
                        <div class="col-md-10">
                          <input class="form-control" type="text" name="readonly" readonly="" value="read only">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="col-md-2 control-label">Help text</label>
                        <div class="col-md-10">
                          <input type="text" name="regular" class="form-control">
                          <span class="help-block">A block of help text that breaks onto a new line and may extend beyond one line.</span>
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="col-md-2 control-label">Predefined</label>
                        <div class="col-md-10">
                          <input type="text" name="regular" value="http://" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="col-md-2 control-label">With icon</label>
                        <div class="col-md-10">
                          <input type="text" name="regular" class="form-control">
                          <i class="icon-pencil input-icon"></i>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="labelfor" class="col-md-2 control-label">Clickable label</label>
                        <div class="col-md-10">
                          <input type="text" name="labelfor" id="labelfor" class="form-control">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="col-md-2 control-label">Column sizing</label>
                        <div class="col-md-10">
                          <div class="row">
                            <div class="col-xs-3">
                              <input type="text" class="form-control" placeholder=".col-xs-3">
                            </div>
                            <div class="col-xs-5">
                              <input type="text" class="form-control" placeholder=".col-xs-5">
                            </div>
                            <div class="col-xs-4">
                              <input type="text" class="form-control" placeholder=".col-xs-4">
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="form-group has-success">
                        <label class="col-md-2 control-label">Input success</label>
                        <div class="col-md-10">
                          <input type="text" class="form-control" id="inputSuccess" placeholder="Input Success">
                          <i class="icon-pencil input-icon success"></i>
                        </div>
                      </div>
                      <div class="form-group has-warning">
                        <label class="col-md-2 control-label">Input warning</label>
                        <div class="col-md-10">
                          <input type="text" class="form-control" id="inputWarning" placeholder="Input Warning">
                          <i class="icon-pencil input-icon warning"></i>
                        </div>
                      </div>
                      <div class="form-group has-error">
                        <label class="col-md-2 control-label">Input error</label>
                        <div class="col-md-10">
                          <input type="text" class="form-control" id="inputError" placeholder="Input Error">
                          <i class="icon-pencil input-icon error"></i>
                        </div>
                      </div>
                    </form>
                  </div>
                </div>
              </div>
            </div>
				<!-- Left Sidebar Start -->
					<!-- Row ends -->


					<!-- MOdql fade 2 Start -->
					<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog" style="width: 75%">
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
													<form class="form-horizontal row-border" action="#">
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
															<div class="col-md-10">
																<input type="text" name="inquireTime"
																	class="form-control">
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
																	value="${user.NAME }">
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
																					cols="50" rows="15" placeholder="请填写处理意见"></textarea>
																			</th>
																			<th style="width: 50%" class="hidden-xs">工作人员：</th>
																		</tr>
																		<tr>
																			<th style="width: 50%">工作时间：</th>

																		</tr>
																		<tr>
																			<th style="width: 50%">联系电话：</th>

																		</tr>
																		<tr>
																			<th style="width: 50%">审核人员：</th>

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
																					cols="50" rows="15" placeholder=""></textarea></th>
																			<th style="width: 50%" class="hidden-xs">回复时间：</th>
																		</tr>
																		<tr>
																			<th style="width: 50%">回复方式：</th>
																		</tr>
																	</thead>
																</table>
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

		function loadmodal1() {
			$("#modaltoggle1").click();
			$("#waitClient").empty();
			$.ajax({
				type : 'POST',
				url : 'clientListData.do',
				dataType : 'json',
				success : function(data) {
					for (var i = 0; i < data.length; i++) {
						var opt = '<option value="'+data[i]+'">' + data[i]
								+ '</option>';
						$("#waitClient").append(opt);
					}
				},
				error : function(data) {
					alert("客户加载失败");
				}
			});
		}
		function loadmodal2() {
			var clientName = $("#waitClient").val();
			var inquireType=$("#inquireType").val();
			$("#myModal").blur();
			setTimeout(function(){
				alert("ready to click");
				$("#modaltoggle2").click();
			} , 500);
			
			
		}
		function closeModal1() {
			$("#modal_close").click;
			
		}
	</script>

</body>
</html>