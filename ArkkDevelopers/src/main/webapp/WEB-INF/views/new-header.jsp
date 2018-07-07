<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<head>
<title>E-Push Server</title>
<meta name="viewport" content="width=device-width; initial-scale=1.0 /">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="E-Push Server" />

<meta http-equiv="cache-control" content="max-age=0" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
<meta http-equiv="pragma" content="no-cache" />
     
<!--  Style Sheet -->
<!--  <link href="css/menu.css" rel="stylesheet" type="text/css" media="all" />-->
<!--  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" type="text/css">-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" type="text/css" />

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/loadpopup.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/sweetalert.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/dashboard.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/popup.css" type="text/css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom.css" type="text/css">

    <!-- Our Custom CSS -->
   <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style5.css" type="text/css" />

<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js" charset="UTF-8"></script> 
<%-- 
<script>
$(function () {
    $('.datepicker1').datepicker({
        
        format: 'yyyy-mm-dd'
    });
});
$(function () {
    $('.datepicker2').datepicker({
        
        format: 'yyyy-mm-dd'
    });
});
$(function () {
	 $('.datepicker3').datepicker({
	        
	        format: 'yyyy-mm-dd'
	    });
});
</script>
 --%>

</head>

<body>
	
	


<!------ Include the above in your HEAD tag ---------->

<div id="throbber" style="display:none; min-height:120px;"></div>
<div id="noty-holder"></div>


<div id="wrapper">
    <!-- Navigation -->
	<div class="wrapper">
	<nav id="sidebar">
            <div class="sidebar-header">
                <h3>Bionische</h3>
            </div>

            <ul class="list-unstyled components">
               
                <li class="active">
                    <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Branch Management</a>
                    <ul class="collapse list-unstyled" id="homeSubmenu">
                        <li>
                            <a href="${pageContext.request.contextPath}/showBranchMaster">Manage Branch</a>
                        </li>
                        
                    </ul>
                </li>
                <li>
                    <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Employee Management</a>
                    <ul class="collapse list-unstyled" id="pageSubmenu">
                        <li><a href="${pageContext.request.contextPath}/showEmployeeRegistration"> Add Employee</a></li>
						<li><a href="${pageContext.request.contextPath}/showAllEmployee"> Show Employee's</a></li>
						<li><a href="${pageContext.request.contextPath}/manualAttendanceById"> Manual Attendance</a></li>
                    </ul>
                </li>
				
				<li>
                    <a href="#pagelabour" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Labour Management</a>
                    <ul class="collapse list-unstyled" id="pagelabour">
                        <li><a href="${pageContext.request.contextPath}/showLabourDetails"> Add Labour</a></li>
						<li><a href="${pageContext.request.contextPath}/showGetLabourDetails"> Show Labour</a></li>
						<li><a href="${pageContext.request.contextPath}/showManualAttendance"> Manual Attendance</a></li>		
						
                    </ul> 
                </li>
				
				<li>
                    <a href="#pageReports" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Employee Reports</a>
                    <ul class="collapse list-unstyled" id="pageReports">
                        <li><a href="${pageContext.request.contextPath}/getEmployeeReport"> Attendance Report</a></li>
						<li><a href="${pageContext.request.contextPath}/getEmployeeSalary"> Salary Report</a></li>
                    </ul> 
                </li>
				
				<li>
                    <a href="#LabourReports" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Labour Reports</a>
                    <ul class="collapse list-unstyled" id="LabourReports">
                        <li><a href="${pageContext.request.contextPath}/getLabourReport"> Attendance Report</a></li>
						<li><a href="${pageContext.request.contextPath}/getLabourSalary"> Salary Report</a></li>
                    </ul> 
                </li>
                
                <li>
                    <a href="#DeviceManagement" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Device Management</a>
                    <ul class="collapse list-unstyled" id="DeviceManagement">
                       <li><a href="http://166.62.32.164:8080/iclock/lang/en/modules/main/dashboard/dashboard.jsp">Device Management</a></li>
								
                    </ul> 
                </li>
                
                
            </ul>

            
        </nav>
	<div id="content">
	 <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <div class="container-fluid">

                    <button type="button" id="sidebarCollapse" class="navbar-btn">
                        <span></span>
                        <span></span>
                        <span></span>
                    </button>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                       <div class="menu-wrap">
			
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
							<span class="icon-bar"></span> <span class="icon-bar"></span><span class="icon-bar"></span>
						</button>
						
					</div>
					<div class="collapse navbar-collapse" id="myNavbar">
							<ul class="nav navbar-nav navbar-right">
							<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#"> <span class="glyphicon glyphicon-user"></span>
									<label id="lbl_UserName"></label>
							</a>
								<div class="user-login-detail dropdown-menu">
									<h3>Last Login</h3>
									<p id="lbl_LastLoginTime"></p>
									<div class="changePassword">
										<button type="button" class="btn-style mar-top0 cd-popup-trigger" onclick="JavaScript:DASHBOARD.ChangePassword()">Change
											Password</button>
									</div>
								</div></li>
							<li><a id="lbl_logout" href="JavaScript:DASHBOARD.Logout()"><span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>

						</ul>

					</div>
				</div>

			
		</div>
                    </div>
                </div>
            </nav>
