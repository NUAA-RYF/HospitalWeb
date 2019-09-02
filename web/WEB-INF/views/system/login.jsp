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
                            <h4 class="login-title">Flat Admin V2</h4>
                        </div>
                        <div class="col-sm-12">
                            <div class="login-body">
                                <div class="progress hidden" id="login-progress">
                                    <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                                        Log In...
                                    </div>
                                </div>
                                <form>
                                    <div class="control">
                                        <label>
                                            <input type="text" class="form-control" value="admin@gmail.com" />
                                        </label>
                                    </div>
                                    <div class="control">
                                        <label>
                                            <input type="password" class="form-control" value="123456" />
                                        </label>
                                    </div>
                                    <div class="login-button text-center">
                                        <input type="submit" class="btn btn-primary" value="Login">
                                    </div>
                                </form>
                            </div>
                            <div class="login-footer">
                                <span class="text-right"><a href="#" class="color-white">Forgot password?</a></span>
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
                $("#cpacha-img").attr("src", 'getCpachaUtil?vl=4&w=110&h=30&type=loginCpacha&t=' + new Date().getTime());
            }

            document.querySelector(".login-button").onclick = function () {
                var username = $("#username").val();
                var password = $("#password").val();
                var cpacha = $("#cpacha").val();
                if (username === '' || username === 'undefined') {
                    alert("请填写用户名!");
                    return;
                }
                if (password === '' || password === 'undefined') {
                    alert("请填写密码!");
                    return;
                }
                if (cpacha === '' || cpacha === 'undefined') {
                    alert("请填写验证码!");
                    return;
                }
                document.querySelector(".login").style.display = "none";

                $.ajax({
                    url: 'login',
                    data: {username: username, password: password, cpacha: cpacha},
                    type: 'post',
                    dataType: 'json',
                    success: function (data) {
                        if (data.type === 'success') {
                            //若登录成功
                            window.location = 'index';
                        } else {
                            //若登录失败
                            document.querySelector(".login").style.display = "block";
                            alert(data.msg);
                            changeCpacha();
                        }
                    }
                });
            }
        </script>
    </body>
</html>

