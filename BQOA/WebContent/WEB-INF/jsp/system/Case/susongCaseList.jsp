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
	<c:set var="currentMain_Menu" value="案件管理" />
	<c:set var="currentSub_Menu" value="诉讼管理" />
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

					<!-- Row End -->

					<!-- Row Start -->

					<!-- Row End -->

					<!-- Row Start -->
					<div class="row">
						<div class="col-lg-12 col-md-12">
							<div class="widget">
								<div class="widget-header">
									<div class="title">我的法律事务处理意见表</div>
									<span class="tools">
										<button class="btn btn-primary btn-sm" type="button"
											disabled="disabled">
											我的报表 <span class="fa fa-user"></span>
										</button>
										<button class="btn btn-primary btn-sm" type="button"
											onclick="javascript:toWaitMe();">
											待我审批 <span class="fa fa-check"></span>
										</button>
										<button class="btn btn-primary btn-sm" type="button"
											onclick="javascript:toHasApproved();"
											onclick="javascript:toWaitMe();">
											我已审批 <span class="fa fa-flag"></span>
										</button>
										<button class="btn btn-primary btn-sm" type="button"
											onclick="toAll();">
											查看全部 <span class="fa fa-eye"></span>
										</button>
									</span>
								</div>
								<div class="widget-body">
									<table class="table table-bordered no-margin">
										<thead>
											<tr>
												<th>序号</th>
												<th width="30%">案件名称</th>
												<th>负责人</th>
												<th>承办人</th>
												<th>审理法院</th>
												<th>当事人</th>
												<th>最新状态</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody>
												<tr>
													<td>1</td>
													<td>XX合同纠纷</td>
													<td>邵钧</td>
													<td>邵钧</td>
													<td>昆明市中级人民法院</td>
													
													<td>XX</td>
													<td>XX</td>
													<td><a href="javascript:showCaseDetail()"><span
															class="fa fa-pencil-square">&nbsp;详情</span></a>&nbsp;&nbsp;<a
														href="javascript:deleteFlsw(${flsw.id })"><span
															class="fa fa-times">&nbsp;删除</span></a></td>
												</tr>
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

			</div>
			<!-- Left Sidebar End -->

			<!-- Right Sidebar Start -->
<%@ include file="/WEB-INF/jsp/system/admin/rightSideBar.jsp" %>
			<!-- Right Sidebar End -->

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
		function toWaitMe() {
			location.href = "flswclReportList_WaitMe.do";
		}
		function toAll() {
			location.href = "flswclReportList_All.do";
		}
		function changePage(page) {
			location.href = "flswclReportList_me.do?currentPage=" + page;
		}

		function prevPage() {
			var currentPage = $("#currentPage").val() * 1;
			location.href = "flswclReportList_me?currentPage="
					+ (currentPage - 1);
		}
		function nextPage() {
			var currentPage = $("#currentPage").val() * 1;
			location.href = "flswclReportList_me?currentPage="
					+ (currentPage + 1);
		}
		function toHasApproved() {
			location.href = "flswclReportList_HasApproved.do";
		}

 function showCaseDetail(){
	 location.href="showSusongFlow.do";
 }
	</script>

</body>
</html>