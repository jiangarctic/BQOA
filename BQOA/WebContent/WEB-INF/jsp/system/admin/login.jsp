<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en" class="no-js">

    <head>

        <meta charset="utf-8">
        <title>八谦律师事务所</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
        <link rel="stylesheet" href="static/bootStrapFiles/login/assets/css/reset.css">
        <link rel="stylesheet" href="static/bootStrapFiles/login/assets/css/supersized.css">
        <link rel="stylesheet" href="static/bootStrapFiles/login/assets/css/style.css">

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

    </head>

    <body>

        <div class="page-container">
            <h2>欢迎使用</h2>
            <br>
            <div id="errInfo" style="color:red"></div>
            <form action="xxx.ac" method="post" id="loginForm">
                <input type="text" id="username" name="username" class="username" placeholder="用户名/邮箱/手机">
                <input type="password" id="password" name="password" class="password" placeholder="密码">
                <input type="Captcha" id="secCode" class="Captcha" name="secCode" placeholder="验证码">
               <div  style="float: left;padding-left:8%;padding-top:9%;"><img style="height:32px;" id="codeImg" alt="点击更换" title="点击更换" src="" /></div>
						
                <button type="button" class="submit_button" onclick="checkAndLogin()">登录</button>
                <div class="error"><span>+</span></div>
            </form>
            <br><br><br>
            <div>
            	八谦律师事务所不动产投资事务部
            </div>

        </div>
		
        <!-- Javascript -->
        <script src="static/bootStrapFiles/login/assets/js/jquery-1.8.2.min.js" ></script>
        <script src="static/bootStrapFiles/login/assets/js/supersized.3.2.7.min.js" ></script>
        <script src="static/bootStrapFiles/login/assets/js/supersized-init.js" ></script>
		<script src="static/bootStrapFiles/login/assets/js/login.js"></script>
		<script src="static/commonJS/jquery.md5.js"></script>
    </body>

</html>



