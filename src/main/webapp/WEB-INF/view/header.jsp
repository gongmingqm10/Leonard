<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="pageTitle" scope="request" value="北极动力"/>

<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>${pageTitle}</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css" type="text/css"/>
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css" type="text/css"/>
    <link rel="stylesheet" href="style/app.css" type="text/css"/>

    <script type="text/javascript" src="scripts/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript" src="scripts/app.js"></script>

</head>
<body>
<div class="container">
<div class="header-container">
    <div class="head-btn">
        <img src="http://intl.arcticcat.com/img/language/intl.png" alt="">&nbsp;
        <span><a href="javascript:void(0);">English</a></span>
        <span>|</span>
        <a href="http://intl.arcticcat.com/customer_care"><span>用户中心</span></a>
        <span>|</span>
        <a href="login/"><span>登录</span></a>
    </div>
    <nav class="navbar navbar-inverse header-nav" role="navigation">
        <div class="navbar-header">
          <a class="navbar-brand" href="home">ARCTIC CAT</a>
        </div>
        <div>
          <ul class="nav navbar-nav" >
             <li class="active">
                <a href="javascript:void(0);" onclick="showPanel(this);" target-content="#nav-content1">
                    把式全地车型&nbsp;&nbsp;&nbsp;
                    <i class="glyphicon glyphicon-chevron-down"></i>
                </a>
             </li>
             <li>
                <a href="javascript:void(0);" onclick="showPanel(this);"  target-content="#nav-content2">
                    方向盘式全地车型&nbsp;&nbsp;&nbsp;
                    <i class="glyphicon glyphicon-chevron-down"></i>
                </a>
             </li>
             <li>
                <a  href="javascript:void(0);" onclick="showPanel(this);"  target-content="#nav-content3">
                    雪地车&nbsp;&nbsp;&nbsp;
                    <i class="glyphicon glyphicon-chevron-down"></i>
                </a>

             </li>
             <li>
                <a href="javascript:void(0);" onclick="showPanel(this);"   target-content="#nav-content4">
                    配件饰品&nbsp;&nbsp;&nbsp;
                    <i class="glyphicon glyphicon-chevron-down"></i>
                </a>
             </li>
          </ul>
        </div>
        <div class="navbar-right" style="margin:12px;">
           <a href="news/"><span style="font-size: 12px;color:grey;">新闻中心</span></a>
           <span style="font-size: 12px;">&nbsp;&nbsp;&nbsp;&nbsp;</span>
           <a href="dealer/"><span style="font-size: 12px;color:grey;">经销商</span></a>
        </div>
    </nav>
    <div class="container nav-container">
        <div class="nav-content" id="nav-content1">
            <div class="row text-center nav-row">
                <c:forEach var="product" items="${products}" varStatus="row">
                <c:if test = "${product.type == '把式全地车型'}">
                    <a href="product/product/把式全地车型">
                    <div class="col-md-4 row-border product-box">
                        <img class="product-img" src="${fn:split(product.images, ',')[0]}" alt="">
                        <h4>${product.productName}</h4>
                        <h5>${product.productInfo}</h5>
                    </div>
                    </a>
                </c:if>
                </c:forEach>

                <a href="product/product/把式全地车型">
                <div class="col-md-12 row-border text-right">
                    <span>全部信息>>&nbsp;&nbsp;</span>
                </div>
                </a>
            </div>
        </div>
        <div class="nav-content" id="nav-content2">
            <div class="row text-center nav-row">
                <c:forEach var="product" items="${products}" varStatus="loop">
                <c:if test = "${product.type == '方向盘式全地车型'}">
                    <a href="product/product/方向盘式全地车型">
                    <div class="col-md-4 row-border product-box p${loop.index}">
                        <img class="product-img" src="${fn:split(product.images, ',')[0]}" alt="">
                        <h4>${product.productName}</h4>
                        <h5>${product.productInfo}</h5>
                    </div>
                    </a>
                </c:if>
                </c:forEach>

                <a href="product/product/方向盘式全地车型">
                <div class="col-md-12 row-border text-right">
                    <span>全部信息>>&nbsp;&nbsp;</span>
                </div>
                </a>
            </div>
        </div>
        <div class="nav-content" id="nav-content3">
            <div class="row text-center nav-row">
                <c:forEach var="product" items="${products}" varStatus="row">
                <c:if test = "${product.type == '雪地车'}">
                    <a href="product/product/雪地车">
                    <div class="col-md-4 row-border product-box">
                        <img class="product-img" src="${fn:split(product.images, ',')[0]}" alt="">
                        <h4>${product.productName}</h4>
                        <h5>${product.productInfo}</h5>
                    </div>
                    </a>
                </c:if>
                </c:forEach>
                <a href="product/product/雪地车">
                <div class="col-md-12 row-border text-right">
                    <span>全部信息>>&nbsp;&nbsp;</span>
                </div>
                </a>
            </div>
        </div>
        <div class="nav-content" id="nav-content4">
            <div class="row text-center nav-row">
                <c:forEach var="product" items="${products}" varStatus="row">
                <c:if test = "${product.type == '配件饰品'}">
                    <a href="product/product/配件饰品">
                    <div class="col-md-4 row-border product-box">
                        <img class="product-img" src="${fn:split(product.images, ',')[0]}" alt="">
                        <h4>${product.productName}</h4>
                        <h5>${product.productInfo}</h5>
                    </div>
                    </a>
                </c:if>
                </c:forEach>
                <a href="product/product/配件饰品">
                <div class="col-md-12 row-border text-right">
                    <span>全部信息>>&nbsp;&nbsp;</span>
                </div>
                </a>

            </div>
        </div>
    </div>
</div>
</div>
