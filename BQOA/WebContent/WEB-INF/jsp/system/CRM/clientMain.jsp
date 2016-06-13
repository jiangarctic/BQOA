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
    <!-- Important. For Theming change primary-color variable in main.css  -->

    <link href="static/bootStrapFiles/fonts/font-awesome.min.css" rel="stylesheet">

    <!-- HTML5 shiv and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
    <link href="static/commonJS/datePicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
    <!--  <link href="static/commonJS/datePicker/css/bootstrap-datetimepicker.css" rel="stylesheet" media="screen">-->

  </head>

  <body>
<c:set var="currentMain_Menu" value="客户关系" />
<c:set var="currentSub_Menu" value="客户列表" />
    <!-- Header Start -->
    <%@ include file="/WEB-INF/jsp/system/admin/homeHeader.jsp" %>
    <!-- Header End -->

    <!-- Main Container start -->
    <div class="dashboard-container">

      <div class="container">
        <!-- Top Nav Start -->
         <%@ include file="/WEB-INF/jsp/system/admin/Menus.jsp" %>
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
                    <div class="title">
                     企业 客户列表
                    </div>
                    <span class="tools">
                      <i class="fa fa-cogs"></i>
                    </span>
                  </div>
                  <div class="widget-body">
                    <table class="table table-responsive table-striped table-bordered table-hover no-margin">
                      <thead>
                        <tr>
                          <th style="width:5%">
                            <input type="checkbox" class="no-margin" />
                          </th>
                          <th style="width:20%">
                            客户名称
                          </th>
                          <th style="width:20%" class="hidden-xs">
                            客户地址
                          </th>
                       <th style="width:10%" class="hidden-xs">
                            客户地址1
                          </th>
                           <th style="width:10%" class="hidden-xs">
                            客户地址2
                          </th>

                          <th style="width:10%" class="hidden-xs">
                            状态
                          </th>
                          <th style="width:15%" class="hidden-xs">
                            Date
                          </th>
                          <th style="width:15%" class="hidden-xs">
                            Actions
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
                            Baswa #567
                          </td>
                          <td>
                            <span class="label label-info">
                              New
                            </span>
                          </td>
                          <td>
                            15 - 02 - 2013
                          </td>
                          <td class="hidden-xs">
                            <div class="btn-group">
                              <button data-toggle="dropdown" class="btn btn-default btn-xs dropdown-toggle">
                                Action 
                                <span class="caret"></span>
                              </button>
                              <ul class="dropdown-menu pull-right">
                                <li>
                                  <a href="#">Edit</a>
                                </li>
                                <li>
                                  <a href="#">Delete</a>
                                </li>
                              </ul>
                            </div>
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
                            Baswa #224
                          </td>
                          <td>
                            <span class="label label-success">
                              New
                            </span>
                          </td>
                          <td>
                            10 - 02 - 2013
                          </td>
                          <td class="hidden-xs">
                            <div class="btn-group ">
                              <button data-toggle="dropdown" class="btn btn-default btn-xs dropdown-toggle">
                                Action 
                                <span class="caret"></span>
                              </button>
                              <ul class="dropdown-menu pull-right">
                                <li>
                                  <a href="#">Edit</a>
                                </li>
                                <li>
                                  <a href="#">Delete</a>
                                </li>
                              </ul>
                            </div>
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
                            Baswa #342
                          </td>
                          <td>
                            <span class="label label-danger">
                              New
                            </span>
                          </td>
                          <td>
                            14 - 02 - 2013
                          </td>
                          <td class="hidden-xs">
                            <div class="btn-group ">
                              <button data-toggle="dropdown" class="btn btn-default btn-xs dropdown-toggle">
                                Action 
                                <span class="caret">
                                </span>
                              </button>
                              <ul class="dropdown-menu pull-right">
                                <li>
                                  <a href="#">
                                    Edit
                                  </a>
                                </li>
                                <li>
                                  <a href="#">
                                    Delete
                                  </a>
                                </li>
                              </ul>
                            </div>
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
                            Baswa #3021
                          </td>
                          <td>
                            <span class="label label-info">
                              New
                            </span>
                          </td>
                          <td>
                            19 - 02 - 2013
                          </td>
                          <td class="hidden-xs">
                            <div class="btn-group ">
                              <button data-toggle="dropdown" class="btn btn-default btn-xs dropdown-toggle">
                                Action 
                                <span class="caret">
                                </span>
                              </button>
                              <ul class="dropdown-menu pull-right">
                                <li>
                                  <a href="#">
                                    Edit
                                  </a>
                                </li>
                                <li>
                                  <a href="#">
                                    Delete
                                  </a>
                                </li>
                              </ul>
                            </div>
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
                            Baswa #771
                          </td>
                          <td>
                            <span class="label label-success">
                              New
                            </span>
                          </td>
                          <td>
                            12 - 02 - 2013
                          </td>
                          <td class="hidden-xs">
                            <div class="btn-group ">
                              <button data-toggle="dropdown" class="btn btn-default btn-xs dropdown-toggle">
                                Action 
                                <span class="caret">
                                </span>
                              </button>
                              <ul class="dropdown-menu pull-right">
                                <li>
                                  <a href="#">Edit</a>
                                </li>
                                <li>
                                  <a href="#">Delete</a>
                                </li>
                              </ul>
                            </div>
                          </td>
                        </tr>
                      </tbody>
                    </table>
                   <div class="widget-body clearfix" align="right">
					<ul class="pagination no-margin">
                      <li class="disabled"><a href="#">«</a></li>
                      <li class="active"><a href="#">1 </a></li>
                      <li><a href="#">2</a></li>
                      <li><a href="#">3</a></li>
                      <li><a href="#">4</a></li>
                      <li><a href="#">5</a></li>
                      <li><a href="#">»</a></li>
                   </ul>
				   </div>
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
   
            
            <hr class="hr-stylish-1">
            
            <div class="wrapper">
              <div class="btn-toolbar no-margin">
              
                <button class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                      添加客户 +
                    </button>
              </div>
            </div>
            
            <hr class="hr-stylish-1">
                    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                      <div class="modal-dialog">
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                            <h4 class="modal-title" id="myModalLabel">添加客户</h4>
                          </div>
                          <div class="modal-body">
                                        <div class="row">
              <div class="col-lg-12 col-md-12">
                <div class="widget">
                  <div class="widget-header">
                    <div class="title">
                      客户信息 
                      <span class="mini-title">
                         <a id="create-account">t</a>
                      </span>
                    </div>
                  </div>
                  <div class="widget-body">
                    <form class="form-horizontal no-margin" id="ClientInfoForm">
                      <div class="form-group">
                        <label for="userName" class="col-sm-2 control-label">客户姓名</label>
                        <div class="col-sm-10">
                          <input type="text" class="form-control" id="userName" placeholder="客户姓名" name="clientName">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="emailId" class="col-sm-2 control-label">客户地址</label>
                        <div class="col-sm-10">
                          <input type="email" class="form-control" id="emailId" placeholder="客户地址" name="clientAddress">
                        </div>
                      </div>
                         <div class="form-group">
                        <label for="country" class="col-sm-2 control-label">客户类型</label>
                        <div class="col-sm-10">
                          <select id="country" class="form-control" name="clientType">
                            <option value="person">
                             	个人客户
                            </option>
                            <option value="com">
                              企业客户
                            </option>
                            <option value="other">
                              其他
                            </option>

                          </select>
                        </div>
                      </div>
                       <div class="form-group">
                        <label for="emailId" class="col-sm-2 control-label">联系人</label>
                        <div class="col-sm-10">
                          <input type="email" class="form-control" id="emailId" placeholder="联系人" name="clientContactor">
                        </div>
                      </div>
                       <div class="form-group">
                        <label for="emailId" class="col-sm-2 control-label">联系电话</label>
                        <div class="col-sm-10">
                          <input type="email" class="form-control" id="emailId" placeholder="电话" name="clientPhone">
                        </div>
                      </div>
                         <div class="form-group">
                        <label for="emailId" class="col-sm-2 control-label">开始时间</label>
                        <div class="col-sm-10">
					<div class="input-group date form_date col-md-5" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
                    <input class="form-control" size="16" type="text" value="" readonly>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
					<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
				<input type="hidden" id="dtp_input2" value="" /><br/>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="pwd" class="col-sm-2 control-label">时间</label>
                        <div class="col-sm-10">
                          <div class="row">
                            <div class="col-md-4 col-sm-4 col-xs-4">
                              <select id="DateOfBirthMonth" class="form-control" name="Month">
                                <option value="01">
                                  一月
                                </option>
                                <option value="02">
                                  二月
                                </option>
                                <option value="03">
                                     三月
                                </option>
                                <option value="04">
                                  四月
                                </option>
                                <option value="05">
                                  五月
                                </option>
                                <option value="06">
                                     六月
                                </option>
                                
                               <option value="07">
                                  七月
                                </option>
                                <option value="08">
                                  八月
                                </option>
                                <option value="09">
                                     九月
                                </option>
                                
                               <option value="10">
                                  十月
                                </option>
                                <option value="11">
                                  十一月
                                </option>
                                <option value="12">
                                    十二月
                                </option>
                                

                              </select>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-4">
                              <select name="DateOfBirth_Day"  class="form-control" name="day">
                                <option value="1">
                                  1
                                </option>
                                <option value="2">
                                  2
                                </option>
                                <option value="3">
                                  3
                                </option>
                                <option value="4">
                                  4
                                </option>
                                <option value="5">
                                  5
                                </option>
                                <option value="6">
                                  6
                                </option>
                                <option value="7">
                                  7
                                </option>
                                <option value="8">
                                  8
                                </option>
                                <option value="9">
                                  9
                                </option>
                                <option value="10">
                                  10
                                </option>
                              </select>
                            </div>
                            <div class="col-md-4 col-sm-4 col-xs-4">
                              <select name="DateOfBirth_Year" class="form-control" name="year">
                                <option value="2019">
                                  2019
                                </option>
                                <option value="2018">
                                  2018
                                </option>
                                <option value="2017">
                                  2017
                                </option>
                                <option value="2016">
                                  2016
                                </option>
                                <option value="2006">
                                  2015
                                </option>
                                <option value="2005">
                                  2014
                                </option>
                              </select>
                            </div>
                          </div>
                        </div>
                      </div>

                    </form>
                  </div>
                </div>
              </div>
            </div>
                          </div>
                          <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                            <button type="button" class="btn btn-primary" onclick="javascript:checkAndSubmitForm();">保存</button>
                          </div>
                        </div>
                      </div>
                    </div>
            
          </div>
          <!-- Right Sidebar End -->

        </div>
        <!-- Dashboard Wrapper End -->

        <footer>
          <p></p>
        </footer>

      </div>
    </div>
    <!-- Main Container end -->

    <script src="static/bootStrapFiles/js/jquery.js"></script>
    <script src="static/bootStrapFiles/js/bootstrap.min.js"></script>
    <script src="static/bootStrapFiles/js/jquery.scrollUp.js"></script>
    <script src="static/bootStrapFiles/js/jquery.dataTables.js"></script>
    
   <script type="text/javascript" src="static/commonJS/datePicker/jquery/jquery-1.8.3.min.js" charset="UTF-8"></script>
   <script type="text/javascript" src="static/commonJS/datePicker/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>    
<script type="text/javascript" src="static/commonJS/datePicker/js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>

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
      
      function checkAndSubmitForm(){
    	  var formData = $("#ClientInfoForm").serialize();
    		$.ajax({
    			data:formData,
    			type:"POST",
    			dataType:'json',
    			url:'saveClient',
    			success:function(data){
    				
    			},
    			error:function(data){
    				
    			}
    		});
      }

    </script>
    

<script type="text/javascript">
    $('.form_datetime').datetimepicker({
        //language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		forceParse: 0,
        showMeridian: 1
    });
	$('.form_date').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		minView: 2,
		forceParse: 0
    });
	$('.form_time').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 1,
		minView: 0,
		maxView: 1,
		forceParse: 0
    });
</script>

  </body>
</html>