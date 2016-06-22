<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <title>八谦律师事务所</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <meta name="description" content="Blue Moon - Responsive Admin Dashboard" />
    <meta name="keywords" content="Notifications, Admin, Dashboard, Bootstrap3, Sass, transform, CSS3, HTML5, Web design, UI Design, Responsive Dashboard, Responsive Admin, Admin Theme, Best Admin UI, Bootstrap Theme, Wrapbootstrap, Bootstrap, bootstrap.gallery" />
    <meta name="author" content="Bootstrap Gallery" />
    <link rel="shortcut icon" href="img/favicon.ico">
    
    <link href="static/bootStrapFiles/css/bootstrap.min.css" rel="stylesheet">

    <link href="static/bootStrapFiles/css/new.css" rel="stylesheet">
    <!-- Important. For Theming change primary-color variable in main.css  -->

    <link href="static/bootStrapFiles/fonts/font-awesome.min.css" rel="stylesheet">

    <!-- HTML5 shiv and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
	<c:set var="currentMain_Menu" value="办公" />
	<c:set var="currentSub_Menu" value="法律事务报表" />
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
                      法律事务处理记录列表
                    </div>
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
						<c:forEach var="flsw" items="${flswclList }" varStatus="status">
							<tr>
								<td>${status.index+1 }</td>
								<td>${flsw.clientName }</td>
								<td><a href="showOneFlswclDetail.do?id=${flsw.id }" >${flsw.reportNum }</a></td>
								<td>${flsw.worker }</td>
								<td>${flsw.genTime }</td></a>								
								<td><c:if test="${flsw.status=='新建' }"><span class="label label-info">
                              ${flsw.status}
                            </span></c:if><c:if test="${flsw.status=='已审核' }"><span class="label label-success">
                              ${flsw.status}
                            </span></c:if></td>
								<td><a href="downloadFile.do?url=${flsw.genFileUrl }&oriName=${flsw.genFileName }">${flsw.genFileName }</a></td>
								<td><a href="showOneFlswclDetail.do?id=${flsw.id }"><span class="fa fa-pencil-square">&nbsp;详情</span></a>&nbsp;&nbsp;<a href="#"><span class="fa fa-times">&nbsp;删除</span></a></td>
							</tr>
						</c:forEach>
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

            <!-- Row Start -->
            
            <!-- Row End -->            

          </div>
          <!-- Left Sidebar End -->

          <!-- Right Sidebar Start -->
          <div class="right-sidebar">
            <div class="wrapper">
              <table class="table table-condensed table-striped table-bordered table-hover no-margin">
                <thead>
                  <tr>
                    <th style="width:10%">
                      <input type="checkbox" class="no-margin" />
                    </th>
                    <th style="width:70%">
                      Name
                    </th>
                    <th style="width:20%">
                      Status
                    </th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td>
                      <input type="checkbox" class="no-margin" />
                    </td>
                    <td>
                      <span class="name">
                        Mahendra Singh Dhoni
                      </span>
                    </td>
                    <td>
                      <span class="label label-info">
                        New
                      </span>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <input type="checkbox" class="no-margin" />
                    </td>
                    <td>
                      <span class="name">
                        Michel Clark
                      </span>
                    </td>
                    <td>
                      <span class="label label-success">
                        New
                      </span>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <input type="checkbox" class="no-margin" />
                    </td>
                    <td>
                      <span class="name">
                        Rahul Dravid
                      </span>
                    </td>
                    <td>
                      <span class="label label-warning">
                        New
                      </span>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <input type="checkbox" class="no-margin" />
                    </td>
                    <td>
                      <span class="name">
                        Anthony Michell
                      </span>
                    </td>
                    <td>
                      <span class="label label-info">
                        New
                      </span>
                    </td>
                  </tr>
                  <tr>
                    <td>
                      <input type="checkbox" class="no-margin" />
                    </td>
                    <td>
                      <span class="name">
                        Srinu Baswa
                      </span>
                    </td>
                    <td>
                      <span class="label label-success">
                        New
                      </span>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
            
            <hr class="hr-stylish-1">
            
            <div class="wrapper">
              <div class="btn-toolbar no-margin">
                <div class="btn-group">
                  <a href="#" class="btn btn-success">
                    <i class="fa fa-headphones">
                    </i>
                  </a>
                  <a href="#" class="btn btn-warning">
                    <i class="fa fa-thumbs-down">
                    </i>
                  </a>
                  <a href="#" class="btn btn-danger">
                    <i class="fa fa-signal">
                    </i>
                  </a>
                  <a href="#" class="btn btn-info">
                    <i class="fa fa-share">
                    </i>
                  </a>
                </div>
                <div class="btn-group">
                  <a href="#" class="btn btn-default">
                    <i class="fa fa-leaf"></i>
                  </a>
                </div>
              </div>
            </div>
            
            <hr class="hr-stylish-1">
            
            <div class="wrapper">
              <table class="table table-condensed table-striped table-bordered table-hover no-margin">
                <thead>
                  <tr>
                    <th style="width:10%">
                      <input type="checkbox" class="no-margin" />
                    </th>
                    <th style="width:70%">
                      Name
                    </th>
                    <th style="width:20%">
                      Status
                    </th>
                  </tr>
                </thead>
                <tbody>
                  <tr class="success">
                    <td>
                      <input type="checkbox" class="no-margin" />
                    </td>
                    <td>
                      <span class="name">
                        Mahendra Singh Dhoni
                      </span>
                    </td>
                    <td>
                      <span class="label label-info">
                        New
                      </span>
                    </td>
                  </tr>
                  <tr class="error">
                    <td>
                      <input type="checkbox" class="no-margin" />
                    </td>
                    <td>
                      <span class="name">
                        Michel Clark
                      </span>
                    </td>
                    <td>
                      <span class="label label-success">
                        New
                      </span>
                    </td>
                  </tr>
                  <tr class="success">
                    <td>
                      <input type="checkbox" class="no-margin" />
                    </td>
                    <td>
                      <span class="name">
                        Rahul Dravid
                      </span>
                    </td>
                    <td>
                      <span class="label label-warning">
                        New
                      </span>
                    </td>
                  </tr>
                  <tr class="warning">
                    <td>
                      <input type="checkbox" class="no-margin" />
                    </td>
                    <td>
                      <span class="name">
                        Anthony Michell
                      </span>
                    </td>
                    <td>
                      <span class="label label-info">
                        New
                      </span>
                    </td>
                  </tr>
                  <tr class="info">
                    <td>
                      <input type="checkbox" class="no-margin" />
                    </td>
                    <td>
                      <span class="name">
                        Srinu Baswa
                      </span>
                    </td>
                    <td>
                      <span class="label label-success">
                        New
                      </span>
                    </td>
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
      $(function () {
        $.scrollUp({
          scrollName: 'scrollUp', // Element ID
          topDistance: '300', // Distance from top before showing element (px)
          topSpeed: 300, // Speed back to top (ms)
          animation: 'fade', // Fade, slide, none
          animationInSpeed: 400, // Animation in speed (ms)
          animationOutSpeed: 400, // Animation out speed (ms)
          scrollText: 'Top', // Text for element
          activeOverlay: false, // Set CSS color to display scrollUp active point, e.g '#00FFFF'
        });
      });

      //Tooltip
      $('a').tooltip('hide');

      //Popover
      $('.popover-pop').popover('hide');

      //Dropdown
      $('.dropdown-toggle').dropdown();

      //Data Tables
      $(document).ready(function () {
        $('#data-table').dataTable({
          "sPaginationType": "full_numbers"
        });
      });

      	function downloadFile(fileUrl){
      		alert(fileName);
      	}
      
    </script>

  </body>
</html>