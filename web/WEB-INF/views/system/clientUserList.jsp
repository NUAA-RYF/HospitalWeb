<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>后台管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
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
    <link rel="stylesheet" type="text/css" href="resources/admin/bootstrap/lib/css/select2.min.css">
    <link rel="stylesheet" type="text/css" href="https://unpkg.com/bootstrap-table@1.15.4/dist/bootstrap-table.min.css">
    <!-- CSS App -->
    <link rel="stylesheet" type="text/css" href="resources/admin/bootstrap/css/style.css">
    <link rel="stylesheet" type="text/css" href="resources/admin/bootstrap/css/themes/flat-blue.css">
    <%-- JS--%>
    <!-- Javascript Libs -->
    <script type="text/javascript" src="resources/admin/bootstrap/lib/js/jquery.min.js"></script>
    <script type="text/javascript" src="resources/admin/bootstrap/lib/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="resources/admin/bootstrap/lib/js/Chart.min.js"></script>
    <script type="text/javascript" src="resources/admin/bootstrap/lib/js/bootstrap-switch.min.js"></script>
    <script type="text/javascript" src="resources/admin/bootstrap/lib/js/jquery.matchHeight-min.js"></script>
    <script type="text/javascript" src="resources/admin/bootstrap/lib/js/select2.full.min.js"></script>
    <script type="text/javascript" src="resources/admin/bootstrap/lib/js/ace/ace.js"></script>
    <script type="text/javascript" src="resources/admin/bootstrap/lib/js/ace/mode-html.js"></script>
    <script type="text/javascript" src="resources/admin/bootstrap/lib/js/ace/theme-github.js"></script>
    <script type="text/javascript" src="https://unpkg.com/bootstrap-table@1.15.4/dist/bootstrap-table.min.js"></script>
    <script type="text/javascript" src="https://unpkg.com/bootstrap-table@1.15.4/dist/locale/bootstrap-table-zh-CN.min.js"></script>
    <!-- Javascript -->
    <script type="text/javascript" src="resources/admin/bootstrap/js/app.js"></script>
