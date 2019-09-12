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
        <link rel="stylesheet" type="text/css" href="resources/admin/bootstrap/lib/css/dataTables.bootstrap.css">
        <link rel="stylesheet" type="text/css" href="resources/admin/bootstrap/lib/css/select2.min.css">
        <!-- CSS App -->
        <link rel="stylesheet" type="text/css" href="resources/admin/bootstrap/css/style.css">
        <link rel="stylesheet" type="text/css" href="resources/admin/bootstrap/css/themes/flat-blue.css">
</head>
<body class="flat-blue">
<%-- 应用容器 --%>
<div class="app-container">
    <%-- 列 内容容器 --%>
    <div class="row content-container">
        <%-- 导航栏 --%>
        <nav class="navbar navbar-default navbar-fixed-top navbar-top">

            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-expand-toggle">
                        <i class="fa fa-bars icon">
                        </i>
                    </button>
                    <ol class="breadcrumb navbar-breadcrumb">
                        <li>
                            Table
                        </li>
                        <li class="active">
                            Datatable
                        </li>
                    </ol>
                    <button type="button" class="navbar-right-expand-toggle pull-right visible-xs">
                        <i class="fa fa-th icon">
                        </i>
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
                            <li class="title">
                                Notification
                                <span class="badge pull-right">
												0
											</span>
                            </li>
                            <li class="message">
                                No new notification
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown danger">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                           aria-expanded="false">
                            <i class="fa fa-star-half-o">
                            </i>
                            4
                        </a>
                        <ul class="dropdown-menu danger animated fadeInDown">
                            <li class="title">
                                Notification
                                <span class="badge pull-right">
												4
											</span>
                            </li>
                            <li>
                                <ul class="list-group notifications">
                                    <a href="#">
                                        <li class="list-group-item">
														<span class="badge">
															1
														</span>
                                            <i class="fa fa-exclamation-circle icon">
                                            </i>
                                            new registration
                                        </li>
                                    </a>
                                    <a href="#">
                                        <li class="list-group-item">
														<span class="badge success">
															1
														</span>
                                            <i class="fa fa-check icon">
                                            </i>
                                            new orders
                                        </li>
                                    </a>
                                    <a href="#">
                                        <li class="list-group-item">
														<span class="badge danger">
															2
														</span>
                                            <i class="fa fa-comments icon">
                                            </i>
                                            customers messages
                                        </li>
                                    </a>
                                    <a href="#">
                                        <li class="list-group-item message">
                                            view all
                                        </li>
                                    </a>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown profile">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
                           aria-expanded="false">
                            Emily Hart
                            <span class="caret">
										</span>
                        </a>
                        <ul class="dropdown-menu animated fadeInDown">
                            <li class="profile-img">
                                <img src="resources/admin/bootstrap/img/profile/picjumbo.com_HNCK4153_resize.jpg"
                                     class="profile-img" alt="picture">
                            </li>
                            <li>
                                <div class="profile-info">
                                    <h4 class="username">
                                        Emily Hart
                                    </h4>
                                    <p>
                                        emily_hart@email.com
                                    </p>
                                    <div class="btn-group margin-bottom-2x" role="group">
                                        <button type="button" class="btn btn-default">
                                            <i class="fa fa-user">
                                            </i>
                                            Profile
                                        </button>
                                        <button type="button" class="btn btn-default">
                                            <i class="fa fa-sign-out">
                                            </i>
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
                        <a class="navbar-brand" href="#">
                            <div class="icon fa fa-paper-plane">
                            </div>
                            <div class="title">
                                Flat Admin V.2
                            </div>
                        </a>
                        <button type="button" class="navbar-expand-toggle pull-right visible-xs">
                            <i class="fa fa-times icon">
                            </i>
                        </button>
                    </div>
                    <ul class="nav navbar-nav">
                        <li>
                            <a>
											<span class="icon fa fa-tachometer">
											</span>
                                <span class="title">
												Dashboard
											</span>
                            </a>
                        </li>
                        <li class="panel panel-default dropdown">
                            <a data-toggle="collapse" href="#dropdown-element">
											<span class="icon fa fa-desktop">
											</span>
                                <span class="title">
												UI Kits
											</span>
                            </a>
                            <!-- Dropdown level 1 -->
                            <div id="dropdown-element" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul class="nav navbar-nav">
                                        <li>
                                            <a>
                                                Grid
                                            </a>
                                        </li>
                                        <li>
                                            <a>
                                                Theming
                                            </a>
                                        </li>
                                        <li>
                                            <a>
                                                Buttons
                                            </a>
                                        </li>
                                        <li>
                                            <a>
                                                Cards
                                            </a>
                                        </li>
                                        <li>
                                            <a>
                                                Lists
                                            </a>
                                        </li>
                                        <li>
                                            <a>
                                                Modals
                                            </a>
                                        </li>
                                        <li>
                                            <a>
                                                Alerts & Toasts
                                            </a>
                                        </li>
                                        <li>
                                            <a>
                                                Panels
                                            </a>
                                        </li>
                                        <li>
                                            <a>
                                                Loaders
                                            </a>
                                        </li>
                                        <li>
                                            <a>
                                                Tabs & Steps
                                            </a>
                                        </li>
                                        <li>
                                            <a>
                                                Other
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li class="active panel panel-default dropdown">
                            <a data-toggle="collapse" href="#dropdown-table">
											<span class="icon fa fa-table">
											</span>
                                <span class="title">
												Table
											</span>
                            </a>
                            <!-- Dropdown level 1 -->
                            <div id="dropdown-table" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul class="nav navbar-nav">
                                        <li>
                                            <a href="">
                                                Table
                                            </a>
                                        </li>
                                        <li>
                                            <a href="">
                                                Datatable
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li class="panel panel-default dropdown">
                            <a data-toggle="collapse" href="#dropdown-form">
											<span class="icon fa fa-file-text-o">
											</span>
                                <span class="title">
												Form
											</span>
                            </a>
                            <!-- Dropdown level 1 -->
                            <div id="dropdown-form" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul class="nav navbar-nav">
                                        <li>
                                            <a href="">
                                                Form UI Kits
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <!-- Dropdown-->
                        <li class="panel panel-default dropdown">
                            <a data-toggle="collapse" href="#component-example">
                                <span class="icon fa fa-cubes"></span>
                                <span class="title">Components</span>
                            </a>
                            <!-- Dropdown level 1 -->
                            <div id="component-example" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul class="nav navbar-nav">
                                        <li>
                                            <a href="">
                                                Pricing Table
                                            </a>
                                        </li>
                                        <li>
                                            <a href="">
                                                Chart.JS
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <!-- Dropdown-->
                        <li class="panel panel-default dropdown">
                            <a data-toggle="collapse" href="#dropdown-example">
                                <span class="icon fa fa-slack"></span>
                                <span class="title">Page Example</span>
                            </a>
                            <!-- Dropdown level 1 -->
                            <div id="dropdown-example" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul class="nav navbar-nav">
                                        <li>
                                            <a>
                                                Login
                                            </a>
                                        </li>
                                        <li>
                                            <a>
                                                Landing Page
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <!-- Dropdown-->
                        <li class="panel panel-default dropdown">
                            <a data-toggle="collapse" href="#dropdown-icon">
                                <span class="icon fa fa-archive"></span>
                                <span class="title">Icons</span>
                            </a>
                            <!-- Dropdown level 1 -->
                            <div id="dropdown-icon" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <ul class="nav navbar-nav">
                                        <li>
                                            <a>
                                                Glyphicons
                                            </a>
                                        </li>
                                        <li>
                                            <a>
                                                Font Awesomes
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li>
                            <a href="WEB-INF/views/system/license.jsp">
                            <span class="icon fa fa-thumbs-o-up"></span>
                                <span class="title">
												License
                                </span>
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
                    <span class="title">
                        Datatable
                    </span>
                    <div class="description">
                        with jquery Datatable for display data with most usage functional. such
                        as search, ajax loading, pagination, etc.
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <div class="card">
                            <div class="card-header">
                                <div class="card-title">
                                    <div class="title">
                                        Table
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <table class="datatable table table-striped" cellspacing="0" width="100%">
                                    <thead>
                                    <tr>
                                        <th>
                                            Name
                                        </th>
                                        <th>
                                            Position
                                        </th>
                                        <th>
                                            Office
                                        </th>
                                        <th>
                                            Age
                                        </th>
                                        <th>
                                            Start date
                                        </th>
                                        <th>
                                            Salary
                                        </th>
                                    </tr>
                                    </thead>
                                    <tfoot>
                                    <tr>
                                        <th>
                                            Name
                                        </th>
                                        <th>
                                            Position
                                        </th>
                                        <th>
                                            Office
                                        </th>
                                        <th>
                                            Age
                                        </th>
                                        <th>
                                            Start date
                                        </th>
                                        <th>
                                            Salary
                                        </th>
                                    </tr>
                                    </tfoot>
                                    <tbody>
                                    <tr>
                                        <td>
                                            Tiger Nixon
                                        </td>
                                        <td>
                                            System Architect
                                        </td>
                                        <td>
                                            Edinburgh
                                        </td>
                                        <td>
                                            61
                                        </td>
                                        <td>
                                            2011/04/25
                                        </td>
                                        <td>
                                            $320,800
                                        </td>
                                    </tr>
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
						<span class="pull-right">
							2.1
							<a href="#">
								<i class="fa fa-long-arrow-up">
								</i>
							</a>
						</span>
            漏 2015 Copyright.
        </div>
    </footer>
