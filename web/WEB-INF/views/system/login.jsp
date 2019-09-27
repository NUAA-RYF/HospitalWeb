<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <title>后台信息管理登录</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <base href="../">
        <%-- ICON --%>
        <link rel="icon" href="resources/admin/index/images/icon-hospital.icon">
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
            <div class="login-box" style="top:40%;">
                <div>
                    <div class="login-form row">
                        <div class="col-sm-12 text-center login-header">
                            <i class="login-logo fa fa-connectdevelop fa-5x"></i>
                            <h4 class="login-title">后台信息管理登录</h4>
                        </div>
                        <div class="col-sm-12" >
                            <div class="login-body" style="border-radius: 10px;background-color: rgba(255,255,255,0.75);">
                                <form class="form-horizontal">
                                    <div class="form-group" style="margin-top: 10px;">
                                        <label for="username" class="sr-only">请输入用户名</label>
                                        <div class="input-group col-sm-offset-1 col-sm-10">
                                            <div class="input-group-addon" style="border:1px solid white;"><i class="glyphicon glyphicon-user"></i></div>
                                            <input style="border-radius: 0 4px 4px 0;margin:0;background-color: rgba(255,255,255,0.6)" id="username" name="username" type="text" class="form-control" placeholder="请输入账号" />
                                        </div>
                                    </div>
                                    <div class="form-group" style="margin-top: 10px;">
                                        <label for="password" class="sr-only">请输入密码</label>
                                        <div class="input-group col-sm-offset-1 col-sm-10">
                                            <div class="input-group-addon" style="border:1px solid white;"><i class="glyphicon glyphicon-lock"></i></div>
                                            <input style="border-radius: 0 4px 4px 0;margin:0;background-color: rgba(255,255,255,0.6)" id="password" name="password" type="password" class="form-control" placeholder="请输入密码" />
                                        </div>
                                    </div>
                                    <div class="form-group" style="margin-top: 10px;">
                                        <label for="verification" class="sr-only">请输入验证码</label>
                                        <div class="input-group col-sm-offset-1 col-sm-10">
                                            <div class="input-group-addon" style="border:1px solid white;"><i class="glyphicon glyphicon-check"></i></div>
                                            <input style="border-radius: 0 4px 4px 0;margin:0;background-color: rgba(255,255,255,0.6)" id="verification" name="verification" type="text" class="form-control" placeholder="验证码"/>
                                            <div class="input-group-addon" style="border:1px solid white;padding: 0;">
                                                <img id="verifyImg" style="cursor: pointer;" onclick="changeCpacha()" src="${pageContext.request.contextPath}/system/getCpachaUtil?type=loginCpacha" alt="验证码图片"/>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="col-sm-8 col-sm-offset-2">
                                            <button id="login-btn" style="border:none;border-radius:5px;width: 100%;height: 30px;transition-duration: .5s;" class="btn-primary" type="button">登录</button>
                                        </div>
                                        <div class="col-sm-8 col-sm-offset-2">
                                            <button id="signUp-btn" style="border:none;border-radius:5px;margin-top:8px;width: 100%;height: 30px;transition-duration: .5s;" class="btn-primary" type="button">注册</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%-- 模态框 编辑 --%>
        <div class="modal fade" style="position: absolute;top: 50%;transform:translateY(-50%);" id="signUpModel" tabindex="-1" role="dialog" aria-labelledby="signUpModelLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="">注册页面</h4>
                    </div>
                    <div class="modal-content">
                        <%-- 注册表单 --%>
                        <div class="form-horizontal" style="margin-top: 10px;">
                            <%-- 账号 --%>
                            <div class="form-group">
                                <div class="input-group col-sm-offset-3 col-sm-6">
                                    <label for="signUp_username" class="sr-only"></label>
                                    <div class="input-group-addon">账号</div>
                                    <input type="text" id="signUp_username" class="form-control" placeholder="请输入账号">
                                </div>
                            </div>
                            <%-- 昵称 --%>
                            <div class="form-group">
                                <div class="input-group col-sm-offset-3 col-sm-6">
                                    <label for="signUp_nickname" class="sr-only"></label>
                                    <div class="input-group-addon">昵称</div>
                                    <input type="text" id="signUp_nickname" class="form-control" placeholder="请输入昵称">
                                </div>
                            </div>
                            <%-- 密码 --%>
                            <div class="form-group">
                                <div class="input-group col-sm-offset-3 col-sm-6">
                                    <label for="signUp_password" class="sr-only"></label>
                                    <div class="input-group-addon">密码</div>
                                    <input type="password" id="signUp_password" class="form-control" placeholder="请输入密码">
                                </div>
                            </div>
                            <%-- 重复密码 --%>
                            <div class="form-group">
                                <div class="input-group col-sm-offset-3 col-sm-6">
                                    <label for="signUp_repeat_password" class="sr-only"></label>
                                    <div class="input-group-addon">重复密码</div>
                                    <input type="password" id="signUp_repeat_password" class="form-control" placeholder="请再次输入密码">
                                </div>
                            </div>
                            <%-- 电子邮箱 --%>
                            <div class="form-group">
                                <div class="input-group col-sm-offset-3 col-sm-6">
                                    <label for="signUp_email" class="sr-only"></label>
                                    <div class="input-group-addon">电子邮箱</div>
                                    <input type="email" id="signUp_email" class="form-control" placeholder="请输入电子邮箱">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-primary" id="btn-submit">提交</button>
                    </div>
                </div>
            </div>
        </div><%--模态框END--%>
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

        <script type="text/javascript">
            $('#btn-submit').click(function () {

                let username = $('#signUp_username').val();
                let nickname = $('#signUp_nickname').val();
                let password = $('#signUp_password').val();
                let repeat_password = $('#signUp_repeat_password').val();
                let email = $('#signUp_email').val();

                if (username ==='' || nickname ==='' || password ==='' || email ===''){
                    alert("输入均不得为空!");
                }

                if (password !== repeat_password){
                    alert("两次输入的密码不一致!");
                }

                if (password.length < 6 || password.length >18){
                    alert("密码长度应为6-18位!");
                }

               $.ajax({
                   url: "${pageContext.request.contextPath}/user/insertUser",
                   method:"post",
                   data: {
                       username:username,
                       nickname:nickname,
                       password:password,
                       email:email
                   },
                   dataType: "json",
                   success:function (data) {
                       if (data.type === 'success'){
                           $('#signUpModel').modal('hide');
                       }else {
                           alert(data.msg);
                       }
                   }
               });
            });

            $('#signUp-btn').click(function () {
                $('#signUpModel').modal('show');
            });

            function changeCpacha() {
                $("#verifyImg").attr("src", 'system/getCpachaUtil?type=loginCpacha&t=' + new Date().getTime());
            }

            $("#login-btn").click(function() {
                let username = $("#username").val();
                let password = $("#password").val();
                let verification = $("#verification").val();
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
                    url: "${pageContext.request.contextPath}/system/signIn",
                    type: "POST",
                    dataType: "json",
                    data: {username: username, password: password, verification: verification},
                    success: function (data) {
                        if (data.type === 'success') {
                            //若登录成功
                            window.location = '${pageContext.request.contextPath}/system/index';
                        } else {
                            //若登录失败
                            alert(data.msg);
                            changeCpacha();
                        }
                    }
                });
            });
        </script>
    </body>
</html>