</head>
<body class="flat-blue">
<%-- 应用容器 --%>
<div class="app-container">
    <%-- 列 内容容器 --%>
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
                        <li>用户列表</li>
                        <li class="active">客户端用户列表</li>
                    </ol>
                    <button type="button" class="navbar-right-expand-toggle pull-right visible-xs">
                        <i class="fa fa-th icon"></i>
                    </button>
                </div>
                <ul class="nav navbar-nav navbar-right">
                    <button type="button" class="navbar-right-expand-toggle pull-right visible-xs">
                        <i class="fa fa-times icon">
                        </i>
                    </button>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                           aria-expanded="false">
                            <i class="fa fa-comments-o">
                            </i>
                        </a>
                        <ul class="dropdown-menu animated fadeInDown">
                            <li class="title">Notification<span class="badge pull-right">0</span>
                            </li>
                            <li class="message">No new notification</li>
                        </ul>
                    </li>
                    <li class="dropdown danger">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                            <i class="fa fa-star-half-o"></i>4
                        </a>
                        <ul class="dropdown-menu danger animated fadeInDown">
                            <li class="title">Notification<span class="badge pull-right">4</span></li>
                            <li>
                                <ul class="list-group notifications">
                                    <a href="#">
                                        <li class="list-group-item"><span class="badge">1</span>
                                            <i class="fa fa-exclamation-circle icon"></i>new registration
                                        </li>
                                    </a>
                                    <a href="#">
                                        <li class="list-group-item">
                                            <span class="badge success">1</span>
                                            <i class="fa fa-check icon"></i>new orders
                                        </li>
                                    </a>
                                    <a href="#">
                                        <li class="list-group-item">
                                            <span class="badge danger">2</span>
                                            <i class="fa fa-comments icon"></i>customers messages
                                        </li>
                                    </a>
                                    <a href="#">
                                        <li class="list-group-item message">view all</li>
                                    </a>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown profile">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Emily
                            Hart
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu animated fadeInDown">
                            <li class="profile-img">
                                <img src="resources/admin/bootstrap/img/profile/picjumbo.com_HNCK4153_resize.jpg"
                                     class="profile-img" alt="picture">
                            </li>
                            <li>
                                <div class="profile-info">
                                    <h4 class="username">管理员用户名</h4>
                                    <p>emily_hart@email.com</p>
                                    <div class="btn-group margin-bottom-2x" role="group">
                                        <button type="button" class="btn btn-default">
                                            <i class="fa fa-user"></i>Profile
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
                        <a class="navbar-brand" href="#">
                            <div class="icon fa fa-paper-plane"></div>
                            <div class="title">南京航空航天大学</div>
                        </a>
                        <button type="button" class="navbar-expand-toggle pull-right visible-xs">
                            <i class="fa fa-times icon"></i>
                        </button>
                    </div>
                    <ul class="nav navbar-nav">
                        <li>
                            <a>
                                <span class="icon fa fa-tachometer"></span>
                                <span class="title">后台管理系统</span>
                            </a>
                        </li>
                        <li class="active panel panel-default dropdown">
                            <a data-toggle="collapse" href="#dropdown-table">
                                <span class="icon fa fa-table"></span>
                                <span class="title">用户列表</span>
                            </a>
                            <!-- Dropdown level 1 -->
                            <div id="dropdown-table" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul class="nav navbar-nav">
                                        <li>
                                            <a href="${pageContext.request.contextPath}/system/clientUserList">客户端用户列表</a>
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
            </nav>
        </div>
        <!-- Main Content -->
        <div class="container-fluid">
            <div class="side-body">
                <div class="page-title">
                    <span class="title">客户端用户列表</span>
                    <div class="description">当前使用移动应用端的用户信息</div>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <div class="card">
                            <div class="card-header">
                                <div class="card-title">
                                    <div class="title">表格</div>
                                </div>
                            </div>
                            <div class="card-body">
                                <table class="table table-hover" id="table">
                                    <thead>
                                    <tr>
                                        <th data-field="id" data-sortable="true">用户ID</th>
                                        <th data-field="username">用户名</th>
                                        <th data-field="password">密码</th>
                                        <th data-field="phone">手机号</th>
                                    </tr>
                                    </thead>
                                    <tfoot>
                                    <tr>
                                        <th>用户ID</th>
                                        <th>用户名</th>
                                        <th>密码</th>
                                        <th>手机号</th>
                                    </tr>
                                    </tfoot>
                                    <tbody>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer class="app-footer">
        <div class="wrapper">
            <span class="pull-right">2.1 <a href="#"><i class="fa fa-long-arrow-up fa-2x"></i></a></span>
            &copy; 2019 Copyright. 727070797@qq.com
        </div>
    </footer>
</div>

<script type="text/javascript">
    var dynamicHeader = [];
    dynamicHeader.push({
        field:"id",
        title:"用户ID"
    },{
        field:"username",
        title:"用户名"
    },{
        field:"password",
        title:"密码"
    },{
        field:"phone",
        title:"手机号"
    });

    $('#table').bootstrapTable("destroy");
    $('#table').bootstrapTable({
        ajax:function(request){
            $.ajax({
                type:'get',
                url:'${pageContext.request.contextPath}/client/findAll',
                success:function (data) {
                    if (data.type === 'success'){
                        for (var i = 0; i < data.result.length; i++) {

                        }
                    }
                },
            })
        },
        pagination: true,
        cache:false,
        toolbar:'#toolbar',
        showPaginationSwitch: true,
        search: true,
        searchAlign: 'left',
        showRefresh: true,
        showColumns: true,
        showToggle: true,
        pageSize: 5,
        pageList: [10, 20, 50, 100],
        striped: true,
        locale: "zh-CN",
        column: [
            {
                checkbox:true,
            },
            {
                sortable: true,
                field: 'id',
                title: "用户ID",
                align: 'center'
            },
            {
                field: 'username',
                title: '用户名',
                align: 'center'
            },
            {
                field: 'password',
                title: '密码',
                align: 'center'
            },
            {
                field: 'phone',
                title: '手机号',
                align: 'center'
            }
        ],
    });
</script>
</body>

</html>