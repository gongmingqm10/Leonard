<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="pageTitle" scope="request" value="users"/>
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html>
<head>
    <base href="<%=basePath%>">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>${pageTitle}</title>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.css" type="text/css"/>
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.css" type="text/css"/>
    <link rel="stylesheet" href="style/admin.css" type="text/css"/>

    <script type="text/javascript" src="scripts/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript" src="scripts/admin.js"></script>
</head>

<body>
    <div class="header">
        <nav class="navbar navbar-inverse" role="navigation">
            <div class="navbar-header" style="margin:9px;">
              <img src="images/footer/footer-logo.png">
            </div>
            <div class="navbar-collapse collapse">
              <form class="navbar-form navbar-right" role="form">
                <a href="javascript:void(0);"><button type="submit" class="btn btn-success btn-lg">&nbsp;Logout&nbsp;</button></>
                <span>&nbsp;&nbsp;&nbsp;&nbsp;</span>
              </form>
            </div>
        </nav>
    </div>
    <div class="content container" >
        <div class="left-content pageLeft collapse navbar-collapse">
            <ul class="nav nav-pills nav-stacked" role="tablist">
                 <li role="presentation" class="active"><a href="javascript:void(0);">经销商管理</a></li>
                 <li role="presentation" ><a href="javascript:void(0);">俱乐部活动</a></li>
                 <li role="presentation" ><a href="javascript:void(0);">新闻管理</a></li>
                 <li role="presentation" ><a href="javascript:void(0);">产品管理</a></li>
            </ul>
        </div>
        <div class="right-content ">
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title">经销商管理</h3>
              </div>
              <div class="panel-body">
                <div class="dealer-table">
                    <table class="table table-bordered">
                       <thead >
                          <tr>
                             <th class="text-center">分销商名称</th>
                             <th class="text-center">类型</th>
                             <th class="text-center">销售人员</th>
                             <th class="text-center">销售热线</th>
                             <th class="text-center">地址</th>
                             <th class="text-center">操作</th>
                          </tr>
                       </thead>
                       <tbody>
                          <c:forEach var="dealer" items="${dealers}" varStatus="row">
                              <tr>
                                  <td class="name"><c:out value="${dealer.dealerName}"/></td>
                                  <td class="type"><c:out value="${dealer.type}"/></td>
                                  <td class="saler"><c:out value="${dealer.salerName}"/></td>
                                  <td class="phone"><c:out value="${dealer.phone}"/></td>
                                  <td class="address"><c:out value="${dealer.address}"/></td>
                                  <td class="action">
                                    <button type="button" class="btn btn-default" disabled="disabled" onclick="updateItem(${dealer.id}, this);">保存</button>
                                    <button type="button" class="btn btn-default" onclick="deleteItem(${dealer.id});">删除</button>
                                  </td>
                              </tr>
                          </c:forEach>
                       </tbody>
                    </table>
                </div>
              </div>
            </div>
            <div class="panel panel-default">
              <div class="panel-heading">
                <h3 class="panel-title">经销商管理</h3>
              </div>
              <div class="panel-body">
                <div class="dealer-table">
                    <table class="table table-bordered">
                       <thead >
                          <tr>
                             <th class="text-center">分销商名称</th>
                             <th class="text-center">类型</th>
                             <th class="text-center">销售人员</th>
                             <th class="text-center">销售热线</th>
                             <th class="text-center">地址</th>
                             <th class="text-center">省份</th>
                             <th class="text-center">操作</th>
                          </tr>
                       </thead>
                       <tbody>
                            <tr>
                                <td class="name"></td>
                                <td class="type"></td>
                                <td class="saler"></td>
                                <td class="phone"></td>
                                <td class="address"></td>
                                <td class="province"></td>
                                <td class="action">
                                  <button type="button" class="btn btn-default" disabled="disabled" onclick="addItem(this);">确定</button>
                                </td>
                            </tr>
                       <tbody>
                    </table>
                </div>
              </div>
            </div>
        </div>
    </div>




<%@ include file="../footer.jsp" %>
</body>
</html>