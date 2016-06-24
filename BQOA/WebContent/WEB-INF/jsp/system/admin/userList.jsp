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

<link href="static/bootStrapFiles/fonts/font-awesome.min.css"
	rel="stylesheet">

<!-- HTML5 shiv and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
</head>

<body>
	<c:set var="currentMain_Menu" value="首页" />
	<c:set var="currentSub_Menu" value="用户管理" />
	<input id="currentPage" style="display: none" value="${currentPage }" />
	<input id="maxPage" style="display: none" value="${maxPage }" />
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
					<div class="row">
						<div class="col-lg-12 col-md-12">
							<div class="widget">
								<div class="widget-header">
									<div class="title">用户列表</div>
									<span class="tools">
										<button class="btn btn-success btn-sm" type="button" onclick="javascript:loadmodal1();">
											新增 <span class="fa fa-plus"></span>
										</button>
										<button type="button" id="modaltoggle1" data-toggle="modal"
										data-target="#myModal" style="display: none"></button>
									</span>
								</div>
								<div class="widget-body">
									<table
										class="table table-responsive table-striped table-bordered table-hover no-margin">
										<thead>
											<tr>
												<th style="width: 5%">序号</th>
												<th style="width: 40%">用户名</th>
												<th style="width: 20%" class="hidden-xs">真实姓名</th>
												<th style="width: 10%" class="hidden-xs">用户组</th>
												<th style="width: 15%" class="hidden-xs">最后登录</th>
												<th style="width: 10%" class="hidden-xs">操作</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="user" items="${users }" varStatus="status">
												<tr>
													<td>${status.index+1 }</td>
													<td><span class="name"> ${user.USERNAME } </span></td>
													<td><span class="name"> ${user.NAME } </span></td>
													<td><span class="name"> ${user.role.ROLE_NAME }
													</span></td>
													<td><span class="name"> ${user.LAST_LOGIN } </span></td>
													<td><a href="#"><span class="fa fa-pencil-square">&nbsp;详情</span></a>&nbsp;&nbsp;<a
														href="#"><span class="fa fa-times">&nbsp;删除</span></a></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<div class="widget-body clearfix" align="right">${page}</div>
								</div>
							</div>
						</div>
					</div>
					<!-- Row End -->

					<!-- Row Start -->

					<!-- Row End -->

					<!-- Row Start -->

					<!-- Row End -->

					<!-- Row Start -->

					<!-- Row End -->

					<!-- Row Start -->

					<!-- Row End -->

					<!-- Row Start -->

					<!-- Row End -->

				</div>
				<!-- Left Sidebar End -->

				<!-- Right Sidebar Start -->
				<div class="right-sidebar">
					<div class="wrapper">
						<table
							class="table table-condensed table-striped table-bordered table-hover no-margin">
							<thead>
								<tr>
									<th style="width: 10%"><input type="checkbox"
										class="no-margin" /></th>
									<th style="width: 70%">Name</th>
									<th style="width: 20%">Status</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><input type="checkbox" class="no-margin" /></td>
									<td><span class="name"> Mahendra Singh Dhoni </span></td>
									<td><span class="label label-info"> New </span></td>
								</tr>
								<tr>
									<td><input type="checkbox" class="no-margin" /></td>
									<td><span class="name"> Michel Clark </span></td>
									<td><span class="label label-success"> New </span></td>
								</tr>
								<tr>
									<td><input type="checkbox" class="no-margin" /></td>
									<td><span class="name"> Rahul Dravid </span></td>
									<td><span class="label label-warning"> New </span></td>
								</tr>
								<tr>
									<td><input type="checkbox" class="no-margin" /></td>
									<td><span class="name"> Anthony Michell </span></td>
									<td><span class="label label-info"> New </span></td>
								</tr>
								<tr>
									<td><input type="checkbox" class="no-margin" /></td>
									<td><span class="name"> Srinu Baswa </span></td>
									<td><span class="label label-success"> New </span></td>
								</tr>
							</tbody>
						</table>
					</div>

					<hr class="hr-stylish-1">

					<div class="wrapper">
						<div class="btn-toolbar no-margin">
							<div class="btn-group">
								<a href="#" class="btn btn-success"> <i
									class="fa fa-headphones"> </i>
								</a> <a href="#" class="btn btn-warning"> <i
									class="fa fa-thumbs-down"> </i>
								</a> <a href="#" class="btn btn-danger"> <i class="fa fa-signal">
								</i>
								</a> <a href="#" class="btn btn-info"> <i class="fa fa-share">
								</i>
								</a>
							</div>
							<div class="btn-group">
								<a href="#" class="btn btn-default"> <i class="fa fa-leaf"></i>
								</a>
							</div>
						</div>
					</div>

					<hr class="hr-stylish-1">

					<div class="wrapper">
						<table
							class="table table-condensed table-striped table-bordered table-hover no-margin">
							<thead>
								<tr>
									<th style="width: 10%"><input type="checkbox"
										class="no-margin" /></th>
									<th style="width: 70%">Name</th>
									<th style="width: 20%">Status</th>
								</tr>
							</thead>
							<tbody>
								<tr class="success">
									<td><input type="checkbox" class="no-margin" /></td>
									<td><span class="name"> Mahendra Singh Dhoni </span></td>
									<td><span class="label label-info"> New </span></td>
								</tr>
								<tr class="error">
									<td><input type="checkbox" class="no-margin" /></td>
									<td><span class="name"> Michel Clark </span></td>
									<td><span class="label label-success"> New </span></td>
								</tr>
								<tr class="success">
									<td><input type="checkbox" class="no-margin" /></td>
									<td><span class="name"> Rahul Dravid </span></td>
									<td><span class="label label-warning"> New </span></td>
								</tr>
								<tr class="warning">
									<td><input type="checkbox" class="no-margin" /></td>
									<td><span class="name"> Anthony Michell </span></td>
									<td><span class="label label-info"> New </span></td>
								</tr>
								<tr class="info">
									<td><input type="checkbox" class="no-margin" /></td>
									<td><span class="name"> Srinu Baswa </span></td>
									<td><span class="label label-success"> New </span></td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
				<!-- Right Sidebar End -->
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
													新增用户<span class="mini-title"> <a id="create-account"></a>
													</span>
												</div>
											</div>
											<div class="widget-body">
												<form class="form-horizontal no-margin" id="UserInfoForm"
													action="addUser.do" onsubmit="return checkAndSubmit()">
													<div class="form-group">
														<label for="waitClient" class="col-sm-2 control-label">用户名：</label>
														<div class="col-sm-10">
															<input class="form-control" type="text" name="USERNAME"
																 placeholder="英文字母，不包含/*&……%" required="required">
														</div>
													</div>
													<div class="form-group">
														<label for="waitClient" class="col-sm-2 control-label">真实姓名：</label>
														<div class="col-sm-10">
															<input class="form-control" type="text"
																name="NAME" placeholder="请填入真实姓名" required="required">
														</div>
													</div>
													<div class="form-group" id="div_pass">
														<label for="waitClient" class="col-sm-2 control-label">密码：</label>
														<div class="col-sm-10">
															<input class="form-control" type="password" id="password"
																name="password" placeholder="请输入6位以上密码" required="required">
														</div>
													</div>
													<div class="form-group" id="div_confirm">
														<label for="waitClient" class="col-sm-2 control-label">确认密码：</label>
														<div class="col-sm-10">
															<input class="form-control" type="password"
																 placeholder="请输入6位以上密码" id="passConfirm" required="required">
														</div>
													</div>
													<div class="form-group">
															<label for="emailId" class="col-sm-2 control-label">用户组</label>
															<div class="col-sm-10">
																	<select id="userRole" name="ROLE_ID" class="form-control" >
																		
																	</select>															
															</div>
														</div>
													<div class="form-group">
														<div class="col-sm-offset-2 col-sm-10">
															<input type="submit" class="btn btn-info"
																 value="提交">
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

			</div>
			<!-- Dashboard Wrapper End -->

			<footer>
				<p>© 八谦律师事务所</p>
			</footer>

		</div>
	</div>
	<!-- Main Container end -->

	<script src="static/bootStrapFiles/js/jquery.js"></script>
	<script src="static/bootStrapFiles/js/bootstrap.min.js"></script>
	<script src="static/bootStrapFiles/js/jquery.scrollUp.js"></script>
	<script src="static/bootStrapFiles/js/jquery.dataTables.js"></script>
	<script src="static/commonJS/jquery.md5.js"></script>

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

		//Tooltip
		$('a').tooltip('hide');

		//Popover
		$('.popover-pop').popover('hide');

		//Dropdown
		$('.dropdown-toggle').dropdown();

		//Data Tables
		$(document).ready(function() {
			$('#data-table').dataTable({
				"sPaginationType" : "full_numbers"
			});
		});

		function changePage(page) {
			location.href = "userManage.do?currentPage=" + page;
		}

		function prevPage() {
			var currentPage = $("#currentPage").val() * 1;
			location.href = "userManage.do?currentPage=" + (currentPage - 1);
		}
		function nextPage() {
			var currentPage = $("#currentPage").val() * 1;
			location.href = "userManage.do?currentPage=" + (currentPage + 1);
		}
		function toPageIndex() {
			var pageStr = $("#toPageIndex").val();
			var maxPage = $("#maxPage").val() * 1;
			var vali = true;
			if (pageStr < 1) {
				var vali = false;
				alert("不能小于1");

			}
			if (pageStr > maxPage) {
				var vali = false;
				alert("不能大于最大页数");
			}
			if (vali == true) {
				location.href = "userManage.do?currentPage=" + pageStr;
			}

		}
		
		function loadmodal1() {
			$("#modaltoggle1").click();
			$("#userRole").empty();
			$.ajax({
				type : 'POST',
				url : 'roleDataList.do',
				dataType : 'json',
				success : function(data) {					
					for (var i = 0; i < data.length; i++) {
						 opt = '<option value="'+data[i].ROLE_ID+'">'
								+ data[i].ROLE_NAME + '</option>';
						$("#userRole").append(opt);
					}
				},
				error : function(data) {
					alert("用户组加载失败");
				}
			});
		}
		
		function checkAndSubmit(){
			var password = $("#password").val();
			var passwordConfirm = $("#passConfirm").val();
			var vali = true;
			if(password!=passwordConfirm){
				vali = false;
				document.getElementById("div_confirm").className="form-group has-error";
				document.getElementById("div_confirm").value="";
				document.getElementById("div_pass").className="form-group has-error";
				document.getElementById("div_pass").value="";
				alert("密码和确认密码不一致,请重新填写");			
			}
				$("#password").val($.md5(password))
				
			return vali;
		}
	</script>

</body>
</html>