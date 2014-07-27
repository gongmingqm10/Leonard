<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="pageTitle" scope="request" value="管理中心"/>

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>${pageTitle}</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css" type="text/css"/>
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css" type="text/css"/>
    <link rel="stylesheet" href="style/backend/admin.css" type="text/css"/>

    <script type="text/javascript" src="scripts/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript" src="scripts/backend/admin.js"></script>
</head>
<body>
    <div class="header">
        <div class="header-container">
            <a href="home"><img src="images/footer/footer-logo.png"></a>
            <a  href="logout" class="btn btn-primary logout">退出</a>
        </div>
    </div>
    <div class="container">

        <div class="left-content">
            <ul id="menu-ul" class="nav nav-pills nav-stacked" role="tablist">
                 <li role="presentation" class="dealer"><a href="admin/dealer" onClick="switchItem(this)">经销商管理</a></li>
                 <li role="presentation" class="activity"><a href="admin/activity" onClick="switchItem(this)">俱乐部活动</a></li>
                 <li role="presentation" class="news"><a href="admin/news" onClick="switchItem(this)">新闻管理</a></li>
                 <li role="presentation" class="product"><a href="admin/product" onClick="switchItem(this)">产品管理</a></li>
                 <li role="presentation" class="video"><a href="admin/video" onClick="switchItem(this)">视频管理</a></li>
            </ul>
        </div>
        <div class="right-content">
