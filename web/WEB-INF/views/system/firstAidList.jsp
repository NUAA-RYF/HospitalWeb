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
    <script type="text/javascript" src="https://webapi.amap.com/maps?v=1.4.15&key=6e6e51c41bc0867a32d2da9acfe04d1c"></script>
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
                        <li class="active">用户急救列表</li>
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
                    <span class="title">用户急救列表</span>
                    <div class="description">移动应用端的急救信息</div>
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
                                <table class="table table-hover" id="clientTable"></table>
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

<%-- 模态框 查看 --%>
<div class="modal fade" id="editModel" tabindex="-1" role="dialog" aria-labelledby="editModelLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 id="editModelLabel" class="modal-title">急救信息(ID):<span id="firstAidID"></span></h4>
            </div>
            <div class="modal-content">
                <div id="map" class="col-sm-10 col-sm-offset-1" style="height: 300px;margin-top: 20px;">
                </div>
                <%-- 第一行 --%>
                <div class="col-sm-5 col-sm-offset-1">
                    <div class="form-inline">
                        <label for="username" class="text-left">用户名:</label>
                        <div class="form-group">
                            <p class="form-control-static" id="username"></p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-5 col-sm-offset-1">
                    <div class="form-inline">
                        <label for="name">姓名:</label>
                        <div class="form-group">
                            <p class="form-control-static" id="name"></p>
                        </div>
                    </div>
                </div>
                <%-- 第二行 --%>
                <div class="col-sm-5 col-sm-offset-1">
                    <div class="form-inline">
                        <label for="age" class="text-left">年龄:</label>
                        <div class="form-group">
                            <p class="form-control-static" id="age"></p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-5 col-sm-offset-1">
                    <div class="form-inline">
                        <label for="gender">性别:</label>
                        <div class="form-group">
                            <p class="form-control-static" id="gender"></p>
                        </div>
                    </div>
                </div>
                <%-- 第三行 --%>
                <div class="col-sm-5 col-sm-offset-1">
                    <div class="form-inline">
                        <label for="phone" class="text-left">手机号:</label>
                        <div class="form-group">
                            <p class="form-control-static" id="phone"></p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-5 col-sm-offset-1">
                    <div class="form-inline">
                        <label for="address">地址:</label>
                        <div class="form-group">
                            <p class="form-control-static" id="address"></p>
                        </div>
                    </div>
                </div>
                <%-- 第四行 --%>
                <div class="col-sm-5 col-sm-offset-1">
                    <div class="form-inline">
                        <label for="diseaseName" class="text-left">疾病名称:</label>
                        <div class="form-group">
                            <p class="form-control-static" id="diseaseName"></p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-5 col-sm-offset-1">
                    <div class="form-inline">
                        <label for="diseaseInfo">疾病详情:</label>
                        <div class="form-group">
                            <p class="form-control-static" id="diseaseInfo"></p>
                        </div>
                    </div>
                </div>
                <%-- 第四行 --%>
                <div class="col-sm-5 col-sm-offset-1">
                    <div class="form-inline">
                        <label for="currentAddress" class="text-left">当前地址:</label>
                        <div class="form-group">
                            <p class="form-control-static" id="currentAddress"></p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-5 col-sm-offset-1">
                    <div class="form-inline">
                        <label for="state">处理状态:</label>
                        <div class="form-group">
                            <p class="form-control-static" id="state"></p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="btn-submit" onclick="updateData()"></button>
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
                <h4 id="deleteModelLabel" class="modal-title">正在删除急救(ID:<span id="deleteFirstAidID"></span>)信息</h4>
            </div>
            <div class="modal-content">
                <div class="col-sm-offset-1" style="margin-top: 8px;">
                    <p class="modal-info">是否删除呼救者:<span id="nameDelete"></span>的急救信息?</p>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" id="btn-delete" onclick="deleteFirstAidByID()">删除</button>
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
     * 更新急救信息
     */
    function updateData(){
        let id = $("#firstAidID").html();
        let state = $("#state").html();

        if (state === '等待处理'){
            state = 1;
        }
        if (state === '正在处理'){
            state = 2;
        }
        //传至后台
        $.ajax({
            url:"${pageContext.request.contextPath}/firstAid/updateFirstAidByID",
            method:"post",
            data:{
                id:id,
                state:state
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
                    url: '${pageContext.request.contextPath}/firstAid/findFirstAidByState',
                    success: function (data) {
                        request.success({
                            row: data
                        });
                        if (data.type === 'success') {
                            for (let i = 0; i < data.result.length; i++) {
                                if (data.result[i].state === 0){
                                    data.result[i].state = "等待处理";
                                }
                                if (data.result[i].state === 1){
                                    data.result[i].state = "正在处理";
                                }
                                if (data.result[i].state === 2){
                                    data.result[i].state = "处理结束";
                                }
                            }
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
                    width: 5,
                    halign: "center"
                },
                {
                    field: "address",
                    title: "地址",
                    width: 200,
                    align: "center",
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
                    field: "currentAddress",
                    width: 200,
                    title: "当前地址",
                    align: "center",
                    halign: "center"
                },
                {
                    field: "state",
                    title: "处理状态",
                    halign: "center"
                },
                {
                    title: "操作",
                    halign: "center",
                    events: {
                        "click #edit": function (e, value, row) {
                            $("#firstAidID").html(row.id);
                            $("#username").html(row.username);
                            $("#name").html(row.name);
                            $("#age").html(row.age);
                            $("#phone").html(row.phone);
                            $("#gender").html(row.gender);
                            $("#address").html(row.address);
                            $("#diseaseName").html(row.diseaseName);
                            $("#diseaseInfo").html(row.diseaseInfo);
                            $("#currentAddress").html(row.currentAddress);
                            $("#state").html(row.state);
                            let latitude = row.latitude;
                            let longitude = row.longitude;
                            let position = new AMap.LngLat(longitude,latitude);
                            //高德地图
                            let map = new AMap.Map('map',{
                                zoom:11,
                                center:position,
                                viewMode: '3D'
                            });
                            //标记点
                            let point = new AMap.Marker({
                                position:position
                            });
                            //实时路况图层
                            let trafficLayer = new AMap.TileLayer.Traffic({
                                zIndex:10
                            });
                            AMap.plugin('AMap.ToolBar',function(){
                                //异步加载插件
                                let toolbar = new AMap.ToolBar();
                                map.addControl(toolbar);
                            });
                            map.add(point);
                            map.add(trafficLayer);
                            if(row.state === "等待处理"){
                                $('#btn-submit').html("接受处理");
                                $('#btn-submit').attr('disabled',false);
                            }
                            if(row.state === "正在处理"){
                                $('#btn-submit').html("结束处理");
                                $('#btn-submit').attr('disabled',false);
                            }
                            if(row.state === "处理结束"){
                                $('#btn-submit').html("处理已结束");
                                $('#btn-submit').attr('disabled',true);
                            }
                            $('#editModel').modal('show');
                        },
                        "click #delete": function (e, value, row) {
                            $("#nameDelete").html(row.name);
                            $("#deleteFirstAidID").html(row.id);
                            $('#deleteModel').modal('show');
                        }
                    },
                    formatter: function () {
                        let result = "";
                        result += "<button class='btn btn-primary' data-toggle='model' data-target='#editModel' id='edit'>查看</button>";
                        result += "<button class='btn btn-primary' data-toggle='model' data-target='#editModel' id='delete' style='margin-left: 6px;'>删除</button>";
                        return result;
                    },
                    align: "center"
                }
            ]
        });
    };

    /**
     * 按ID删除急救信息
     */
    function deleteFirstAidByID() {
        let id = $("#deleteFirstAidID").html();
        $.ajax({
            url:"${pageContext.request.contextPath}/firstAid/deleteFirstAid",
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