</div>
<!-- Javascript Libs -->
<script type="text/javascript" src="resources/admin/bootstrap/lib/js/jquery.min.js">
</script>
<script type="text/javascript" src="resources/admin/bootstrap/lib/js/bootstrap.min.js">
</script>
<script type="text/javascript" src="resources/admin/bootstrap/lib/js/Chart.min.js">
</script>
<script type="text/javascript" src="resources/admin/bootstrap/lib/js/bootstrap-switch.min.js">
</script>
<script type="text/javascript" src="resources/admin/bootstrap/lib/js/jquery.matchHeight-min.js">
</script>
<script type="text/javascript" src="resources/admin/bootstrap/lib/js/jquery.dataTables.min.js">
</script>
<script type="text/javascript" src="resources/admin/bootstrap/lib/js/dataTables.bootstrap.min.js">
</script>
<script type="text/javascript" src="resources/admin/bootstrap/lib/js/select2.full.min.js">
</script>
<script type="text/javascript" src="resources/admin/bootstrap/lib/js/ace/ace.js">
</script>
<script type="text/javascript" src="resources/admin/bootstrap/lib/js/ace/mode-html.js">
</script>
<script type="text/javascript" src="resources/admin/bootstrap/lib/js/ace/theme-github.js">
</script>
<!-- Javascript -->
<script type="text/javascript" src="resources/admin/bootstrap/js/app.js">
</script>
</body>

</html>