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
    <link href="static/bootStrapFiles/css/pricing.css" rel="stylesheet">

    <link href="static/bootStrapFiles/fonts/font-awesome.min.css" rel="stylesheet">

    <!-- HTML5 shiv and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>
	<c:set var="currentMain_Menu" value="办公" />
	<c:set var="currentSub_Menu" value="生成报告" />
    <!-- Header Start -->
   
    <!-- Header End -->

    <!-- Main Container start -->
    <div class="dashboard-container">

      <div class="container">
        <!-- Top Nav Start -->
        <%@ include file="/WEB-INF/jsp/system/admin/homeHeader.jsp"%>
        <!-- Top Nav End -->

        <!-- Sub Nav End -->
        <%@ include file="/WEB-INF/jsp/system/admin/Menus.jsp"%>
        <!-- Sub Nav End -->

        <!-- Dashboard Wrapper Start -->
        <div class="dashboard-wrapper-lg">
          <div class="cd-pricing-container cd-full-width cd-secondary-theme">
            <div class="cd-pricing-switcher clearfix">
              <p class="fieldset pull-right">
                <input type="radio" name="duration" value="monthly" id="monthly" checked>
                <label for="monthly">壹</label>
                <input type="radio" name="duration" value="yearly" id="yearly">
                <label for="yearly">贰</label>
                <span class="cd-switch"></span>
              </p>
            </div> <!-- .cd-pricing-switcher -->

            <ul class="cd-pricing-list cd-bounce-invert">
              <li>
                <ul class="cd-pricing-wrapper">
                  <li data-type="monthly" class="is-visible">
                    <header class="cd-pricing-header">
                      <h2>诉讼业务报表</h2>

                      <div class="cd-price">
                        <span class="cd-currency"></span>
                        <span class="cd-value"></span>
                        <span class="cd-duration"></span>
                      </div>
                    </header> <!-- .cd-pricing-header -->

                    <div class="cd-pricing-body">
                      <ul class="cd-pricing-features">
                        <li><em>256MB</em> Memory</li>
                        <li><em>1</em> User</li>
                        <li><em>1</em> Website</li>
                        <li><em>1</em> Domain</li>
                        <li><em>Unlimited</em> Bandwidth</li>
                        <li><em>24/7</em> Support</li>
                      </ul>
                    </div> <!-- .cd-pricing-body -->

                    <footer class="cd-pricing-footer">
                      <a class="cd-select" href="#">Select</a>
                    </footer> <!-- .cd-pricing-footer -->
                  </li>

                  <li data-type="yearly" class="is-hidden">
                    <header class="cd-pricing-header">
                      <h2>Basic</h2>

                      <div class="cd-price">
                        <span class="cd-currency">$</span>
                        <span class="cd-value">250</span>
                        <span class="cd-duration">yr</span>
                      </div>
                    </header> <!-- .cd-pricing-header -->

                    <div class="cd-pricing-body">
                      <ul class="cd-pricing-features">
                        <li><em>256MB</em> Memory</li>
                        <li><em>1</em> User</li>
                        <li><em>1</em> Website</li>
                        <li><em>1</em> Domain</li>
                        <li><em>Unlimited</em> Bandwidth</li>
                        <li><em>24/7</em> Support</li>
                      </ul>
                    </div> <!-- .cd-pricing-body -->

                    <footer class="cd-pricing-footer">
                      <a class="cd-select" href="#">Select</a>
                    </footer> <!-- .cd-pricing-footer -->
                  </li>
                </ul> <!-- .cd-pricing-wrapper -->
              </li>

              <li class="cd-popular">
                <ul class="cd-pricing-wrapper">
                  <li data-type="monthly" class="is-visible">
                    <header class="cd-pricing-header">
                      <h2>Popular</h2>

                      <div class="cd-price">
                        <span class="cd-currency">$</span>
                        <span class="cd-value">50</span>
                        <span class="cd-duration">mo</span>
                      </div>
                    </header> <!-- .cd-pricing-header -->

                    <div class="cd-pricing-body">
                      <ul class="cd-pricing-features">
                        <li><em>512MB</em> Memory</li>
                        <li><em>3</em> Users</li>
                        <li><em>5</em> Websites</li>
                        <li><em>7</em> Domains</li>
                        <li><em>Unlimited</em> Bandwidth</li>
                        <li><em>24/7</em> Support</li>
                      </ul>
                    </div> <!-- .cd-pricing-body -->

                    <footer class="cd-pricing-footer">
                      <a class="cd-select" href="#">Select</a>
                    </footer> <!-- .cd-pricing-footer -->
                  </li>

                  <li data-type="yearly" class="is-hidden">
                    <header class="cd-pricing-header">
                      <h2>Popular</h2>

                      <div class="cd-price">
                        <span class="cd-currency">$</span>
                        <span class="cd-value">550</span>
                        <span class="cd-duration">yr</span>
                      </div>
                    </header> <!-- .cd-pricing-header -->

                    <div class="cd-pricing-body">
                      <ul class="cd-pricing-features">
                        <li><em>512MB</em> Memory</li>
                        <li><em>3</em> Users</li>
                        <li><em>5</em> Websites</li>
                        <li><em>7</em> Domains</li>
                        <li><em>Unlimited</em> Bandwidth</li>
                        <li><em>24/7</em> Support</li>
                      </ul>
                    </div> <!-- .cd-pricing-body -->

                    <footer class="cd-pricing-footer">
                      <a class="cd-select" href="#">Select</a>
                    </footer> <!-- .cd-pricing-footer -->
                  </li>
                </ul>
              </li> <!-- .cd-pricing-wrapper -->

              <li>
                <ul class="cd-pricing-wrapper">
                  <li data-type="monthly" class="is-visible">
                    <header class="cd-pricing-header">
                      <h2>Premier</h2>

                      <div class="cd-price">
                        <span class="cd-currency">$</span>
                        <span class="cd-value">75</span>
                        <span class="cd-duration">mo</span>
                      </div>
                    </header> <!-- .cd-pricing-header -->

                    <div class="cd-pricing-body">
                      <ul class="cd-pricing-features">
                        <li><em>1024MB</em> Memory</li>
                        <li><em>5</em> Users</li>
                        <li><em>10</em> Websites</li>
                        <li><em>10</em> Domains</li>
                        <li><em>Unlimited</em> Bandwidth</li>
                        <li><em>24/7</em> Support</li>
                      </ul>
                    </div> <!-- .cd-pricing-body -->

                    <footer class="cd-pricing-footer">
                      <a class="cd-select" href="#">Select</a>
                    </footer> <!-- .cd-pricing-footer -->
                  </li>

                  <li data-type="yearly" class="is-hidden">
                    <header class="cd-pricing-header">
                      <h2>Premier</h2>

                      <div class="cd-price">
                        <span class="cd-currency">$</span>
                        <span class="cd-value">900</span>
                        <span class="cd-duration">yr</span>
                      </div>
                    </header> <!-- .cd-pricing-header -->

                    <div class="cd-pricing-body">
                      <ul class="cd-pricing-features">
                        <li><em>1024MB</em> Memory</li>
                        <li><em>5</em> Users</li>
                        <li><em>10</em> Websites</li>
                        <li><em>10</em> Domains</li>
                        <li><em>Unlimited</em> Bandwidth</li>
                        <li><em>24/7</em> Support</li>
                      </ul>
                    </div> <!-- .cd-pricing-body -->

                    <footer class="cd-pricing-footer">
                      <a class="cd-select" href="#">Select</a>
                    </footer> <!-- .cd-pricing-footer -->
                  </li>
                </ul> <!-- .cd-pricing-wrapper -->
              </li>
            </ul> <!-- .cd-pricing-list -->
          </div> <!-- .cd-pricing-container -->

        </div>
        					<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
						aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog" style="width: 45%">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										id="modal_close" aria-hidden="true">&times;</button>

								</div>
								<div class="modal-body">
									<div class="row">
										<div class="col-lg-12 col-md-12">
											<div class="widget">
												<div class="widget-header">
													<div class="title">
														法律事务处理记录-预设信息<span class="mini-title"> <a
															id="create-account"></a>
														</span>
													</div>
												</div>
												<div class="widget-body">
													<form class="form-horizontal no-margin" id="ClientInfoForm"
														action="">
														<div class="form-group">
															<label for="waitClient" class="col-sm-2 control-label">客户名称：</label>
															<div class="col-sm-10">
																<select id="waitClient" class="form-control">

																</select>
															</div>
														</div>
														<div class="form-group">
															<label for="emailId" class="col-sm-2 control-label">咨询方式</label>
															<div class="col-sm-10">
																<div class="col-sm-10">
																	<select id="inquireType" class="form-control">
																		<option value="面谈">现场</option>
																		<option value="面谈">电话</option>
																	</select>
																</div>
															</div>
														</div>
														<div class="form-group">
															<div class="col-sm-offset-2 col-sm-10">
																<button type="button" class="btn btn-info"
																	onclick="javascript:loadmodal2();">下一步</button>
																&nbsp;&nbsp;
																<button type="button" id="close_Modal1"
																	class="btn btn-default" data-dismiss="modal">关闭</button>
															</div>

														</div>


													</form>
												</div>
											</div>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
        <!-- Dashboard Wrapper End -->

        <footer>
          <p>八谦律师事务所</p>
        </footer>

      </div>
    </div>
    <!-- Main Container end -->

    <script src="static/bootStrapFiles/js/jquery.js"></script>
    <script src="static/bootStrapFiles/js/bootstrap.min.js"></script>
    <script src="static/bootStrapFiles/js/jquery.scrollUp.js"></script>

    <script src="static/bootStrapFiles/js/modernizr.js"></script>
    <script src="static/bootStrapFiles/js/pricing.js"></script>
    
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
		var map = {};
		function loadmodal1() {
			$("#modaltoggle1").click();
			$("#waitClient").empty();
			$.ajax({
				type : 'POST',
				url : 'clientListData.do',
				dataType : 'json',
				success : function(data) {
					for (var i = 0; i < data.length; i++) {
						var opt = '<option value="'+data[i].clientName+'">'
								+ data[i].clientName + '</option>';
						$("#waitClient").append(opt);
						map[data[i].clientName] = data[i].shortName;
					}
				},
				error : function(data) {
					alert("客户加载失败");
				}
			});
		}
		function loadmodal2() {
			var clientName = $("#waitClient").val();
			var type = $("#inquireType").val();
			var shortName = map[clientName];
			var date = new Date();
			var time = date.toLocaleString();
			var fullyear = date.getFullYear() + "";
			var year = fullyear.substring(2, 4);
			var mon = date.getMonth() + 1;
			var day = date.getDate();
			if (day < 10) {
				day = "0" + day;
			}
			if (mon < 10) {
				mon = "0" + mon;
			}
			var reportNum = shortName + year + mon + day + "H";
			$("#close_Modal1").trigger("click");
			location.href="newFlswclPage.do?clientName="+clientName+"&reportNum="+reportNum+"&inquireType="+type;
		}
		

    </script>

  </body>
</html>