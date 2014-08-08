<%@ include file="../header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="pageTitle" scope="request" value="产品介绍"/>
<link rel="stylesheet" href="style/news.css" type="text/css"/>
<link rel="stylesheet" href="style/newsDisplay.css" type="text/css"/>
<link rel="stylesheet" href="style/productNews.css" type="text/css"/>

<script type="text/javascript" src="scripts/productNews.js"></script>


<div class="pageBox">
    <div class="lv_treeBox container">
        <div class="lv_tree">
            <p class="columnTitle">产品介绍</p>
            <div class="lv_tree_con">
                 当前位置：<a href="">首页</a>&nbsp;-&nbsp;产品介绍&nbsp;-&nbsp;${product.type}
            </div>
         </div>
    </div>
    <div class="pageContent container">
        <div class="col-md-12 anchor-nav-container clear-fix">
        		<ul class="anchor-nav">
        		    <a href="product/productNews/${product.id}">
                    <li class="far-left" onclick="">
                    	<span class="icon traction"></span>
                    	<span class="din">Traction</span>
                    </li>
                    </a>
                    <li class="middle-left" onclick="switchItem(this,1,${product.id})">
                    	<span class="icon power"></span>
                    	<span class="din">Power</span>
                    </li>
                    <li class="middle-right" onclick="switchItem(this,2,${product.id})">
                    	<span class="icon ride-tech"></span>
                    	<span class="din">Ride Tech</span>
                    </li>
                    <li class="far-right last" onclick="switchItem(this,3,${product.id})">
                    	<span class="icon versatility"></span>
                    	<span class="din">Versatility</span>
                    </li>
                </ul>
        </div>
        <div class="pageRight col-md-12 newsContext">
             <div class="title">
                <h3>${product.productName} </h3>
                 <span >发布人：新闻管理员</span>
                 时间：${news.date}&nbsp;&nbsp;&nbsp;浏览次数：237
             </div>
             <div id="product-content">
                 ${product.productNews}

                 <div class="color-box">
                     <h5>请选择车型颜色:</h5>
                     <ul>
                     <c:forEach var="image" items="${fn:split(product.images, ',')}" varStatus="loop">
                     <c:if test = "${not empty image}">
                    <li><a style="background:${fn:split(product.colors, ',')[loop.index]}; " onclick='selectTag(this,"${image}","${fn:split(product.colorName, ',')[loop.index]}")' href="javascript:void(0)"></a></li>
                     </c:if>
                     </c:forEach>
                     </ul>
                 </div>
             </div>

        </div>


    </div>
</div>



<%@ include file="../footer.jsp" %>