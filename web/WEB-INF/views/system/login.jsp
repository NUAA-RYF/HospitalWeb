<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <title>Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <base href="../">
        <!-- Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,400' rel='stylesheet' type='text/css'>
        <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900' rel='stylesheet' type='text/css'>
        <!-- CSS Libs -->
        <link rel="stylesheet" type="text/css" href="resources/admin/bootstrap/lib/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="resources/admin/bootstrap/lib/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="resources/admin/bootstrap/lib/css/animate.min.css">
        <link rel="stylesheet" type="text/css" href="resources/admin/bootstrap/lib/css/bootstrap-switch.min.css">
        <link rel="stylesheet" type="text/css" href="resources/admin/bootstrap/lib/css/checkbox3.min.css">
        <link rel="stylesheet" type="text/css" href="resources/admin/bootstrap/lib/css/jquery.dataTables.min.css">
        <link rel="stylesheet" type="text/css" href="resources/admin/bootstrap/lib/css/dataTables.bootstrap.css">
        <link rel="stylesheet" type="text/css" href="resources/admin/bootstrap/lib/css/select2.min.css">
        <!-- CSS App -->
        <link rel="stylesheet" type="text/css" href="resources/admin/bootstrap/css/style.css">
        <link rel="stylesheet" type="text/css" href="resources/admin/bootstrap/css/themes/flat-blue.css">
    </head>

    <body class="flat-blue login-page">
        <div class="container">
            <div class="login-box">
                <div>
                    <div class="login-form row">
                        <div class="col-sm-12 text-center login-header">
                            <i class="login-logo fa fa-connectdevelop fa-5x"></i>
                            <h4 class="login-title">后台信息管理登录</h4>
                        </div>
                        <div class="col-sm-12" >
                            <div class="login-body" style="border-radius: 10px;background-color: rgba(255,255,255,0.75);">
                                <form class="form-horizontal">
                                    <div class="form-group" style="margin-bottom: 0">
                                        <label for="username" class="control-label col-sm-2">
                                            <i class="fa fa-user fa-2x" style="margin-top: 4px" aria-hidden="true"></i>
                                        </label>
                                        <div class="col-sm-9">
                                            <input style="border-radius: 8px;background-color: rgba(255,255,255,0.6)" id="username" name="username" type="text" class="form-control" placeholder="请输入账号" />
                                        </div>
                                    </div>
                                    <div class="form-group" style="margin-bottom: 0">
                                        <label for="password" class="col-sm-2 control-label">
                                            <i class="fa fa-unlock-alt fa-2x" style="margin-top: 4px" aria-hidden="true"></i>
                                        </label>
                                        <div class="col-sm-9">
                                            <input style="border-radius: 8px;background-color: rgba(255,255,255,0.6)" id="password" name="password" type="password" class="form-control" placeholder="请输入密码" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="verification" class="control-label col-sm-2">
                                            <i class="fa fa-shield fa-2x" style="margin-top: 4px" aria-hidden="true"></i>
                                        </label>
                                        <div class="col-sm-5">
                                            <input style="border-radius: 8px;background-color: rgba(255,255,255,0.6)" id="verification" name="verification" type="text" class="form-control" placeholder="验证码"/>
                                        </div>
                                        <div class="col-sm-5">
                                            <img id="verifyImg" style="cursor: pointer;margin-top: 10px" onclick="changeCpacha()" src="${pageContext.request.contextPath}/system/getCpachaUtil?type=loginCpacha" alt="验证码图片"/>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-8 col-sm-offset-2">
                                            <button id="login-btn" style="border-radius: 20px;width: 100%;" type="submit" class="btn btn-primary" onclick="login()">登录</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Javascript Libs -->
        <script type="text/javascript" src="resources/admin/bootstrap/lib/js/jquery.min.js"></script>
        <script type="text/javascript" src="resources/admin/bootstrap/lib/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="resources/admin/bootstrap/lib/js/Chart.min.js"></script>
        <script type="text/javascript" src="resources/admin/bootstrap/lib/js/bootstrap-switch.min.js"></script>

        <script type="text/javascript" src="resources/admin/bootstrap/lib/js/jquery.matchHeight-min.js"></script>
        <script type="text/javascript" src="resources/admin/bootstrap/lib/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="resources/admin/bootstrap/lib/js/dataTables.bootstrap.min.js"></script>
        <script type="text/javascript" src="resources/admin/bootstrap/lib/js/select2.full.min.js"></script>
        <script type="text/javascript" src="resources/admin/bootstrap/lib/js/ace/ace.js"></script>
        <script type="text/javascript" src="resources/admin/bootstrap/lib/js/ace/mode-html.js"></script>
        <script type="text/javascript" src="resources/admin/bootstrap/lib/js/ace/theme-github.js"></script>
        <!-- Javascript -->
        <script type="text/javascript" src="resources/admin/bootstrap/js/app.js"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script type="text/javascript">
            function changeCpacha() {
                $("#verifyImg").attr("src", 'system/getCpachaUtil?type=loginCpacha&t=' + new Date().getTime());
            }

            function login() {
                var username = $("#username").val();
                var password = $("#password").val();
                var verification = $("#verification").val();
                if (username === '' || username === 'undefined') {
                    alert("请填写用户名!");
                    return;
                }
                if (password === '' || password === 'undefined') {
                    alert("请填写密码!");
                    return;
                }
                if (verification === '' || verification === 'undefined') {
                    alert("请填写验证码!");
                    return;
                }
                $.ajax({
                    url: "/system/loginAction",
                    type: "POST",
                    dataType: "json",
                    data: {username: username, password: password, verification: verification},
                    success: function (data) {
                        if (data.type === 'success') {
                            //若登录成功
                            window.location = 'index';
                        } else {
                            //若登录失败
                            alert(data.msg);
                            changeCpacha();
                        }
                    }
                });
            }
        </script>
    </body>
</html>

