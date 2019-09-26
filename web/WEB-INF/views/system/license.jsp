<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/8/17
  Time: 10:21
  To change this template use File | Settings | File Templates.
--%>
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
    <div class="app-container">
        <div class="row content-container">
            <nav class="navbar navbar-default navbar-fixed-top navbar-top">
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
                    <%-- 右方导航栏 --%>
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
                                        <h4 class="username"><%= request.getSession().getAttribute("nickname")%></h4>
                                        <p><%= request.getSession().getAttribute("username")%></p>
                                        <p><%= request.getSession().getAttribute("email")%></p>
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
                                    <span class="icon fa fa-tachometer"></span><span class="title">后台管理系统</span>
                                </a>
                            </li>
                            <li class="panel panel-default dropdown">
                                <a data-toggle="collapse" href="#dropdown-table">
                                    <span class="icon fa fa-table"></span><span class="title">客户端用户列表</span>
                                </a>
                                <!-- Dropdown level 1 -->
                                <div id="dropdown-table" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul class="nav navbar-nav">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/system/clientUserList">用户帐号列表</a>
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

            <!-- Main Content -->
            <div class="container-fluid">
                <div class="side-body">
                    <div class="page-title">
                        <span class="title">License</span>
                    </div>
                    <div class="row">
                        <div class="col-xs-12">
                            <div class="card">
                                <div class="card-body">
                                    The MIT License (MIT)<br><br>

                                    Copyright (c) [2015] [Flat Admin Bootstrap Templates]<br><br>

                                    Permission is hereby granted, free of charge, to any person obtaining a copy
                                    of this software and associated documentation files (the "Software"), to deal
                                    in the Software without restriction, including without limitation the rights
                                    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
                                    copies of the Software, and to permit persons to whom the Software is
                                    furnished to do so, subject to the following conditions:<br><br>

                                    The above copyright notice and this permission notice shall be included in all
                                    copies or substantial portions of the Software.<br><br>

                                    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
                                    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
                                    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
                                    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
                                    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
                                    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
                                    SOFTWARE.
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <footer class="app-footer">
            <div class="wrapper">
                <span class="pull-right">2.1 <a href="#"><i class="fa fa-long-arrow-up"></i></a></span> &copy; 2019 Copyright. 727070797@qq.com
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
        function countFirstAidNumber(){
            $.ajax({
                url:"${pageContext.request.contextPath}/firstAid/findFirstAidNotHandle",
                method:"get",
                success:function (data) {
                    if (data.type === 'success'){
                        $('#FANotification').html(data.result);
                        if (data.result > 0){
                            $('#FABadge').html("急救");
                            $('#FAMessage').html("新的急救信息");
                        }else {
                            $('#FAMessage').html("暂无急救信息");
                        }
                    }
                },
            });
        }

        window.onload = function () {
            countFirstAidNumber();
        }
    </script>
    </body>
</html>

