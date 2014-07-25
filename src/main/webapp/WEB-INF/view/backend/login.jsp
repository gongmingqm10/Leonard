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
    <link rel="stylesheet" href="style/login.css" type="text/css"/>

    <script type="text/javascript" src="scripts/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.js"></script>
</head>

<body>
    <div class="container">
        <div class="text-center login-header">
            <h1>北极动力后台管理</h1>
        </div>
        <div>
            <form role="form" action="login/userLogin">
              <div class="login-content">
                  <c:forEach var="message" items="${str}" varStatus="row">
                    <h3 style="font-style: italic;color: red;">注: <c:out value="${message}"/></h3>
                  </c:forEach>
              </div>
              <div class="form-group login-content">
                <label for="exampleInputEmail1">User Name</label>
                <input class="form-control" id="exampleInputEmail1" placeholder="Enter User Name" name="userName">
              </div>
              <div class="form-group login-content">
                <label for="exampleInputPassword1">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="password">
              </div>
              <div class="text-center">
                <button type="submit" class="btn btn-default">Submit</button>
              </div>
            </form>
        </div>
    </div>

    <%@ include file="../footer.jsp" %>

</body>
</html>