<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>后台管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
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
    <link rel="stylesheet" type="text/css" href="resources/admin/bootstrap/lib/css/select2.min.css">
    <link rel="stylesheet" type="text/css" href="https://unpkg.com/bootstrap-table@1.15.4/dist/bootstrap-table.min.css">
    <!-- CSS App -->
    <link rel="stylesheet" type="text/css" href="resources/admin/bootstrap/css/style.css">
    <link rel="stylesheet" type="text/css" href="resources/admin/bootstrap/css/themes/flat-blue.css">
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
                            <a href="system/index">
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
            </nav>
        </div>

        <!-- Main Content -->
        <div class="container-fluid">
            <div class="side-body">
                <div class="page-title">
                    <span class="title">用户疾病列表</span>
                    <div class="description">移动应用端的疾病信息</div>
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
                                        <button class="btn btn-primary" onclick="openEditModel()">新增疾病</button>
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
                <h4 id="editModelLabel" class="modal-title">编辑疾病信息</h4>
            </div>
            <div class="modal-content">
                <div class="form-inline col-sm-10 col-sm-offset-1" style="margin-top: 10px;">
                    <div class="form-group">
                        <label for="id">疾病&nbsp;&nbsp;I&nbsp;D&nbsp;:</label>
                        <input id="id" name="id" type="text" readonly="readonly">
                    </div>
                    <div class="form-group" style="margin-left: 8px;">
                        <label for="username">用户名:</label>
                        <input id="username" name="username" type="text">
                    </div>
                </div>

                <div class="form-inline col-sm-10 col-sm-offset-1" style="margin-top: 10px; margin-bottom: 10px">
                    <div class="form-group">
                        <label for="name">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名&nbsp;:</label>
                        <input id="name" name="name" type="text">
                    </div>
                    <div class="form-group" style="margin-left: 8px;">
                        <label for="phone">手机号:</label>
                        <input id="phone" name="phone" type="text">
                    </div>
                </div>

                <div class="form-inline col-sm-10 col-sm-offset-1" style="margin-top: 10px; margin-bottom: 10px">
                    <div class="form-group">
                        <label for="age">年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄&nbsp;:</label>
                        <input id="age" name="age" type="text">
                    </div>
                    <div class="form-group" style="margin-left: 8px;">
                        <label for="gender">性&nbsp;&nbsp;&nbsp;别:</label>
                        <select id="gender">
                            <option>请选择</option>
                            <option>男</option>
                            <option>女</option>
                        </select>
                    </div>
                </div>

                <div class="form-inline col-sm-10 col-sm-offset-1" style="margin-top: 10px; margin-bottom: 10px">
                    <div class="form-group">
                        <label for="diseaseName">疾病名称:</label>
                        <input id="diseaseName" name="diseaseName" type="text">
                    </div>
                </div>

                <div class="form-inline col-sm-10 col-sm-offset-1" style="margin-top: 10px; margin-bottom: 10px">
                    <label for="address">地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址&nbsp;:</label>
                    <div class="form-group">
                        <textarea id="address" name="address" maxlength="50" required="required" style="resize: none;" type="text"></textarea>
                    </div>
                    <label for="diseaseInfo">疾病信息:</label>
                    <div class="form-group">
                        <textarea id="diseaseInfo" name="diseaseInfo" maxlength="50" required="required" style="resize: none;" type="text"></textarea>
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

<%-- 模态框 删除 --%>
<div class="modal fade" id="deleteModel" tabindex="-1" role="dialog" aria-labelledby="deleteModelLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 id="deleteModelLabel" class="modal-title">正在删除疾病(ID:<span id="diseaseID"></span>)信息</h4>
            </div>
            <div class="modal-content">
                <div class="col-sm-offset-1" style="margin-top: 8px;">
                    <p class="modal-info">是否删除疾病:<span id="diseaseNameDelete"></span>的所有信息?</p>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="btn-delete" onclick="deleteDiseaseByID()">删除</button>
            </div>
        </div>
    </div>
</div><%--模态框 删除 END--%>
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
        $initTable();
        countFirstAidNumber();
    };

    /**
     * 打开模态框
     */
    function openEditModel() {
        $("#id").val("");
        $("#username").val("");
        $("#password").val("");
        $("#age").val("");
        $("#phone").val("");
        $("#gender").val("请选择");
        $("#address").val("");
        $("#diseaseName").val("");
        $("#diseaseInfo").val("");
        $('#editModel').modal('show');
    }

    /**
     * 添加和编辑用户信息
     */
    function editData(){
        let id = $("#id").val();
        let username = $("#username").val();
        let name = $("#name").val();
        let age = $("#age").val();
        let phone = $("#phone").val();
        let gender = $("#gender").val();
        let address = $("#address").val();
        let diseaseName = $("#diseaseName").val();
        let diseaseInfo = $("#diseaseInfo").val();

        if(id ===''){
            id = 0;
        }
        //输入不得为空
        if (username ===''||name===''||
            phone===''|| age===''|| address===''||
            diseaseName===''|| diseaseInfo===''){
            alert("输入不得为空!");
            return;
        }
        if (gender === '请选择'){
            alert("请选择性别！");
        }

        //手机号必须为11位
        if (phone.length !== 11){
            alert("手机号必须为11位!");
            return;
        }

        //传至后台
        $.ajax({
            url:"${pageContext.request.contextPath}/disease/editDiseaseByID",
            method:"post",
            data:{
                id:id,
                username:username,
                name:name,
                age:age,
                phone:phone,
                gender:gender,
                address:address,
                diseaseName:diseaseName,
                diseaseInfo:diseaseInfo
            },
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
                    url: '${pageContext.request.contextPath}/disease/findAll',
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
                    sortable: true,
                    field: "id",
                    title: "疾病信息ID",
                    halign: "center"
                },
                {
                    field: "username",
                    title: "用户名",
                    halign: "center"
                },
                {
                    field: "name",
                    title: "姓名",
                    halign: "center"
                },
                {
                    field: "age",
                    title: "年龄",
                    halign: "center"
                },
                {
                    field: "phone",
                    title: "手机号",
                    halign: "center"
                },
                {
                    field: "gender",
                    title: "性别",
                    halign: "center"
                },
                {
                    field: "address",
                    title: "地址",
                    halign: "center"
                },
                {
                    field: "diseaseName",
                    title: "疾病名称",
                    halign: "center"
                },
                {
                    field: "diseaseInfo",
                    title: "疾病详情",
                    halign: "center"
                },
                {
                    title: "操作",
                    halign: "center",
                    events: {
                        "click #edit": function (e, value, row) {
                            $("#id").val(row.id);
                            $("#username").val(row.username);
                            $("#name").val(row.name);
                            $("#age").val(row.age);
                            $("#phone").val(row.phone);
                            $("#gender").val(row.gender);
                            $("#address").val(row.address);
                            $("#diseaseName").val(row.diseaseName);
                            $("#diseaseInfo").val(row.diseaseInfo);
                            $('#editModel').modal('show');
                        },
                        "click #delete": function (e, value, row) {
                            $("#diseaseNameDelete").html(row.diseaseName);
                            $("#diseaseID").html(row.id);
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
     */
    function deleteDiseaseByID() {
        let id = $("#diseaseID").html();
        $.ajax({
            url:"${pageContext.request.contextPath}/disease/deleteInfo",
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