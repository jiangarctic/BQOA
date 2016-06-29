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
	<c:set var="currentMain_Menu" value="办公" />
	<c:set var="currentSub_Menu" value="法律事务报表" />
	<input id="currentPage" style="display: none" value="${currentPage }" />
	<input id="maxPage" style="display: none" value="${maxPage }" />
	<!-- Header Start -->
	<%@ include file="/WEB-INF/jsp/system/admin/homeHeader.jsp"%>
	<!-- Header End -->
	<button type="button" id="modaltoggle1" data-toggle="modal"
		data-target="#myModal" style="display: none"></button>
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
					<div class="row" style="padding-bottom: 15px;">
						<div class="col-xs-2">
							<input type="text" class="form-control" placeholder="客户名称查找" id="search_clientName">
						</div>
						<div class="col-xs-2">
							<input type="text" class="form-control" placeholder="工作人员查找" id="search_worker">
						</div>
						<button class="btn btn-primary" type="button" onclick="queryByCond();">
							查找 <span class="fa fa-search"></span>
						</button>
					</div>
					<!-- Row Start -->

					<!-- Row End -->

					<!-- Row Start -->

					<!-- Row End -->

					<!-- Row Start -->
					<div class="row">
						<div class="col-lg-12 col-md-12">
							<div class="widget">
								<div class="widget-header">
									<div class="title">法律事务处理意见-全部报表</div>
									<span class="tools">
										<button class="btn btn-primary btn-sm" type="button"
											onclick="javascript:toMe();">
											我的报表 <span class="fa fa-user"></span>
										</button>
										<button class="btn btn-primary btn-sm" type="button"
											onclick="javascript:toWaitMe();">
											待我审批 <span class="fa fa-check"></span>
										</button>
										<button class="btn btn-primary btn-sm" type="button" onclick="javascript:toHasApproved();"
											onclick="javascript:toWaitMe();">
											 我已审批 <span class="fa fa-flag"></span>
										</button>
										<button class="btn btn-primary btn-sm" type="button"
											disabled="disabled">
											查看全部 <span class="fa fa-eye"></span>
										</button>
									</span>
								</div>
								<div class="widget-body">
									<table class="table table-bordered no-margin">
										<thead>
											<tr>
												<th>序号</th>
												<th width="30%">公司名称</th>
												<th>合同编号</th>
												<th>工作人员</th>
												<th>生成时间</th>
												<th>状态</th>
												<th>生成文件</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody>
										<c:if test="${QX.R_AUTH==1 }">
										<c:if test="${empty flswclList}">
										<tr><td colspan="8"><h3>暂无数据</h3></td></tr>
										</c:if>
											<c:forEach var="flsw" items="${flswclList }"
												varStatus="status">
												<tr>
													<td>${status.index+1 }</td>
													<td>${flsw.clientName }</td>
													<td><a href="showOneFlswclDetail.do?id=${flsw.id }">${flsw.reportNum }</a></td>
													<td>${flsw.worker }</td>
													<td>${flsw.genTime }</td>
													<td><c:if test="${flsw.status=='新建' }">
															<span class="label label-info"> ${flsw.status} </span>
														</c:if> <c:if test="${flsw.status!='新建' }">
															<span class="label label-success"> ${flsw.status}
															</span>
														</c:if></td>
													<td><a
														href="downloadFile.do?url=${flsw.genFileUrl }&oriName=${flsw.genFileName }">${flsw.genFileName }</a></td>
													<td><a href="javascript:showFlswDeail(${flsw.id })"><span
															class="fa fa-pencil-square">&nbsp;详情</span></a>&nbsp;&nbsp;<a
														href="#"><span class="fa fa-times">&nbsp;删除</span></a></td>
												</tr>
											</c:forEach>
											</c:if>
											<c:if test="${QX.R_AUTH==0 }">
												<tr><td colspan="8"><h3>您当前用户组无权查看</h3></td></tr>
											</c:if>
										</tbody>
									</table>
									<c:if test="${QX.R_AUTH==1 }">
										<div class="widget-body clearfix" align="right">${page}</div>
									</c:if>
									
								</div>
							</div>
						</div>
					</div>
					<!-- Row End -->

					<!-- Row Start -->
					<!-- Modal -->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
									<h4 class="modal-title" id="myModalLabel">操作记录</h4>
								</div>
								<div class="modal-body">
									<div class="widget-body">

										<table
											class="table table-responsive table-striped table-bordered table-hover no-margin">
											<thead>
												<tr>
													<th style="width: 5%">序号</th>
													<th style="width: 15%">操作人</th>
													<th style="width: 20%" class="hidden-xs">时间</th>
													<th style="width: 40%" class="hidden-xs">文件</th>
												</tr>
											</thead>
											<tbody id="flswclStatustbody">

											</tbody>
										</table>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- Modal -->
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

			</div>
			<!-- Dashboard Wrapper End -->

			<footer>
				<p>© 八谦律师十事务所</p>
			</footer>

		</div>
	</div>
	<!-- Main Container end -->

	<script src="static/bootStrapFiles/js/jquery.js"></script>
	<script src="static/bootStrapFiles/js/bootstrap.min.js"></script>
	<script src="static/bootStrapFiles/js/jquery.scrollUp.js"></script>
	<script src="static/bootStrapFiles/js/jquery.dataTables.js"></script>

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

		function downloadFile(fileUrl) {
			alert(fileName);
		}
		function toMe() {
			location.href = "flswclReportList_me.do";
		}
		function toWaitMe() {
			location.href = "flswclReportList_WaitMe.do";
		}
		function toHasApproved(){
			location.href="flswclReportList_HasApproved.do";
		}
		function changePage(page) {
			location.href = "flswclReportList_All.do?currentPage=" + page;
		}

		function prevPage() {
			var currentPage = $("#currentPage").val() * 1;
			location.href = "flswclReportList_All?currentPage="
					+ (currentPage - 1);
		}
		function nextPage() {
			var currentPage = $("#currentPage").val() * 1;
			location.href = "flswclReportList_All?currentPage="
					+ (currentPage + 1);
		}
		function queryByCond(){
			var clientName = $("#search_clientName").val();
			var worker = $("#search_worker").val();
			var queryCon = clientName+"_"+worker;
			location.href = "flswclReportList_All?queryCon=1&query_clientName="+clientName+"&query_worker="+worker;
		}
		function showFlswDeail(id) {
			$("#flswclStatustbody").empty();
			$.ajax({
				data : 'id=' + id,
				url : "getFlswclStatusById.do",
				dataType : 'json',
				type : 'POST',
				success : function(data) {
					var tr = '';
					for (var i = 0; i < data.length; i++) {
						tr = '<tr><td>' + (i + 1) + '</td><td>'
								+ data[i].handler + '</td><td>'
								+ data[i].genTime
								+ '</td><td><a href="downloadFile.do?url='
								+ data[i].genFileUrl + '&oriName='
								+ data[i].genFileName + '" >'
								+ data[i].genFileName + '</a></td></tr>';
						$("#flswclStatustbody").append(tr);
					}
				}
			});
			$("#modaltoggle1").click();

		}
	</script>

</body>
</html>