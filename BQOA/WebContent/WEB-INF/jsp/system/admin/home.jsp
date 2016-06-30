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
                            Send flowers to Sandy 
                            <span class="date">Due Feb 14</span>
                          </label>
                        </li>
                        <li class="process">
                          <input type="checkbox" id="2" checked/>
                          <label for="2">
                            Coffee with Karan
                            <span class="date">Done Jan 28</span>
                          </label>
                        </li>
                        <li class="completed">
                          <input type="checkbox" id="3" checked />
                          <label for="3">
                            Be creative
                            <span class="date">Due Feb 2</span>
                          </label>
                        </li>
                        <li class="completed">
                          <input type="checkbox" id="4" />
                          <label for="4">
                            Buy new iPad
                            <span class="date">Due Feb 7</span>
                          </label>
                        </li>
                        <li class="process">
                          <input type="checkbox" id="5" checked/>
                          <label for="5">
                            Pay credit card bill
                            <span class="date">Completed Jan 29</span>
                          </label>
                        </li>
                        <li class="new">
                          <input type="checkbox" id="6" />
                          <label for="6">
                            Take a photograph 
                            <span class="date">Due Jan 30</span>
                          </label>
                        </li>
                        <li class="process">
                          <input type="checkbox" id="8">
                          <label for="2">
                            Have tea with the Queen
                            <span class="date">Completed Jan 18</span>
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
                          9:30
                        </small>
                        <p class="message">
                          Meeting with Jason
                        </p>
                      </div>
                    </li>
                    <li class="activity-list info">
                      <div class="detail-info">
                        <small class="text-muted">
                          Mon, 9 Feb
                        </small>
                        <p class="message">
                          Created
                          <a class="text-info" href="" data-original-title="" title="">
                            Task
                          </a>
                          for Willams.
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
                                  Kelly
                                </a>
                                <span class="date-time">
                                  at Feb 8, 2013 04:21
                                </span>
                                <span class="body">
                                  Beard stumptown, cardigans banh mi lomo thundercats. whatever keytar, scenester farm-to-table banksy Austin twitter handle freegan cred raw denim single-origin coffee viral.
                                </span>
                              </div>
                            </li>
                            <li class="out">
                              <img class="avatar" alt="" src="static/bootStrapFiles/img/profile.jpg">
                              <div class="message">
                                <span class="arrow">
                                </span>
                                <a href="#" class="name">
                                  Hehe
                                </a>
                                <span class="date-time">
                                  at Jan 29, 2013 08:10
                                </span>
                                <span class="body">
                                  Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Reprehenderit butcher retro keffiyeh dreamcatcher synth terry richardsoAustin. Nesciunt tofu stumptown aliqua, retro synth master cleanse.
                                </span>
                              </div>
                            </li>
                            <li class="in">
                              <img class="avatar" alt="" src="static/bootStrapFiles/img/profile.jpg">
                              <div class="message">
                                <span class="arrow">
                                </span>
                                <a href="#" class="name">
                                  Bulley
                                </a>
                                <span class="date-time">
                                  at jan 14, 2013 06:43
                                </span>
                                <span class="body">
                                  Tight pants next level keffiyeh you probably haven't heard of fixie sustainable quinoa 8-bit american apparel have a terry richardson vinyl chambray. Beard stumptown, cardigans banh mi lomo thundercats.
                                </span>
                              </div>
                            </li>
                            <li class="out">
                              <img class="avatar" alt="" src="static/bootStrapFiles/img/profile.jpg">
                              <div class="message">
                                <span class="arrow">
                                </span>
                                <a href="#" class="name">
                                  Batman
                                </a>
                                <span class="date-time">
                                  at Jan 09, 2013 01:19
                                </span>
                                <span class="body">
                                  Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. 
                                </span>
                              </div>
                            </li>
                            <li class="in">
                              <img class="avatar" alt="" src="static/bootStrapFiles/img/profile.jpg">
                              <div class="message">
                                <span class="arrow">
                                </span>
                                <a href="#" class="name">
                                  Ganggyy
                                </a>
                                <span class="date-time">
                                  at Jan 03, 2013 09:09
                                </span>
                                <span class="body">
                                  Enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. 
                                </span>
                              </div>
                            </li>
                            <li class="out">
                              <img class="avatar" alt="" src="static/bootStrapFiles/img/profile.jpg">
                              <div class="message">
                                <span class="arrow">
                                </span>
                                <a href="#" class="name">
                                  Cowboy
                                </a>
                                <span class="date-time">
                                  at Jan 01, 2013 07:49
                                </span>
                                <span class="body">
                                  Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. 
                                </span>
                              </div>
                            </li>
                            <li class="in">
                              <img class="avatar" alt="" src="static/bootStrapFiles/img/profile.jpg">
                              <div class="message">
                                <span class="arrow">
                                </span>
                                <a href="#" class="name">
                                  Cockoo
                                </a>
                                <span class="date-time">
                                  at Dec 28, 2012 02:39
                                </span>
                                <span class="body">
                                  Dnim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch.Enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Anim pariatur cliche reprehenderit,  
                                </span>
                              </div>
                            </li>
                            <li class="out">
                              <img class="avatar" alt="" src="static/bootStrapFiles/img/profile.jpg">
                              <div class="message">
                                <span class="arrow">
                                </span>
                                <a href="#" class="name">
                                  Batman
                                </a>
                                <span class="date-time">
                                  at Jan 09, 2013 01:19
                                </span>
                                <span class="body">
                                  Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. 
                                </span>
                              </div>
                            </li>
                            <li class="in">
                              <img class="avatar" alt="" src="static/bootStrapFiles/img/profile.jpg">
                              <div class="message">
                                <span class="arrow">
                                </span>
                                <a href="#" class="name">
                                  Ganggyy
                                </a>
                                <span class="date-time">
                                  at Jan 03, 2013 09:09
                                </span>
                                <span class="body">
                                  Enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. 
                                </span>
                              </div>
                            </li>
                            <li class="out">
                              <img class="avatar" alt="" src="static/bootStrapFiles/img/profile.jpg">
                              <div class="message">
                                <span class="arrow">
                                </span>
                                <a href="#" class="name">
                                  Cowboy
                                </a>
                                <span class="date-time">
                                  at Jan 01, 2013 07:49
                                </span>
                                <span class="body">
                                  Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. 
                                </span>
                              </div>
                            </li>
                            <li class="in">
                              <img class="avatar" alt="" src="static/bootStrapFiles/img/profile.jpg">
                              <div class="message">
                                <span class="arrow">
                                </span>
                                <a href="#" class="name">
                                  Cockoo
                                </a>
                                <span class="date-time">
                                  at Dec 28, 2012 02:39
                                </span>
                                <span class="body">
                                  Dnim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch.Enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Anim pariatur cliche reprehenderit,  
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
          <div class="right-sidebar" style="width:30%">
            
            
            
            <div class="wrapper">
              <div id="scrollbar">
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
                    <div class="featured-articles-container">
                      <h5 class="heading">
                        团队公告
                      </h5>
                      <div class="articles">
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Hosting Made For WordPress
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Reinvent cutting-edge
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          partnerships models 24/7
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Eyeballs frictionless
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Empower deliver innovate
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Portals technologies
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Collaborative innovate
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Mashups experiences plug
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Portals technologies
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Collaborative innovate
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Mashups experiences plug
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          B2B plug and play
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Need some interesting
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Portals technologies
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Collaborative innovate
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Portals technologies
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Collaborative innovate
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Mashups experiences plug
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          B2B plug and play
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Need some interesting
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Portals technologies
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Collaborative innovate
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Mashups experiences plug
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Need some interesting
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Portals technologies
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Collaborative innovate
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Mashups experiences plug
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          B2B plug and play
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Need some interesting
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Portals technologies
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Collaborative innovate
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Portals technologies
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Collaborative innovate
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Mashups experiences plug
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          B2B plug and play
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Need some interesting
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Portals technologies
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Collaborative innovate
                        </a>
                        <a href="#">
                          <span class="label-bullet">
                            &nbsp;
                          </span>
                          Mashups experiences plug
                        </a>
                      </div>
                      
                    </div>
                    
                  </div>
                </div>
              </div>
            </div>
            
            <hr class="hr-stylish-1">
            
            <div class="wrapper">
              <div id="scrollbar-two">
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
                    <div class="featured-articles-container">
                      <h5 class="heading-blue">
                        通讯录
                      </h5>

                      <div class="widget-body"  align="center">
									<table class="table table-bordered no-margin" style="margin-top:auto">
										<thead>
											<tr>
												<th width="50%"  style="text-align:center;">邵钧</th>
												<th ><div class="btn-group " >
                              <button data-toggle="dropdown" class="btn btn-default btn-xs dropdown-toggle">
                                发送消息
                                <span class="caret">
                                </span>
                              </button>
                              <ul class="dropdown-menu pull-right">
                                <li>
                                  <a href="#">站内信</a>
                                </li>
                                <li>
                                  <a href="#">即时消息</a>
                                </li>
                              </ul>
                            </div></th>
											</tr>
											<tr>
												<th  style="text-align:center;">徐博</th>
												<th><div class="btn-group " >
                              <button data-toggle="dropdown" class="btn btn-default btn-xs dropdown-toggle">
                                发送消息
                                <span class="caret">
                                </span>
                              </button>
                              <ul class="dropdown-menu pull-right">
                                <li>
                                  <a href="#">站内信</a>
                                </li>
                                <li>
                                  <a href="#">即时消息</a>
                                </li>
                              </ul>
                            </div></th>
											</tr>
											<tr>
												<th  style="text-align:center;">叶攀</th>
												<th><div class="btn-group " >
                              <button data-toggle="dropdown" class="btn btn-default btn-xs dropdown-toggle">
                                发送消息
                                <span class="caret">
                                </span>
                              </button>
                              <ul class="dropdown-menu pull-right">
                                <li>
                                  <a href="#">站内信</a>
                                </li>
                                <li>
                                  <a href="#">即时消息</a>
                                </li>
                              </ul>
                            </div></th>
											</tr>
											<tr>
												<th style="text-align:center;">张玮频</th>
												<th><div class="btn-group " >
                              <button data-toggle="dropdown" class="btn btn-default btn-xs dropdown-toggle">
                                发送消息
                                <span class="caret">
                                </span>
                              </button>
                              <ul class="dropdown-menu pull-right">
                                <li>
                                  <a href="#">站内信</a>
                                </li>
                                <li>
                                  <a href="#">即时消息</a>
                                </li>
                              </ul>
                            </div></th>
											</tr>
											<tr>
												<th  style="text-align:center;">杨燕</th>
												<th><div class="btn-group " >
                              <button data-toggle="dropdown" class="btn btn-default btn-xs dropdown-toggle">
                                发送消息
                                <span class="caret">
                                </span>
                              </button>
                              <ul class="dropdown-menu pull-right">
                                <li>
                                  <a href="#">站内信</a>
                                </li>
                                <li>
                                  <a href="#">即时消息</a>
                                </li>
                              </ul>
                            </div></th>
											</tr>
											<tr>
												<th  style="text-align:center;">审理法院</th>
												<th>XX</th>
											</tr>
											<tr>
												<th  style="text-align:center;">案由</th>
												<th >XX</th>
											</tr>

										</thead>
									</table>
							</div>
                    </div>
                    
                  </div>
                </div>
              </div>
            </div>
          </div>
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