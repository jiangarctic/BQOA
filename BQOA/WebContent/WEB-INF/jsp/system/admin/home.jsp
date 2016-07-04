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
    <link rel="shortcut icon" href="static/bootStrapFiles/img/favicon.ico">
    
    <link href="static/bootStrapFiles/css/bootstrap.min.css" rel="stylesheet">
    <link href="static/bootStrapFiles/css/new.css" rel="stylesheet"> 
    <link href="static/bootStrapFiles/css/charts-graphs.css" rel="stylesheet">
    <!-- Datepicker CSS -->
    <link rel="stylesheet" type="text/css" href="static/bootStrapFiles/css/datepicker.css">

    <link href="static/bootStrapFiles/fonts/font-awesome.min.css" rel="stylesheet">

    <!-- HTML5 shiv and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
<c:set var="currentMain_Menu" value="首页" />
<c:set var="currentSub_Menu" value="工作台" />

    <!-- Header Start -->
	<%@ include file="homeHeader.jsp" %>
    <!-- Header End -->

    <!-- Main Container start -->
    <div class="dashboard-container">

      <div class="container">
        <!-- Top Nav Start -->
       <%@ include file="Menus.jsp" %>
        <!-- Sub Nav End -->

        <!-- Dashboard Wrapper Start -->
         <div class="dashboard-wrapper">
          
          <!-- Left Sidebar Start -->
          <div class="left-sidebar" style="width:65%">
            
            <!-- Row Start -->
             <div class="row">
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="widget">
                  <div class="widget-header">
                    <div class="title">
                      最新消息
					 
                    </div>
					 &nbsp;&nbsp;&nbsp;<span>共3条</span> &nbsp;&nbsp;&nbsp;<span>More+</span>
                  </div>
                  <div class="widget-body" style="height:300px;overflow:auto;">
                    <div class="alert alert-block alert-warning fade in">
                      <button data-dismiss="alert" class="close" type="button">
                        ×
                      </button>
                      <p>
                        <strong style="font-size: 16px;">案件进度- </strong> XXX合同纠纷案已更新进度，最新进度为：已进行第一次开庭
                      </p>
                    </div>
                    <div class="alert alert-block alert-success fade in">
                      <button data-dismiss="alert" class="close" type="button">
                        ×
                      </button>
                      <p>
                        <strong style="font-size: 16px;">个人事项- </strong> 您有新个人事项：2016年6月29日下午2:00在办公室会见当事人XXX
                      </p>
                    </div>
                    
                    <div class="alert alert-block alert-info fade in no-margin">
                      <button data-dismiss="alert" class="close" type="button">
                        ×
                      </button>
                      <p>
                        <strong style="font-size: 16px;">到期提醒- </strong>顾问单位"XXXXX公司"顾问期即将在2016年7月1日到期（还有3天）
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- Row End -->

            <!-- Row Start -->
            <!-- Row End -->

            <!-- Row Start -->
            <div class="row"  >
              <div class="col-lg-12 col-md-12">
                <div class="widget"  >
                  <div class="widget-header">
                    <div class="title">
                     站内信 
                      <span class="mini-title"><a id="mailbox">博悦</a></span>
                    </div>
                    <div class="tools pull-right">
                      <div class="btn-group">
                        <a class="btn btn-default btn-sm">
                          <i class="fa fa-mail-forward" data-original-title="Forward">
                          </i>
                        </a>
                        <a class="btn btn-default btn-sm">
                          <i class="fa fa-exclamation-circle" data-original-title="Report">
                          </i>
                        </a>
                        <a class="btn btn-default btn-sm">
                          <i class="fa fa-trash-o" data-original-title="Delete">
                          </i>
                        </a>
                      </div>
                      <div class="btn-group">
                        <a class="btn btn-default btn-sm">
                          <i class="fa fa-folder-o"  data-original-title="Move to">
                          </i>
                        </a>
                        <a class="btn btn-default btn-sm">
                          <i class="fa fa-tag" data-original-title="Tag">
                          </i>
                        </a>
                      </div>
                      <div class="btn-group">
                        <a class="btn btn-default btn-sm">
                          <i class="fa fa-chevron-left" data-original-title="Prev">
                          </i>
                        </a>
                        <a class="btn btn-default btn-sm btn-info" >
                          <i class="fa fa-chevron-right" data-original-title="Next">
                          </i>
                        </a>
                      </div>
                    </div>
                  </div>
                  <div class="widget-body" >
                    <div class="mail table-responsive" style="height:200px;overflow:auto">
                      <table class="table table-condensed table-striped table-hover no-margin">
                        <thead>
                          <tr>
                            <th style="width:3%">
                              <input type="checkbox" class="no-margin">
                            </th>
                            <th style="width:17%">
                             发送人
                            </th>
                            <th style="width:55%" class="hidden-phone">
                              主题
                            </th>
                            <th style="width:12%" class="right-align-text hidden-phone">
                              状态
                            </th>
                            <th style="width:12%" class="right-align-text hidden-phone">
                              时间
                            </th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td>
                              <input type="checkbox" class="no-margin">
                            </td>
                            <td>
                             杨燕
                            </td>
                            <td class="hidden-phone">
                              <a style="cursor:pointer;"><strong>
                               法律事务处理结果
                              </strong></a> 
                              <small class="info-fade">
                                
                              </small>
                            </td>
                            <td class="right-align-text hidden-phone">
                              <span class="label label-info">
                                未读
                              </span>
                            </td>
                            <td class="right-align-text hidden-phone">
                              2016 05 23
                            </td>
                          </tr>
                          <tr>
                            <td>
                              <input type="checkbox" class="no-margin">
                            </td>
                            <td>
                              高黎
                            </td>
                            <td class="hidden-phone">
                              <strong>
                                酒店预订事项
                              </strong>
                              <small class="info-fade">
                               
                              </small>
                            </td>
                            <td class="right-align-text hidden-phone">
                              <span class="label label-success">
                                未读
                              </span>
                            </td>
                            <td class="right-align-text hidden-phone">
                              2016 05 24
                            </td>
                          </tr>
                         
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- Row End -->

            <!-- Row Start -->
            <div class="row">
              <div class="col-lg-6 col-md-6">
                <div class="widget">
                  <div class="widget-header">
                    <div class="title">
                      个人事项
                    </div>
                    <span class="tools">
                      <i class="fa fa-cogs"></i>
                    </span>
                  </div>
                  <div class="widget-body">
                    <div class="todo-container" style="height:300px;overflow:auto">
                      <ul class="todo-list">
                        <li class="new">
                          <input type="checkbox" id="1" />
                          <label for="1">
                            全国律师协会培训 胜利堂
                            <span class="date">2016 06 30 9：00</span>
                          </label>
                        </li>
                        <li class="process">
                          <input type="checkbox" id="2" checked/>
                          <label for="2">
                            昆明市房协培训
                            <span class="date">2016 06 28 14：00</span>
                          </label>
                        </li>
                        <li class="completed">
                          <input type="checkbox" id="3" checked />
                          <label for="3">
                           欣都龙城递送材料
                            <span class="date">2016 06 28 9：00</span>
                          </label>
                        </li>

                      </ul>
                    </div>
                  </div>
                </div>
              </div>
              
              <div class="col-lg-5 col-md-6 col-sm-8 col-xs-12">
              <div class="widget">
                <div class="widget-header">
                  <div class="title">
                    待办案件
                  </div>
                </div>
                <div class="widget-body" style="height:300px;overflow:auto">
                  <ul class="project-activity">
                    <li class="activity-list warning">
                      <div class="detail-info">
                        <small class="text-muted">
                          2016 05 24 
                        </small>
                        <p class="message">
                         XX合同纠纷 
                        </p>
                      </div>
                    </li>
                    <li class="activity-list info">
                      <div class="detail-info">
                        <small class="text-muted">
                         2016 05 15
                        </small>
                        <p class="message">
                          关于XXX劳动合同纠纷
                        </p>
                      </div>
                    </li>
                    <li class="activity-list success">
                      <div class="detail-info">
                        <small class="text-muted">
                          Fri, 13 Feb
                        </small>
                        <p class="message">
                          Show demo to team
                        </p>
                      </div>
                    </li>
                    <li class="activity-list">
                      <div class="detail-info">
                        <small class="text-muted">
                          Sun, 21 Feb
                        </small>
                        <p class="message">
                          Watch football
                          <a class="text-info" href="" data-original-title="" title="">
                            Match
                          </a>
                          with Xoimi.
                        </p>
                      </div>
                    </li>
                    <li class="activity-list warning">
                      <div class="detail-info">
                        <small class="text-muted">
                          Wed, 25 Feb
                        </small>
                        <p class="message">
                          Launch new mobile <a class="text-warning" href="" data-original-title="" title="">App</a>.
                        </p>
                      </div>
                    </li>
                  </ul>				  
                </div>
              </div>
            </div>
            </div>
            <!-- Row End -->

            <!-- Row Start -->
            <div class="row">
              <div class="col-lg-12 col-md-12">
                <div class="widget">
                  <div class="widget-header">
                    <div class="title">
                      团队微博
                    </div>
                    <span class="tools">
                      <i class="fa fa-cogs"></i>
                    </span>
                  </div>
                  <div class="widget-body">
                    <div id="scrollbar-three">
                      <div class="scrollbar">
                        <div class="track">
                          <div class="thumb">
                            <div class="end">
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="viewport">
                        <div class="overview">
                          <ul class="chats">
                            <li class="in">
                              <img class="avatar" alt="" src="static/bootStrapFiles/img/profile.jpg">
                              <div class="message">
                                <span class="arrow">
                                </span>
                                <a href="#" class="name">
                                  杨燕
                                </a>
                                <span class="date-time">
                                  2016 05 23 12:20
                                </span>
                                <span class="body">
                                  看见一本不错的法律书籍，叫《完美的合同》，大家有时间看看
                                </span>
                              </div>
                            </li>
                            <li class="out">
                              <img class="avatar" alt="" src="static/bootStrapFiles/img/profile.jpg">
                              <div class="message">
                                <span class="arrow">
                                </span>
                                <a href="#" class="name">
                                  邵钧
                                </a>
                                <span class="date-time">
                                  2016 05 24 09:32
                                </span>
                                <span class="body">
                                  本周六团队活动，初步定为曲靖
                                </span>
                              </div>
                            </li>
                            <li class="in">
                              <img class="avatar" alt="" src="static/bootStrapFiles/img/profile.jpg">
                              <div class="message">
                                <span class="arrow">
                                </span>
                                <a href="#" class="name">
                                 邵钧
                                </a>
                                <span class="date-time">
                                  2016 05 23 16：32
                                </span>
                                <span class="body">
                                 明天早上我要开会，可能晚来一会
                                </span>
                              </div>
                            </li>
                            
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- Row End -->

            <!-- Row Start -->
           
            <!-- Row End -->

          </div>
          <!-- Left Sidebar End -->

          <!-- Right Sidebar Start -->
        	<%@ include file="rightSideBar.jsp" %>
          <!-- Right Sidebar End -->
        </div>
        <!-- Dashboard Wrapper End -->

        <footer>
          <p>© BlueMoon 2013-15</p>
        </footer>

      </div>
    </div>
    <!-- Main Container end -->

    
    <script src="static/bootStrapFiles/js/wysi/wysihtml5-0.3.0.min.js"></script>
    <script src="static/bootStrapFiles/js/jquery.js"></script>
    <script src="static/bootStrapFiles/js/bootstrap.min.js"></script>
    <script src="static/bootStrapFiles/js/wysi/bootstrap3-wysihtml5.js"></script>
    <script src="static/bootStrapFiles/js/jquery.scrollUp.js"></script>
    
    
    
    <!-- Sparkline JS -->
    <script src="static/bootStrapFiles/js/sparkline.js"></script>
    
    <!-- Tiny Scrollbar JS -->
    <script src="static/bootStrapFiles/js/tiny-scrollbar.js"></script>
    
    <!-- Custom JS -->
    <script src="static/bootStrapFiles/js/menu.js"></script>
    <script src="static/bootStrapFiles/js/custom.js"></script>
    
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
      $('i').tooltip('hide');

      //Tiny Scrollbar
      $('#scrollbar').tinyscrollbar();
      $('#scrollbar-one').tinyscrollbar();
      $('#scrollbar-two').tinyscrollbar();
      $('#scrollbar-three').tinyscrollbar();

      //Tabs
      $('#myTab a').click(function (e) {
        e.preventDefault();
        $(this).tab('show');
      })


    </script>

  </body>
</html>