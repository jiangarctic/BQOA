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
  <div class="row">
              <div class="col-lg-12 col-md-12">
                    <form class="form-horizontal row-border" action="#">
                      <div class="form-group">
                        <div class="col-md-10">
                          <div class="row">
                            <div class="col-xs-3">
                             <div class="input-group date form_date"
													data-date-format="yyyy年mm月dd日"
													data-link-field="dtp_input1">
													<input class="form-control" size="16" type="text" name="inquireTime"
														value="" required="required" placeholder="开始时间"> <span
														class="input-group-addon"><span
														class="glyphicon glyphicon-th"></span></span>
												</div>
                            </div>
                            <div class="col-xs-3">
                             <div class="input-group date form_date"
													data-date-format="yyyy年mm月dd日"
													data-link-field="dtp_input1">
													<input class="form-control" size="16" type="text" name="inquireTime"
														value="" required="required"  placeholder="结束时间"> <span
														class="input-group-addon"><span
														class="glyphicon glyphicon-th"></span></span>
												</div>
                            </div>
                            <div class="col-xs-5">
                              <input type="text" class="form-control" placeholder="按合同号">
                            </div>
                          </div>
                        </div>
                      </div>
					    <div class="form-group">
                        <div class="col-md-10">
                          <div class="row">
                            <div class="col-xs-3">
                              <input type="text" class="form-control" placeholder="按工作人员">
                            </div>
                            <div class="col-xs-3">
                              <input type="text" class="form-control" placeholder="按生成文件">
                            </div>
                            <div class="col-xs-5">
                              <input type="text" class="form-control" placeholder="按顾问单位">
                            </div>
                          </div>
                        </div>
						<button class="btn btn-primary btn-sm" type="button" >
                       查询<span class="fa fa-user"></span>
                      </button>
                      </div>
					  
                    </form>
					
              </div>
            </div>
						  
            <!-- Row Start -->
            <div class="row">
              <div class="col-lg-12 col-md-12">
                <div class="widget">
                  <div class="widget-header">
                    <div class="title">
                      文件归档：法律事务处理

                    </div>

                    <span class="tools">
						<span>当前显示：最近一个月</span>&nbsp;&nbsp;<button class="btn btn-primary btn-sm" type="button" >
                       导出<span class="fa fa-user"></span>
                      </button>
                    </span>

                  </div>
                  <div class="widget-body">
				  
                    <table class="table table-responsive table-striped table-bordered table-hover no-margin">
                      <thead>
                        <tr>
                          <th style="width:5%">
                            序号
                          </th>
                          <th style="width:40%">
                            文件名称
                          </th>
                          <th style="width:20%" class="hidden-xs">
                            咨询日期
                          </th>
                          <th style="width:10%" class="hidden-xs">
                            工作人员
                          </th>
                         <th style="width:10%" class="hidden-xs">
                            状态
                          </th>
                          <th style="width:15%" class="hidden-xs">
                            最后更新时间
                          </th>
                         
                        </tr>
                      </thead>
                      <tbody id="flswFilingtbody">
						<tr>
							<td colspan="6"><h3>正在加载数据， 请稍后...</h3></td>
						</tr>
                      </tbody>
                    </table>
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
		$(document).ready(function(){
			$.ajax({
				url:'showFlswclFiling.do',
				type:'POST',
				dataType:'json',
				success:function(data){
					rewriteTable(data);
				}
			});
		});
		function rewriteTable(data){
			var table = $("#flswFilingtbody");
			table.empty();
			if(data.length==0){
				table.append('<tr><td colspan="6"><h3>无数据</h3></td></tr>');
			}else{
				for(var i =0 ; i < data.length ; i++){
					table.append('<tr><td>'+(i+1)+'</td><td>'+data[i].genFileName+'</td><td>'+data[i].inquireTime+'</td><td>'+data[i].worker+'</td><td>'+data[i].status+'</td><td>'+data[i].finalUpdateTime1+'</td></tr>');
				}
			}
		}
		
	</script>
	
	<script>

	</script>


</body>
</html>