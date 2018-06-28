<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Arc Builder Dashboard</title>
<!-- Tell the browser to be responsive to screen width -->
<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<!-- Ionicons -->
<!--<link rel="stylesheet" href="css/ionicons.min.css">-->
<!-- DataTables -->
<!--<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">-->
<!-- Theme style -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/AdminLTE.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/_all-skins.min.css">


<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link href="${pageContext.request.contextPath}/resources/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

<link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.css" rel="stylesheet" media="screen">

<!--<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">-->

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js" charset="UTF-8"></script> 

<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-datetimepicker/2.5.20/jquery.datetimepicker.min.js"></script>

<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/adminlte.min.js"></script> 

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

</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">
<header class="main-header"> 
  <!-- Logo --> 
  <a href="${pageContext.request.contextPath}/showHome" class="logo"> 
  <!-- mini logo for sidebar mini 50x50 pixels --> 
  <span class="logo-mini"><b>A</b>RKK</span> 
  <!-- logo for regular state and mobile devices --> 
  <span class="logo-lg"><b>ARKK</b>Developers</span> </a> 
  <!-- Header Navbar: style can be found in header.less -->
  <nav class="navbar navbar-static-top"> 
    <!-- Sidebar toggle button--> 
    <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </a>
    <div class="navbar-custom-menu">
      <ul class="nav navbar-nav">
        <li> <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a> </li>
      </ul>
    </div>
  </nav>
</header>
<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar"> 
  <!-- sidebar: style can be found in sidebar.less -->
  <section class="sidebar"> 
    <!-- Sidebar user panel -->
    <div class="user-panel">
      <div class="pull-left image"> <img src="${pageContext.request.contextPath}/resources/images/User-Icon.png" class="img-circle" alt="User Image"> </div>
      <div class="pull-left info">
        <p>Alexander Pierce</p>
        <a href="#"><i class="fa fa-circle text-success"></i>Online</a> </div>
    </div>
    <!-- search form -->
    <form action="#" method="get" class="sidebar-form">
      <div class="input-group">
        <input type="text" name="q" class="form-control" placeholder="Search...">
        <span class="input-group-btn">
        <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i> </button>
        </span> </div>
    </form>
    <!-- /.search form --> 
    <!-- sidebar menu: : style can be found in sidebar.less -->
    <ul class="sidebar-menu" data-widget="tree">
      <li class="header">MAIN NAVIGATION</li>
       <%-- <li><a href="${pageContext.request.contextPath}/showManualAttendance"><i class="fa fa-circle-o"></i>Manual Attendance</a></li> --%>
      <li class="treeview"> <a href=""> <i class="fa fa-fw fa-user"></i> <span>Branch Management</span> <span class="pull-right-container"> <i class="fa fa-angle-left pull-right"></i> </span> </a>
        <ul class="treeview-menu">
          <li><a href="${pageContext.request.contextPath}/showBranchMaster"><i class="fa fa-circle-o"></i>Manage Branch</a></li>
          
        </ul>
      </li>
     
      <li class="treeview"> <a href="#"> <i class="fa fa-fw fa-user"></i> <span>Employee Management</span> <span class="pull-right-container"> <i class="fa fa-angle-left pull-right"></i> </span> </a>
        <ul class="treeview-menu">
        
          <li><a href="${pageContext.request.contextPath}/showEmployeeRegistration"><i class="fa fa-circle-o"></i>Add Employee</a></li>
          <li><a href="${pageContext.request.contextPath}/showAllEmployee"><i class="fa fa-circle-o"></i>Show Employee's</a></li>
          <li><a href="configuration.html"><i class="fa fa-circle-o"></i>Multiple Branches Employee's</a></li>
        </ul>
      </li>
      <li class="treeview"> <a href="#"> <i class="fa fa-fw fa-user"></i> <span>Labour Management</span> <span class="pull-right-container"> <i class="fa fa-angle-left pull-right"></i> </span> </a>
        <ul class="treeview-menu">
        
           <li><a href="${pageContext.request.contextPath}/showLabourDetails"><i class="fa fa-circle-o"></i>Add Labour</a></li>
          <li><a href="${pageContext.request.contextPath}/showGetLabourDetails"><i class="fa fa-circle-o"></i>Show Labour</a></li>
          <li><a href="configuration.html"><i class="fa fa-circle-o"></i>Multiple Site Labour</a></li>
        </ul>
      </li>
      <li class="treeview"> <a href="#"> <i class="fa fa-fw fa-user"></i> <span>Employee Reports</span> <span class="pull-right-container"> <i class="fa fa-angle-left pull-right"></i></span></a>
        <ul class="treeview-menu">
          <li><a href="${pageContext.request.contextPath}/getEmployeeReport"><i class="fa fa-circle-o"></i>Attendance Report</a></li>
          <li><a href="${pageContext.request.contextPath}/getEmployeeSalary"><i class="fa fa-circle-o"></i>Salary Report</a></li>
        </ul>
      </li>
      <li class="treeview"> <a href="#"> <i class="fa fa-fw fa-user"></i> <span>Labour Reports</span> <span class="pull-right-container"> <i class="fa fa-angle-left pull-right"></i></span></a>
        <ul class="treeview-menu">
          <li><a href="${pageContext.request.contextPath}/getLabourReport"><i class="fa fa-circle-o"></i>Attendance Report</a></li>
          <li><a href="${pageContext.request.contextPath}/getLabourSalary"><i class="fa fa-circle-o"></i>Salary Report</a></li>
        </ul>
      </li>
      
    </ul>
  </section>
</aside>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
<!-- Content Header (Page header) -->


