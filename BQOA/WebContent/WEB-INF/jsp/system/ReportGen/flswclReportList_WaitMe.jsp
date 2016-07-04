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
	<button type="button" id="modaltoggle2" data-toggle="modal"
		data-target="#myModal2" style="display: none"></button>
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
									<div class="title">法律事务处理意见-待我审批</div>
									<span class="tools">
										<button class="btn btn-primary btn-sm" type="button"
											onclick="javascript:toMe();">
											我的报表 <span class="fa fa-user"></span>
										</button>
										<button class="btn btn-primary btn-sm" type="button"
											disabled="disabled">
											待我审批 <span class="fa fa-check"></span>
										</button>
										<button class="btn btn-primary btn-sm" type="button"
											onclick="javascript:toHasApproved();"
											onclick="javascript:toWaitMe();">
											我已审批 <span class="fa fa-flag"></span>
										</button>
										<button class="btn btn-primary btn-sm" type="button"
											onclick="javascript:toAll();">
											查看全部 <span class="fa fa-eye"></span>
										</button>
									</span>
								</div>
								<div class="widget-body">
									<table class="table table-bordered no-margin">
										<thead>
											<tr>
												<th>序号</th>
												<th width="25%">公司名称</th>
												<th>合同编号</th>
												<th>工作人员</th>
												<th>生成时间</th>
												<th>状态</th>
												<th>生成文件</th>
												<th>操作</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="flsw" items="${flswclList }"
												varStatus="status">
												<tr>
													<td>${status.index+1 }</td>
													<td>${flsw.clientName }</td>
													<td><a href="showOneFlswclDetail.do?id=${flsw.id }">${flsw.reportNum }</a></td>
													<td>${flsw.worker }</td>
													<td>${flsw.genTime }</td>
													</a>
													<td><c:if test="${flsw.status=='新建' }">
															<span class="label label-info"> ${flsw.status} </span>
														</c:if> <c:if test="${flsw.status=='已审核' }">
															<span class="label label-success"> ${flsw.status}
															</span>
														</c:if></td>
													<td><a
														href="downloadFile.do?url=${flsw.genFileUrl }&oriName=${flsw.genFileName }">${flsw.genFileName }</a></td>
													<td><a href="javascript:showFlswDeail(${flsw.id })"><span
															class="fa fa-pencil-square">&nbsp;详情</span></a>&nbsp;&nbsp;<a
														href="javascript:updateUpdated(${flsw.id })"><span
															class="fa fa-times">&nbsp;上传修改版</span></a>&nbsp;&nbsp;<a
														href="javascript:turnToFinal(${flsw.id })"><span
															class="fa fa-times">&nbsp;转为最终版</span></a></td>
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

					<!-- Row Start -->
					<!-- Modal2 -->
					<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
									<h4 class="modal-title" id="myModalLabel">Modal title</h4>
								</div>
								<div class="modal-body">
									<form class="form-horizontal row-border" id="finalFileForm">
										<div class="form-group">
											<label class="col-md-2 control-label">附加文件</label>
											<div class="col-xs-4">
												<input type="file" name="file" id="upload" /> <span
													id="uploadedFileName"></span>
											</div>
										</div>
										<div class="form-group">
											<label class="col-md-2 control-label"></label>
											<div class="col-xs-4">
												<div class="progress">
													<div class="progress-bar" role="progressbar"
														aria-valuemin="0" aria-valuemax="100" style="width: 60%;"
														id="uploadProcessBar">
														<span id="uploadProcessing"></span>
													</div>
												</div>
											</div>
										</div>
										<input id="fileNameStore" style="display: none"
											name="suffixFileUrl" /> <input id="flswclId"
											style="display: none" name="id" /><input id="flag"
											style="display: none" name="flag" />
											
									</form>
								</div>
								<div class="modal-footer">

									<button type="button" class="btn btn-primary"
										onclick="javascript:submitFinalFile();">提交</button>
								</div>
							</div>
						</div>
					</div>


					<!-- Model2 End -->
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
	<script type="text/javascript" src="static/commonJS/ajaxupload.js"></script>
		<script>
		var processInterval = null;
		var process = 0;
		function process() {
			$.ajax({
						url : "uploadProcess",
						type : 'GET',
						dataType : 'html',
						success : function(html) {
							alert(html);
							document.getElementById("uploadProcessing").innerHTML = html
									+ "%";
							$("#uploadProcessBar").attr("style",
									"width:" + html + "%");
							process = html;
						}
					});
		}
		$(function() {
			document.getElementById("uploadProcessing").innerHTML = "";
			$("#uploadProcessBar").attr("style", "width:0%");
			new AjaxUpload(
					$('#upload'),
					{

						action : 'uploadFile',
						name : 'file',
						onSubmit : function(file, ext) {
							processInterval = setInterval(process, 50);

						},
						onComplete : function(file, response) {
							if (response == 'typeerror') {
								alert("只能上传word格式的文件");
								document.getElementById("uploadProcessing").innerHTML = "";
							} else {
								document.getElementById("uploadProcessing").innerHTML = "100%";
								clearInterval(processInterval);
								$("#uploadProcessBar").attr("style",
										"width:100%");
								var result = response.split(",");
								var oriName = result[0];
								var fileName = result[1];
								$("#fileNameStore").val(fileName);
								document.getElementById("uploadedFileName").innerHTML = oriName
										+ '   &nbsp;<span class="fa fa-times" onclick="javascript:cancelFile()"></span>';
							}

						}
					});
		});
		function cancelFile() {
			var fileName = $("#fileNameStore").val();
			$
					.ajax({
						data : 'fileUrl=' + fileName,
						url : 'deleteUploadedFile',
						dataType : 'json',
						type : 'post',
						success : function(data) {
							if (data.msg == 'success') {
								document.getElementById("uploadedFileName").innerHTML = "";
								$("#fileNameStore").val("");
								document.getElementById("uploadProcessing").innerHTML = "";
								$("#uploadProcessBar")
										.attr("style", "width:0%");
							} else {
								alert("删除文件失败");
							}
						}
					});
		}

		function submitFinalFile() {
			$("#flag").val("other");
			var formData = $("#finalFileForm").serialize();
			$.ajax({
				data : formData,
				dataType : 'json',
				type : 'POST',
				url : 'upluadFinalflswFile.do',
				success : function(data) {
					alert(data.msg);
					location.href="flswclReportList_HasApproved.do";
				}
			});
		}
	</script>
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

		function toAll() {
			location.href = "flswclReportList_All.do";
		}

		function toMe() {
			location.href = "flswclReportList_me.do";
		}
		function toHasApproved() {
			location.href = "flswclReportList_HasApproved.do";
		}
		function changePage(page) {
			location.href = "flswclReportList_WaitMe.do?currentPage=" + page;
		}

		function prevPage() {
			var currentPage = $("#currentPage").val() * 1;
			location.href = "flswclReportList_WaitMe?currentPage="
					+ (currentPage - 1);
		}
		function nextPage() {
			var currentPage = $("#currentPage").val() * 1;
			location.href = "flswclReportList_WaitMe?currentPage="
					+ (currentPage + 1);
		}
		function updateUpdated(id) {
			$("#modaltoggle2").click();
			$("#uploadProcessBar").attr("style",
			"width:0%");
			$("#flswclId").val(id);
			
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
		
		function turnToFinal(id){
			$.ajax({
				data : "id="+id+"&flag=pass",
				dataType : 'json',
				type : 'POST',
				url : 'upluadFinalflswFile.do',
				success : function(data) {
					alert(data.msg);
					location.href="flswclReportList_HasApproved.do";
				}
			});
		}
	</script>



</body>
</html>