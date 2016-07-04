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
	content="八谦律师事务所" />
<meta name="keywords"
	content="Notifications, Admin, Dashboard, Bootstrap3, Sass, transform, CSS3, HTML5, Web design, UI Design, Responsive Dashboard, Responsive Admin, Admin Theme, Best Admin UI, Bootstrap Theme, Wrapbootstrap, Bootstrap, bootstrap.gallery" />
<meta name="author" content="Bootstrap Gallery" />
<link rel="shortcut icon" href="img/favicon.ico">

<link href="static/bootStrapFiles/css/bootstrap.min.css"
	rel="stylesheet">
<link href="static/bootStrapFiles/css/wysi/bootstrap-wysihtml5.css"
	rel="stylesheet">

<link href="static/bootStrapFiles/css/new.css" rel="stylesheet">
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
                     法律事务处理-详情显示
                    </div>
                    <span class="tools">
                      <i class="fa fa-cogs"></i>
                    </span>
                  </div>
                  <div class="widget-body">
                    <form class="form-horizontal row-border" action="generateFlswclReport.do" id="flswclForm" onsubmit="return checkSubmit();">
                      <div class="form-group">
                      
                        <label class="col-md-2 control-label">公司名称</label>
                        <div class="col-xs-4">
                        
                          <input class="form-control" type="text" name="clientName"  placeholder="请手工填写客户名称" id="clientName">
                        </div>
						<label class="col-md-2 control-label">编号</label>
                        <div class="col-xs-4">
                          <input class="form-control" type="text" name="reportNum" id="reportNum"  placeholder="请手工填写合同编号">
                        </div>
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
							<div class="col-xs-4">
                          <input class="form-control" type="text"  placeholder="请手动填入：姓名_单位_职务" name="inquireer" required="required">
                        </div>						
							<div class="col-xs-4">
                          <input class="form-control" type="text"  value="${pd.clientContactor }&nbsp;&nbsp;${pd.contactorDesc}" name="inquireer" required="required">
                        </div>                     
                      </div>
                      

					  <div class="form-group">	
					  			  
                        <label class="col-md-2 control-label">联系方式</label>
                        <div class="col-xs-4">
                          <input class="form-control" type="text" value="${pd.clientPhone }" name="inquireerPhone" required="required">
                        </div>
						<label class="col-md-2 control-label">邮箱</label>
                        <div class="col-xs-4">
                          <input class="form-control" type="email" value="${pd.clientEmail }" name="inquireerEmail" >
                        </div>
                      </div>


                      <div class="form-group">
                        <label class="col-md-2 control-label">法律事务内容概述</label>
                        <div class="col-md-10">
                          <textarea placeholder="" name="reportBrief" style="width:100%;border:2px solid #d5d3e0" rows=3 required="required">${pd.reportBrief }</textarea>
                        </div>
                      </div>

					  
                      <div class="form-group">
                        <label class="col-md-2 control-label">公司提供的文件材料：</label>
                        <div class="col-md-10">
                          <textarea placeholder="" name="givenFiles" style="width:100%;border:2px solid #d5d3e0" rows=4 >${pd.givenFiles }</textarea>
                        </div>
                      </div>
		
		                 <div class="form-group">
                        <label class="col-md-2 control-label">处理意见（或结果）：</label>
                        <div class="col-md-10" >
                          <textarea placeholder="" name="suggestions" style="width:100%;border:2px solid #d5d3e0" rows=4 required="required">${pd.suggestions }</textarea>
                        </div>	
                      </div>

					  	<div class="form-group">					  
                        <label class="col-md-2 control-label">工作人员</label>
                        <div class="col-xs-4">
                          <input class="form-control" type="text" name="worker" value="${pd.worker}" readonly>
                        </div>
						<label class="col-md-2 control-label">工作时间</label>
                        <div class="col-xs-4">
                          <input class="form-control" type="text" name="workTime" value="${pd.workTime }" placeholder="单位：小时" required="required">
                        </div>
						 <label class="col-md-2 control-label">联系电话</label>
                        <div class="col-xs-4">
                          <input class="form-control" type="text" name="workerPhone" value="${workerPhone}">
                        </div>
						<label class="col-md-2 control-label">审核人员</label>
                        <div class="col-xs-4">
                          <select id="approver" class="form-control" name="approver" value="${pd.approver }">
								<option value="邵钧">邵钧</option>
								<option value="徐博">徐博</option>
						</select>
                        </div>
                      </div>

					  	<div class="form-group">
                        <label class="col-md-2 control-label">结果性文件材料名称：</label>
                        <div class="col-md-10" >
                          <textarea placeholder="" name="resultFileName" style="width:100%;border:2px solid #d5d3e0" rows=4 required="required">${pd.resultFileName }</textarea>
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
<%@ include file="/WEB-INF/jsp/system/admin/rightSideBar.jsp" %>
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

</body>
</html>