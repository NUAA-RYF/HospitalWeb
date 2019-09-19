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
                        <li>客户端信息列表</li>
                        <li class="active">用户疾病列表</li>
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
                                <span class="title">客户端信息列表</span>
                            </a>
                            <!-- 下拉列表 客户端信息 -->
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
                                <div class="form-inline">
                                    <div class="form-group col-sm-offset-10 col-sm-1" style="margin-top: 8px;">
                                        <button class="btn btn-primary" onclick="openEditModel()">新增用户</button>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <table class="table table-hover" id="clientTable">
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

<%-- 模态框 编辑 --%>
<div class="modal fade" id="editModel" tabindex="-1" role="dialog" aria-labelledby="editModelLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 id="editModelLabel" class="modal-title">编辑用户信息</h4>
            </div>
            <div class="modal-content">
                <div class="form-inline col-sm-10 col-sm-offset-1" style="margin-top: 10px;">
                    <div class="form-group">
                        <label for="id">用户ID:</label>
                        <input id="id" name="id" type="text" readonly="readonly">
                    </div>
                    <div class="form-group" style="margin-left: 8px;">
                        <label for="username">用户名:</label>
                        <input id="username" name="username" type="text">
                    </div>
                </div>

                <div class="form-inline col-sm-10 col-sm-offset-1" style="margin-top: 10px; margin-bottom: 10px">
                    <div class="form-group">
                        <label for="password">密&nbsp;&nbsp;&nbsp;码:</label>
                        <input id="password" name="password" type="text">
                    </div>
                    <div class="form-group" style="margin-left: 8px;">
                        <label for="phone">手机号:</label>
                        <input id="phone" name="phone" type="text">
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="btn-submit" onclick="editData()">提交</button>
            </div>
        </div>
    </div>
</div><%--模态框END--%>

<%-- 模态框 编辑 --%>
<div class="modal fade" id="deleteModel" tabindex="-1" role="dialog" aria-labelledby="deleteModelLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 id="deleteModelLabel" class="modal-title">正在删除用户(ID:<span id="usernameID"></span>)信息</h4>
            </div>
            <div class="modal-content">
                <div class="col-sm-offset-1" style="margin-top: 8px;">
                    <p class="modal-info">是否删除用户:<span id="usernameDelete"></span>的所有信息?</p>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="btn-delete" onclick="deleteClientUserByID()">删除</button>
            </div>
        </div>
    </div>
</div><%--模态框END--%>
<script type="text/javascript">
    window.onload = function () {
        $initTable();
    };

    /**
     * 打开模态框
     */
    function openEditModel() {
        $("#id").val("");
        $("#username").val("");
        $("#password").val("");
        $("#phone").val("");
        $('#editModel').modal('show');
    }

    /**
     * 添加和编辑用户信息
     */
    function editData(){
        let id = $("#id").val();
        let username = $("#username").val();
        let password = $("#password").val();
        let phone = $("#phone").val();

        if(id ===''){
            id = 0;
        }
        //输入不得为空
        if (username ===''||password===''||phone===''){
            alert("输入不得为空!");
            return;
        }
        //手机号必须为11位
        if (phone.length !== 11){
            alert("手机号必须为11位!");
            return;
        }

        //传至后台
        $.ajax({
            url:"${pageContext.request.contextPath}/client/clientUserEdit",
            method:"post",
            data:{id:id,username:username,password:password,phone:phone},
            dataType:"json",
            success:function (data) {
                if (data.type === 'success'){
                    //操作成功
                    $initTable();
                }else {
                    //操作失败
                    alert(data.msg);
                }
                $('#editModel').modal('hide');
            }
        });

    }

    /**
     * 初始化表格
     */
    let $initTable = function () {
        $('#clientTable').bootstrapTable("destroy");
        $('#clientTable').bootstrapTable({
            ajax: function (request) {
                $.ajax({
                    type: 'get',
                    url: '${pageContext.request.contextPath}/client/findAll',
                    success: function (data) {
                        request.success({
                            row: data
                        });
                        if (data.type === 'success') {
                            $('#clientTable').bootstrapTable('load', data.result);
                        }
                    }
                })
            },
            pagination: true,
            cache: false,
            showPaginationSwitch: true,
            search: true,
            searchAlign: 'left',
            showRefresh: true,
            showColumns: true,
            showToggle: true,
            pageSize: 5,
            pageList: [2, 5, 10, 20, 50],
            buttonsClass: 'primary',
            toolbar: '#toolbar',
            locale: "zh-CN",
            clickToSelect: true,
            columns: [
                {
                    checkbox: true,
                    width: '10%'
                },
                {
                    sortable: true,
                    width: '15%',
                    field: "id",
                    title: "用户ID",
                    halign: "center"
                },
                {
                    field: "username",
                    width: '15%',
                    title: "用户名",
                    halign: "center"
                },
                {
                    field: "password",
                    width: '25%',
                    title: "密码",
                    halign: "center"
                },
                {
                    field: "phone",
                    width: '25%',
                    title: "手机号",
                    halign: "center"
                },
                {
                    title: "操作",
                    width: '10%',
                    halign: "center",
                    events: {
                        "click #edit": function (e, value, row) {
                            $("#id").val(row.id);
                            $("#username").val(row.username);
                            $("#password").val(row.password);
                            $("#phone").val(row.phone);
                            $('#editModel').modal('show');
                        },
                        "click #delete": function (e, value, row) {
                            $("#usernameDelete").html(row.username);
                            $("#usernameID").html(row.id);
                            $('#deleteModel').modal('show');
                        }
                    },
                    formatter: function () {
                        let result = "";
                        result += "<button class='btn btn-primary' data-toggle='model' data-target='#editModel' id='edit'>编辑</button>";
                        result += "<button class='btn btn-primary' data-toggle='model' data-target='#editModel' id='delete' style='margin-left: 6px;'>删除</button>";
                        return result;
                    },
                    align: "center"
                }
            ]
        });
    };

    /**
     * 按ID删除用户信息
     * @param id ID
     */
    function deleteClientUserByID() {
        let id = $("#usernameID").html();
        $.ajax({
            url:"${pageContext.request.contextPath}/client/clientUserDeleteByID",
            method: "post",
            data: {id:id},
            success:function (data) {
                if (data.type === 'success'){
                    $initTable();
                }else {
                    alert(data.msg);
                }
                $('#deleteModel').modal('hide');
            }
        })
    }

</script>
</body>

</html>