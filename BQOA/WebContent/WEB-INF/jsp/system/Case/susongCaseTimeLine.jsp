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
          <div class="left-sidebar" style="width:50%;">
            
            <!-- Row Start -->
            <div class="row" style="height:900px">
              <div class="col-lg-12 col-md-12" style="height:900px">
                <div class="widget">
                  <div class="widget-header">
                    <div class="title">
                      案件进展情况
                    </div>
                  </div>
                  <div class="widget-body">
                    <!-- Timeline starts -->
                    <div class="timeline">
                      <div class="timeline-row">
                        <div class="timeline-time">
                          2016年3月1日<small>15:33</small>
                        </div>
                        <div class="timeline-icon">
                          <div class="danger-bg">
                            <i class="fa fa-pencil"></i>
                          </div>
                        </div>
                        <div class="panel timeline-content">
                          <div class="panel-body">
                            <h2 class="text-info"></h2>
                            <p>
                              收到《受理通知书》
                            </p>
                          </div>
                        </div>
                      </div>
                      <div class="timeline-row">
                        <div class="timeline-time">
                         2016年3月5日<small>12:33</small>
                        </div>
                        <div class="timeline-icon">
                          <div class="warning-bg">
                            <i class="fa fa-quote-right"></i>
                          </div>
                        </div>
                        <div class="panel timeline-content">
                          <div class="panel-body">
                            <p>
                              向昆明市中级人民法院申请诉前财产保全
                            </p>
                          </div>
                        </div>
                      </div>
                      <div class="timeline-row">
                        <div class="timeline-time">
                           2016年3月5日<small></small>
                        </div>
                        <div class="timeline-icon">
                          <div class="success-bg">
                            <i class="fa fa-dollar"></i>
                          </div>
                        </div>
                        <div class="panel timeline-content">
                          <div class="panel-body">
                            <h2 class="text-info"></h2>
                            <div class="row">
                              
                            <p>
                             法院针对财产保全作出《XXX裁定书》
                            </p>
                          </div>
                        </div>
                      </div>


					  </div>




                    </div>
                    <!-- Timeline ends -->
                  </div>
                </div>
              </div>
            </div>
            <!-- Row End -->

          </div>
          <!-- Left Sidebar End -->

          <!-- Right Sidebar Start -->
          <div class="right-sidebar" style="width:40%">
            
            <div class="wrapper">
              <div class="row" >
						<div class="col-lg-12 col-md-12">
							<div class="widget">
								<div class="widget-header">
									<div class="title">案件详情</div>
									<span class="tools">
									</span>
								</div>
								<div class="widget-body"  align="center">
									<table class="table table-bordered no-margin" style="margin-top:auto">
										<thead>
											<tr>
												<th width="30%"  style="text-align:center;">主管合伙人</th>
												<th colspan="3">邵钧</th>
											</tr>
											<tr>
												<th width="30%"  style="text-align:center;">案件负责人</th>
												<th colspan="3">邵钧</th>
											</tr>
											<tr>
												<th width="30%"  style="text-align:center;">业务承办人</th>
												<th colspan="3">叶攀</th>
											</tr>
											<tr>
												<th width="30%"  style="text-align:center;">案件名称</th>
												<th colspan="3">XX</th>
											</tr>
											<tr>
												<th width="30%"  style="text-align:center;">案件档案号</th>
												<th colspan="3">XX</th>
											</tr>
											<tr>
												<th width="30%"  style="text-align:center;">审理法院</th>
												<th colspan="3">XX</th>
											</tr>
											<tr>
												<th width="30%"  style="text-align:center;">案由</th>
												<th colspan="3">XX</th>
											</tr>
											<tr>
												<th width="30%"  style="text-align:center;">主审法官</th>
												<th colspan="3">XX</th>
											</tr>
											<tr>
												<th width="30%"  style="text-align:center;">审判员</th>
												<th colspan="3">XX</th>
											</tr>
											<tr>
												<th width="30%"  style="text-align:center;">书记员</th>
												<th colspan="3">XX</th>
											</tr>
											<tr>
												<th width="30%"  style="text-align:center;font-color:red;" >我方当事人</th>
												<th >XXX</th>
												<th >原告</th>
												<th >13888888888</th>
											</tr>
											<tr>
												<th width="30%"  style="text-align:center;font-color:red;" >对方当事人</th>
												<th >XXX</th>
												<th >被告</th>
												<th >13888888888</th>
											</tr>
<tr>
												<th width="30%"  style="text-align:center;">本案上诉期</th>
												<th colspan="3"></th>
											</tr>
											<tr>
												<th width="30%"  style="text-align:center;">本案答辩期</th>
												<th colspan="3"></th>
											</tr>
											<tr>
												<th width="30%"  style="text-align:center;">本案举证期</th>
												<th colspan="3"></th>
											</tr>
											<tr>
												<th width="30%"  style="text-align:center;">下次开庭时间</th>
												<th colspan="3">2016年6月5日</th>
											</tr>
										</thead>
									</table>
							</div>
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



	</script>

</body>
</html>