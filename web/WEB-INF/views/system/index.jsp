<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>后台管理系统</title>
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

<body class="flat-blue">
<%-- 应用容器 --%>
<div class="app-container">
    <div class="row content-container">
        <%-- 导航栏 --%>
        <nav class="navbar navbar-default navbar-fixed-top navbar-top">
            <%-- 流布局 --%>
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-expand-toggle">
                        <i class="fa fa-bars icon"></i>
                    </button>
                    <ol class="breadcrumb navbar-breadcrumb">
                        <li class="active">首页</li>
                    </ol>
                    <button type="button" class="navbar-right-expand-toggle pull-right visible-xs">
                        <i class="fa fa-th icon"></i>
                    </button>
                </div>
                <ul class="nav navbar-nav navbar-right">
                    <button type="button" class="navbar-right-expand-toggle pull-right visible-xs">
                        <i class="fa fa-times icon"></i>
                    </button>
                    <li class="dropdown danger">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                           aria-expanded="false"><i class="fa fa-star-half-o" id="FABadge"></i></a>
                        <ul class="dropdown-menu danger  animated fadeInDown">
                            <li class="title">急救信息通知<span class="badge pull-right"></span>
                            </li>
                            <li>
                                <ul class="list-group notifications">
                                    <a href="${pageContext.request.contextPath}/system/FirstAidList">
                                        <li class="list-group-item">
                                            <span class="badge danger" id="FANotification"></span>
                                            <i class="fa fa-exclamation-circle icon" id="FAMessage"></i>
                                        </li>
                                    </a>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <%-- 个人中心 --%>
                    <li class="dropdown profile">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                            <%= request.getSession().getAttribute("nickname")%>
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu animated fadeInDown">
                            <li class="profile-img">
                                <img src="resources/admin/bootstrap/img/profile/picjumbo.com_HNCK4153_resize.jpg"
                                     class="profile-img" alt="picture">
                            </li>
                            <li>
                                <div class="profile-info">
                                    <h4 class="username"><%= request.getSession().getAttribute("nickname")%>
                                    </h4>
                                    <p><%= request.getSession().getAttribute("username")%>
                                    </p>
                                    <p><%= request.getSession().getAttribute("email")%>
                                    </p>
                                    <div class="btn-group margin-bottom-2x" role="group">
                                        <button type="button" class="btn btn-default">
                                            <i class="fa fa-user"></i>个人信息
                                        </button>
                                        <button type="button" class="btn btn-default">
                                            <i class="fa fa-sign-out"></i>退出登录
                                        </button>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="side-menu sidebar-inverse">
            <nav class="navbar navbar-default" role="navigation">
                <div class="side-menu-container">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="index.jsp">
                            <div class="icon fa fa-paper-plane"></div>
                            <div class="title">南京航空航天大学</div>
                        </a>
                        <button type="button" class="navbar-expand-toggle pull-right visible-xs">
                            <i class="fa fa-times icon"></i>
                        </button>
                    </div>

                    <ul class="nav navbar-nav">
                        <li class="active">
                            <a href="system/index">
                                <span class="icon fa fa-tachometer"></span><span class="title">后台管理主页面</span>
                            </a>
                        </li>
                        <li class="panel panel-default dropdown">
                            <a data-toggle="collapse" href="#dropdown-table">
                                <span class="icon fa fa-table"></span><span class="title">用户列表</span>
                            </a>
                            <!-- Dropdown level 1 -->
                            <div id="dropdown-table" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul class="nav navbar-nav">
                                        <li>
                                            <a href="${pageContext.request.contextPath}/system/clientUserList">用户账号列表</a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/system/diseaseList">用户疾病列表</a>
                                        </li>
                                        <li>
                                            <a href="${pageContext.request.contextPath}/system/FirstAidList">用户急救列表</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="system/license">
                                <span class="icon fa fa-thumbs-o-up"></span><span class="title">许可证</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </nav>
        </div>
    </div>

    <div class="container-fluid">
        <div class="row">
            <div class="side-body">
                <div class="col-sm-8" style="margin-top: 80px;">
                    <%--轮播图--%>
                    <div id="banner" class="carousel slide" data-ride="carousel"
                         style="height: 450px; border-radius: 10px;">

                        <%-- 指示器 --%>
                        <ol class="carousel-indicators">
                            <li data-target="#banner" data-slide-to="0" class="active"></li>
                            <li data-target="#banner" data-slide-to="1"></li>
                            <li data-target="#banner" data-slide-to="2"></li>
                        </ol>

                        <%-- 轮播图片 --%>
                        <div class="carousel-inner" role="listbox" style="height: 450px;  border-radius: 10px;">
                            <div class="item active">
                                <img src="resources/admin/index/images/banner-1.png" style="height: 450px;"
                                     alt="轮播图片-1">
                            </div>
                            <div class="item">
                                <img src="resources/admin/index/images/banner-2.png" style="height: 450px;"
                                     alt="轮播图片-2">
                            </div>
                            <div class="item">
                                <img src="resources/admin/index/images/banner-3.png" style="height: 450px;"
                                     alt="轮播图片-3">
                            </div>
                        </div>

                        <%-- 轮播控制 --%>
                        <a href="#banner" class="left carousel-control" role="button" data-slide="prev"
                           style="border-radius: 10px;">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a href="#banner" class="right carousel-control" role="button" data-slide="next"
                           style="border-radius: 10px;">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>

                <div class="col-sm-4" style="margin-top: 80px;">
                    <div class="thumbnail" style="border-radius: 10px;">
                        <img style="border-radius: 10px 10px 0 0;" src="resources/admin/index/images/welcome-0.png"
                             alt="欢迎图片">
                        <div class="caption text-center"
                             style="font-family: 'monospace','AR PL UKai CN','AR PL UMing CN',sans-serif;">
                            <h2>后台管理系统</h2>
                            <p>NUAA CSTUENDTS</p>
                            <p>前端:Android</p>
                            <p>前端:JSP+JS+JQUERY+CSS</p>
                            <p>后端:Spring+SpringMVC+Mybaits</p>
                            <p id="currentTime"></p>
                        </div>
                    </div>
                </div>

                <div class="col-sm-12">
                    <div class="col-sm-4">
                        <div class="panel panel-primary text-center" style="border-radius: 3px;">
                            <div class="panel-heading">
                                南京航空航天大学
                            </div>
                            <img src="resources/admin/index/images/personal-ryf.jpg" style="width: 100%;height: 300px;"
                                 alt="个人图片">
                            <ul class="list-group">
                                <li class="list-group-item">指导教师:&nbsp;陈海燕</li>
                                <li class="list-group-item">姓名:&nbsp;汝一凡</li>
                                <li class="list-group-item">学号:&nbsp;161610124</li>
                                <li class="list-group-item">课程:&nbsp;软件工程课程设计</li>
                                <li class="list-group-item">专业:&nbsp;计算机科学与技术专业</li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-sm-4">
                        <div class="panel panel-primary text-center" style="border-radius: 3px;">
                            <div class="panel-heading">
                                南京航空航天大学
                            </div>
                            <img src="resources/admin/index/images/personal-tts.jpg" style="width: 100%;height: 300px;"
                                 alt="个人图片">
                            <ul class="list-group">
                                <li class="list-group-item">指导教师:&nbsp;陈海燕</li>
                                <li class="list-group-item">姓名:&nbsp;唐统私</li>
                                <li class="list-group-item">学号:&nbsp;161610122</li>
                                <li class="list-group-item">课程:&nbsp;软件工程课程设计</li>
                                <li class="list-group-item">专业:&nbsp;计算机科学与技术专业</li>
                            </ul>
                        </div>
                    </div>

                    <div class="card" style="border-radius: 8px 8px 0 0;">
                        <div class="card-header text-center">
                            <img src="resources/admin/index/images/bg-chang-an.jpg" style="width: 100%;height: 250px;"
                                 alt="长安图片">
                            <h3>更新管理员信息</h3>
                        </div>
                        <div class="card-body" style="padding-bottom: 8px;">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <div class="input-group col-sm-offset-3 col-sm-6">
                                        <label class="sr-only" for="update-username"></label>
                                        <div class="input-group-addon">用户</div>
                                        <input id="update-username" class="form-control" type="text" value="${username}"
                                               disabled="disabled">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group col-sm-offset-3 col-sm-6">
                                        <label class="sr-only" for="update-nickname"></label>
                                        <div class="input-group-addon">昵称</div>
                                        <input id="update-nickname" class="form-control" type="text"
                                               value="${nickname}">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group col-sm-offset-3 col-sm-6">
                                        <label class="sr-only" for="update-email"></label>
                                        <div class="input-group-addon">电子邮箱</div>
                                        <input id="update-email" class="form-control" value="${email}" type="text">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group col-sm-offset-3 col-sm-6">
                                        <button type="button" id="update-btn" class="btn-primary"
                                                style="height:35px;width:100%;border: none;border-radius: 8px;">提交
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer class="app-footer">
        <div class="wrapper">
            <span class="pull-right">2.1 <a href="#"><i class="fa fa-long-arrow-up fa-2x"></i></a></span> &copy; 2019
            Copyright. 727070797@qq.com
        </div>
    </footer>
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
<script type="text/javascript" src="resources/admin/bootstrap/js/index.js"></script>
<script type="text/javascript">
    function currentTime() {
        let date = new Date();
        let year = date.getFullYear();
        let month = date.getMonth();
        let day = date.getDay();
        let hours = date.getHours();
        let minutes = date.getMinutes();
        let seconds = date.getSeconds();
        let time = "当前时间:"+year + "年" + month + "月" + day + "日  "+hours+":"+minutes+":"+seconds;
        $('#currentTime').html(time);
    };

    $('#update-btn').click(function () {
        let username = $('#update-username').val();
        let nickname = $('#update-nickname').val();
        let email = $('#update-email').val();

        if (nickname === '' || email === '') {
            alert("输入均不得为空!");
        }

        $.ajax({
            url: "${pageContext.request.contextPath}/user/updateUser",
            method: "post",
            data: {username: username, nickname: nickname, email: email},
            success: function (data) {
                if (data.type === 'success') {
                    location.reload(true);
                }
            }
        });
    });

    function countFirstAidNumber() {
        $.ajax({
            url: "${pageContext.request.contextPath}/firstAid/findFirstAidNotHandle",
            method: "get",
            success: function (data) {
                if (data.type === 'success') {
                    $('#FANotification').html(data.result);
                    if (data.result > 0) {
                        $('#FABadge').html("急救");
                        $('#FAMessage').html("新的急救信息");
                    } else {
                        $('#FAMessage').html("暂无急救信息");
                    }
                }
            },
        });
    }

    window.onload = function () {
        countFirstAidNumber();
        setInterval(currentTime,1000);
    };
</script>
</body>
</html>
