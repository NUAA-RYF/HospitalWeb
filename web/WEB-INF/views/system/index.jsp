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
