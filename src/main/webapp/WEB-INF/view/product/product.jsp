<%@ include file="../header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="pageTitle" scope="request" value="产品展示"/>
<link rel="stylesheet" href="style/product.css" type="text/css"/>
<link rel="stylesheet" href="style/news.css" type="text/css"/>


<div class="pageBox">
    <div class="lv_treeBox container">
        <div class="lv_tree">
            <p class="columnTitle">产品展示</p>
            <div class="lv_tree_con">
                 当前位置：<a href="">首页</a>&nbsp;-&nbsp;产品展示&nbsp;-&nbsp;${type}
            </div>
         </div>
    </div>
    <div class="container product-container">
        <c:forEach var="subType" items="${productSubType}" varStatus="row">
        <div>
            <p class="col-md-12 product-type-p">${subType}</p>
            <c:forEach var="product" items="${productsOfType}" varStatus="row">
                <c:if test ="${product.subType == subType}">
                <a href="product/productNews/${product.id}">
                    <div class="col-md-4 text-center product-box">
                        <img class="product-img" src="${fn:split(product.images, ',')[0]}" alt="">
                        <h4>${product.productName}</h4>
                        <h5>${product.productInfo}</h5>
                    </div>
                </a>
                </c:if>
            </c:forEach>
        </div>
        </c:forEach>

    </div>

</div>


 <%@ include file="../footer.jsp" %>