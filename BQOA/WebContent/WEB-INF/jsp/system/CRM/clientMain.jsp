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
                          <th style="width:40%">
                            客户名称
                          </th>
                          <th style="width:20%" class="hidden-xs">
                            客户地址
                          </th>
                          <th style="width:10%" class="hidden-xs">
                            状态
                          </th>
                          <th style="width:15%" class="hidden-xs">
                            Date
                          </th>
                          <th style="width:10%" class="hidden-xs">
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
            <div class="row">
              <div class="col-lg-12 col-md-12">
                <div class="widget">
                  <div class="widget-header">
                    <div class="title">
                     个人客户列表
                    </div>
                  </div>
                  <div class="widget-body">
                    <table class="table table-condensed no-margin">
                      <thead>
                        <tr>
                          <th>#</th>
                          <th>First Name</th>
                          <th>Last Name</th>
                          <th>Username</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>1</td>
                          <td>Mark</td>
                          <td>Otto</td>
                          <td>@mdo</td>
                        </tr>
                        <tr>
                          <td>2</td>
                          <td>Jacob</td>
                          <td>Thornton</td>
                          <td>@fat</td>
                        </tr>
                        <tr>
                          <td>3</td>
                          <td colspan="2">Larry the Bird</td>
                          <td>@twitter</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
            <!-- Row End -->

            <!-- Row Start -->
            <div class="row">
              <div class="col-lg-12 col-md-12">
                <div class="widget no-margin">
                  <div class="widget-header">
                    <div class="title">
                      其他类型客户列表
                    </div>
                  </div>
                  <div class="widget-body">
                    <table class="table no-margin">
                      <thead>
                        <tr>
                          <th>#</th>
                          <th>Column heading</th>
                          <th>Column heading</th>
                          <th>Column heading</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr class="active">
                          <td>1</td>
                          <td>Column content</td>
                          <td>Column content</td>
                          <td>Column content</td>
                        </tr>
                        <tr>
                          <td>2</td>
                          <td>Column content</td>
                          <td>Column content</td>
                          <td>Column content</td>
                        </tr>
                        <tr class="success">
                          <td>3</td>
                          <td>Column content</td>
                          <td>Column content</td>
                          <td>Column content</td>
                        </tr>
                        <tr>
                          <td>4</td>
                          <td>Column content</td>
                          <td>Column content</td>
                          <td>Column content</td>
                        </tr>
                        <tr class="info">
                          <td>5</td>
                          <td>Column content</td>
                          <td>Column content</td>
                          <td>Column content</td>
                        </tr>
                        <tr>
                          <td>6</td>
                          <td>Column content</td>
                          <td>Column content</td>
                          <td>Column content</td>
                        </tr>
                        <tr class="warning">
                          <td>7</td>
                          <td>Column content</td>
                          <td>Column content</td>
                          <td>Column content</td>
                        </tr>
                        <tr>
                          <td>8</td>
                          <td>Column content</td>
                          <td>Column content</td>
                          <td>Column content</td>
                        </tr>
                        <tr class="danger">
                          <td>9</td>
                          <td>Column content</td>
                          <td>Column content</td>
                          <td>Column content</td>
                        </tr>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
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
          <p>© BlueMoon 2013-14</p>
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

    </script>

  </body>
</html>