<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="pageTitle" scope="request" value="users"/>

<head>
    <script type="text/javascript" src="../scripts/jquery-1.10.2.js"></script>
    <script type="text/javascript" src="../scripts/admin.js"></script>


</head>
<body>
<div id="AllUsersInformation">
    <table class="table table-hover">
    <thead>
        <tr>
            <th>name</th>
            <th>id</th>
            <th>price</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="user" items="${users}" varStatus="row">
            <tr>
                <td><c:out value="${user.userName}"/></td>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.password}"/></td>
            </tr>
        </c:forEach>
    </tbody>
    </table>

</div>
</body>

