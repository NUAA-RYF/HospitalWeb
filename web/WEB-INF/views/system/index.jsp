<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>后台管理系统</title>
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
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                           aria-expanded="false"><i class="fa fa-comments-o"></i></a>
                        <ul class="dropdown-menu animated fadeInDown">
                            <li class="title">
                                通知 <span class="badge pull-right">0</span>
                            </li>
                            <li class="message">
                                No new notification
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown danger">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                           aria-expanded="false"><i class="fa fa-star-half-o"></i> 4</a>
                        <ul class="dropdown-menu danger  animated fadeInDown">
                            <li class="title">
                                通知 <span class="badge pull-right">4</span>
                            </li>
                            <li>
                                <ul class="list-group notifications">
                                    <a href="#">
                                        <li class="list-group-item">
                                            <span class="badge">1</span> <i class="fa fa-exclamation-circle icon"></i>
                                            new registration
                                        </li>
                                    </a>
                                    <a href="#">
                                        <li class="list-group-item">
                                            <span class="badge success">1</span> <i class="fa fa-check icon"></i> new
                                            orders
                                        </li>
                                    </a>
                                    <a href="#">
                                        <li class="list-group-item">
                                            <span class="badge danger">2</span> <i class="fa fa-comments icon"></i>
                                            customers messages
                                        </li>
                                    </a>
                                    <a href="#">
                                        <li class="list-group-item message">
                                            查看所有
                                        </li>
                                    </a>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown profile">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Emily
                            Hart <span class="caret"></span></a>
                        <ul class="dropdown-menu animated fadeInDown">
                            <li class="profile-img">
                                <img src="resources/admin/bootstrap/img/profile/picjumbo.com_HNCK4153_resize.jpg"
                                     class="profile-img" alt="">
                            </li>
                            <li>
                                <div class="profile-info">
                                    <h4 class="username">Emily Hart</h4>
                                    <p>emily_hart@email.com</p>
                                    <div class="btn-group margin-bottom-2x" role="group">
                                        <button type="button" class="btn btn-default"><i class="fa fa-user"></i> Profile
                                        </button>
                                        <button type="button" class="btn btn-default"><i class="fa fa-sign-out"></i>
                                            Logout
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
                    <div id="banner" class="carousel slide" data-ride="carousel" style="height: 450px; border-radius: 10px;">

                        <%-- 指示器 --%>
                        <ol class="carousel-indicators">
                            <li data-target="#banner" data-slide-to="0" class="active"></li>
                            <li data-target="#banner" data-slide-to="1"></li>
                            <li data-target="#banner" data-slide-to="2"></li>
                        </ol>

                        <%-- 轮播图片 --%>
                        <div class="carousel-inner" role="listbox" style="height: 450px;  border-radius: 10px;" >
                            <div class="item active">
                                <img src="resources/admin/index/images/banner-1.png" style="height: 450px;" alt="轮播图片-1">
                            </div>
                            <div class="item">
                                <img src="resources/admin/index/images/banner-2.png" style="height: 450px;" alt="轮播图片-2">
                            </div>
                            <div class="item">
                                <img src="resources/admin/index/images/banner-3.png" style="height: 450px;" alt="轮播图片-3">
                            </div>
                        </div>

                        <%-- 轮播控制 --%>
                        <a href="#banner" class="left carousel-control" role="button" data-slide="prev" style="border-radius: 10px;">
                            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a href="#banner" class="right carousel-control" role="button" data-slide="next" style="border-radius: 10px;">
                            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                </div>

                <div class="col-sm-4" style="margin-top: 80px;">
                    <div class="thumbnail" style="border-radius: 10px;">
                        <img style="border-radius: 10px 10px 0 0;" src="resources/admin/index/images/welcome-0.png" alt="欢迎图片">
                        <div class="caption" style="font-family: 'monospace','AR PL UKai CN','AR PL UMing CN',sans-serif;">
                            <h3>后台管理系统</h3>
                            <p>NUAA CSTUENDTS</p>
                        </div>
                    </div>
                </div>

                <div class="col-sm-12">
                    <div class="col-sm-4">
                        <div class="panel panel-primary text-center" style="border-radius: 3px;">
                            <div class="panel-heading">
                                南京航空航天大学
                            </div>
                            <img src="resources/admin/index/images/personal-ryf.jpg" style="width: 100%;height: 300px;" alt="个人图片">
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
                            <img src="resources/admin/index/images/personal-tts.jpg" style="width: 100%;height: 300px;" alt="个人图片">
                            <ul class="list-group">
                                <li class="list-group-item">指导教师:&nbsp;陈海燕</li>
                                <li class="list-group-item">姓名:&nbsp;唐统私</li>
                                <li class="list-group-item">学号:&nbsp;161610122</li>
                                <li class="list-group-item">课程:&nbsp;软件工程课程设计</li>
                                <li class="list-group-item">专业:&nbsp;计算机科学与技术专业</li>
                            </ul>
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
</body>
</html>
