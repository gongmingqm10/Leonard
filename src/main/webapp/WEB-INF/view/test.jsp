<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="pageTitle" scope="request" value="users"/>


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
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.price}"/></td>
            </tr>
        </c:forEach>
    </tbody>
    </table>
</div>
